<%@ Page Title="" Language="VB" MasterPageFile="~/admin/Admin.master" AutoEventWireup="false" CodeFile="Cat.aspx.vb" Inherits="admin_Docs_Cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    var CatId;
    $(document).ready(function () {
        var dlg = $("#CatDetail").dialog({ autoOpen: false, title: "Add / Edit Category" });
        dlg.parent().appendTo("form:first");
        var dlg2 = $("#CatSecurity").dialog({ autoOpen: false, title: "Security", width:400 });
        dlg.parent().appendTo("form:first");
        $("#AddCat").click(function () {
            CatId = 0;
            $("#CatDetail").dialog("open");
            $(".txtName").val("");
            $(".ckPublic input").removeAttr("checked");
        });
        $("#btnDocs").click(function () {
            location.href = 'Default.aspx';
        });
        $(".mGrid tbody").sortable({
            handle: ".drag",
            items: ".row",
            stop: function (event, ui) {
                $("tbody tr").each(function (idx, tr) {
                    $.ajax("CatSeq.ashx", {
                        data: {
                            "Id": $(tr).find(".Cat-Id").html(),
                            "Seq": idx
                        },
                        cache: false
                    });
                });
            }
        });
        $(".btnSub").click(function (evt) {
            CatId = $(evt.target).closest("tr").find(".Cat-Id").html();
            location.href = "?Id=" + CatId;
        });
        $(".btnEdit").click(function (evt) {
            var name = $(evt.target).closest("tr").find(".Cat-Name").html();
            CatId = $(evt.target).closest("tr").find(".Cat-Id").html();
            $(".txtName").val(name);
            $(".ckPublic input").removeAttr("checked");
            if ($(evt.target).closest("tr").find(".bPublic").val() == "True") $(".ckPublic input").attr("checked", "checked");
            $("#CatDetail").dialog("open");
        });
        $(".btnDelete").click(function (evt) {
            var name = $(evt.target).closest("tr").children(".Cat-Name").html();
            if (confirm('Are you sure you want to delete the ' + name + ' category?')) {
                CatId = $(evt.target).closest("tr").children(".Cat-Id").html();
                $(evt.target).closest("tr").remove();
                $.ajax("CatDelete.ashx", {
                    data: {
                        "Id": CatId
                    },
                    cache: false
                });
            }
        });
        $(".btnSec").click(function (evt) {
            CatId = $(evt.target).closest("tr").children(".Cat-Id").html();
            $.getJSON("Users.ashx", { "CatId": CatId }, function (json_data) {
                var tbl = $("#CatSecurity table tbody");
                tbl.empty();
                $.each(json_data, function (index, item) {
                    //var accessVal = (item.access) ? "true" : "false";
                    var ckb = $("<input class=\"cksec\" type=\"checkbox\" " + ((item.access) ? "checked=\"checked\"": "") + " />");

                    var tr = $("<tr>", { id: item.id });
                    var email = $("<td>", { html: item.email });
                    var access = $("<td>", { html: ckb }).addClass("center");
                    var item_id = $("<input type=\"hidden\" value=\"" + item.id + "\" />");
                    
                    email.append(item_id);
                    tr.append(email);
                    tr.append(access);
                    tbl.append(tr);
                });
                $("#CatSecurity").dialog("open");
            });
        });
        $("#btnSave").click(function () {
            $.ajax("CatEdit.ashx", {
                data: {
                    "Id": CatId,
                    "Name": $(".txtName").val(),
                    "Public": $(".ckPublic input").attr("checked"),
                    "ParentId": $(".ParentId input").val()
                },
                cache: false,
                complete: function () {
                    location.reload();
                }
            });
        });
        
        $("#btnCancel").click(function () {
            $("#CatDetail").dialog("close");
        });
        $("#btnParent").click(function () {
            location.href = "/admin/Docs/Cat.aspx";
        });
        $(".cksec").live("change", function (evt) {
            var Id = $(evt.target).closest("tr").find("input[type=hidden]").val();
            if ($(evt.target).attr("checked")) {
                $.post("Security.ashx?User=" + Id + "&CatId=" + CatId);
            }
            else {
                $.post("Security.ashx?remove=1&User=" + Id + "&CatId=" + CatId);
            }
        });
        <% If Not Request("Id") Is Nothing Then %>
            $(".btnSub").hide();
        <% End If%>
    });
</script>
<style type="text/css">
    .drag{
        cursor:move;    
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1 id="pgTitle" runat="server">Document Categories</h1>
   <hr>
    <div class="form-group">
    	<input type="button" value="Add Category" id="AddCat" class="btn btn-primary btn-sm"/>
    	<input type="button" value="Manage Documents" id="btnDocs" class="btn btn-primary btn-sm"/>
    </div>
    <% 
        If Not Request("Id") Is Nothing Then
            Response.Write("<input type=""button"" value=""Go Back"" id=""btnParent"" />")
        End If
    %>
    
    <div class="ParentId">
        <asp:HiddenField runat="server" ID="ParentId" Value="0" />
    </div>
    <p class="tip">To reorder categories, click the drag handle and move them up or down.</p>
    <asp:GridView ID="gvCats" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="table table-hover" EmptyDataText="No categories have been created yet.">
        <Columns>
            <asp:TemplateField ItemStyle-CssClass="drag"  HeaderText="Reorder">
                <ItemTemplate>
                    <span style="color:#ccc;">drag</span> 
                    <input type="hidden" class="bPublic" value="<%#Eval("bPublic")%>" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="bPublic" HeaderText="Public" />
            <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-CssClass="Cat-Id" />
            <asp:BoundField ItemStyle-CssClass="Cat-Name" DataField="Name" HeaderText="Name" />
            <asp:TemplateField  HeaderText="Actions">
                <ItemTemplate>
                	<div class="btn-group">
                    <input type="button" value="Security" class="btn btn-outline-primary btn-sm"/>
                    <input type="button" value="Sub Cats" class="btn btn-outline-primary btn-sm "/>
                    <input type="button" value="Edit" class="btn btn-outline-primary btn-sm "/>
                    <input type="button" value="Delete" class="btn btn-outline-danger btn-sm "/>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
    <div id="CatDetail">
        <div class="form-group">
            <asp:Label runat="server" CssClass="input-label" AssociatedControlID="Name" Text="Name"></asp:Label>
            <asp:TextBox runat="server" class="form-control" ID="Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:CheckBox runat="server" ID="ckPublic" Text="&nbsp;Public Access" />
        </div>
        <div class="form-group">
            <input type="button" id="btnSave" value="Save" class="btn btn-success my-3"/>
            <input type="button" id="btnCancel" value="Cancel" class="btn btn-outline-secondary my-3"/>
        </div>
    </div>
    <div id="CatSecurity">
        <div>
            <p>Changes are automatically saved with each click.</p>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>Access</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</asp:Content>