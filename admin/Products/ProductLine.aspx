<%@ Page Title="" Language="VB" MasterPageFile="~/admin/Admin.master" AutoEventWireup="false" CodeFile="ProductLine.aspx.vb" Inherits="admin_Product_ProductLine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    var LineId;
    $(document).ready(function () {
        var dlg = $("#LineDetail").dialog({ autoOpen: false, title: "Add / Edit Line" });
        dlg.parent().appendTo("form:first");
        $("#AddLine").click(function () {
            LineId = 0;
            $("#LineDetail").dialog("open");
        });
        $("#btnGallery").click(function () {
            location.href = 'Default.aspx';
        });
        $(".mGrid tbody").sortable({
            handle: ".drag",
            items: ".row",
            stop: function (event, ui) {
                $("tbody tr").each(function (idx, tr) {
                    $.ajax("LineSeq.ashx", {
                        data: {
                            "Id": $(tr).find(".Line-Id").html(),
                            "Seq": idx
                        },
                        cache: false
                    });
                });
            }
        });
        $(".btnEdit").click(function (evt) {
            LineId = $(evt.target).closest("tr").find(".Line-Id").html();
            var name = $(evt.target).closest("tr").find(".Line-Name").html();
            $(".txtName").val(name);
            var description = $(evt.target).closest("tr").find(".Line-Description").html();
            $(".txtDescription").val(description);
            $("#LineDetail").dialog("open");
        });
        $(".btnDelete").click(function (evt) {
            var name = $(evt.target).closest("tr").children(".Line-Name").html();
            if (confirm('Are you sure you want to delete the ' + name + ' line?')) {
                LineId = $(evt.target).closest("tr").children(".Line-Id").html();
                $(evt.target).closest("tr").remove();
                $.ajax("LineDelete.ashx", {
                    data: {
                        "Id": LineId
                    },
                    cache: false
                });
            }
        });
        $("#btnSave").click(function () {
            $.ajax("LineEdit.ashx", {
                data: {
                    "Id": LineId,
                    "Name": $(".txtName").val(),
                    "Description": $(".txtDescription").val()
                },
                cache: false,
                complete: function () {
                    location.reload();
                }
            });
        });
        $("#btnCancel").click(function () {
            $("#LineDetail").dialog("close");
        });

    });
</script>
<style type="text/css">
    .drag{
        cursor:move;    
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1>Product Lines</h1>
    <input type="button" value="Add Line" id="AddLine" />
    <input type="button" value="Manage Products" id="btnGallery" />
	<p class="tip">To reorder lines, click the drag handle and move them up or down.<br />

    <asp:GridView ID="gvLines" runat="server" AutoGenerateColumns="False" GridLines="None" HeaderStyle-CssClass="row" RowStyle-CssClass="row" CssClass="mGrid" PagerStyle-CssClass="pgr" EmptyDataText="No lines have been created yet.">
        <Columns>
            <asp:TemplateField ItemStyle-CssClass="drag" ItemStyle-Width="30" HeaderText="Reorder" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <span style="color:#ccc;">drag</span> 
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="40" ItemStyle-CssClass="Line-Id" />
            <asp:BoundField ItemStyle-CssClass="Line-Name" DataField="Name" HeaderText="Name" />
            <asp:BoundField ItemStyle-CssClass="Line-Description" DataField="Description" HeaderText="Description" />
            <asp:TemplateField ItemStyle-Width="200" HeaderText="Actions">
                <ItemTemplate>
                    <input type="button" class="btnEdit" value="Edit" />
                    <input type="button" class="btnDelete" value="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div id="LineDetail">
        <asp:Label runat="server" AssociatedControlID="Name" Text="Name"></asp:Label><br />
        <asp:TextBox runat="server" CssClass="txtName" ID="Name"></asp:TextBox><br /><br />
        <asp:TextBox runat="server" CssClass="txtDescription" ID="Description"></asp:TextBox><br /><br />
        <input type="button" id="btnSave" value="Save" />
        <input type="button" id="btnCancel" value="Cancel" />
    </div>
</asp:Content>