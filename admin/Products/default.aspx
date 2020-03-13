<%@ Page MasterPageFile="~/admin/admin.master" Language="VB" CodeFile="default.aspx.vb" inherits="admin_products_default" %>
 
<asp:Content runat="server" ContentPlaceHolderID="head">
    <script type="text/javascript">
        $(document).ready(function () {
            var dlg = $("#dlgAdd").dialog({ title: "Add Product", width: 350, modal: false, autoOpen:false });
            dlg.parent().appendTo("#aspnetForm");
            $("#btnAdd").click(function () {
                $("#dlgAdd").dialog("open");
            });
            $("#btnCancel").click(function () {
                $("#dlgAdd textarea, #dlgAdd input[type=text]").val("");
                $("#dlgAdd").dialog("close");
            });
            $(".mGrid tbody").sortable({
                handle: ".drag",
                items: "> .item",
                stop: function (e) {
                    $(e.target).closest("tbody").find("tr.item").each(function (idx, tr) {
                        $.ajax("Seq.ashx", {
                            data: {
                                "Id": $(tr).find(".p-id").html(),
                                "Seq": idx
                            },
                            cache: false
                        });
                    });
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="ucMain" ContentPlaceHolderID="main" runat="server">
    <h1>Products</h1>
    <p>
        <asp:button ID="btnLine" ToolTip="Manage Lines" runat="server" Text="Lines" />
        <asp:button ID="btnCat" ToolTip="Manage Categories" runat="server" Text="Categories" />
        <input type="button" id="btnAdd" value="New Product" />
        <asp:button ID="btnSpecCat" ToolTip="Manage Spec Categories" runat="server" Text="Spec Categories" Visible="false" />
    </p>
    <asp:Repeater ID="rptLines" runat="server" OnItemDataBound="getNestedCats">
        <ItemTemplate>
            <h2><%#Container.DataItem("Name")%></h2>
            <div style="padding-left:30px;">
                <asp:Repeater ID="rptCats" runat="server" OnItemDataBound="getNestedProducts">
                    <ItemTemplate>
                        <h3 style="margin-bottom:0;"><%#Container.DataItem("Name")%></h3>
                        <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="item alt" EmptyDataText="No products have been added yet." RowStyle-CssClass="item">
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="120" HeaderText="Photo" ItemStyle-HorizontalAlign="center" ItemStyle-CssClass="drag">
                                    <ItemTemplate>
                                        <img class="drag" src='<%#Eval("PicURL") %>' alt="Product Picture" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="40" ItemStyle-CssClass="p-id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:TemplateField ItemStyle-Width="80" HeaderText="Home Page" ItemStyle-HorizontalAlign="center">
                                    <ItemTemplate>
                                        <asp:CheckBox OnCheckedChanged="ckHome_CheckedChanged" runat="server" Checked='<%#Eval("bHome") %>' AutoPostBack="true" ToolTip='<%#Eval("Id") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="120" HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandArgument='<%#Eval("Id") %>' OnClick="btnEdit_Click" />
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("Id") %>' OnClientClick="return confirm('Are you sure?')" OnClick="btnDelete_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div id="dlgAdd">
        <asp:Label runat="server" AssociatedControlID="dlCat" Text="Category:"></asp:Label><br />
        <asp:DropDownList runat="server" ID="dlCat"></asp:DropDownList><br /><br />
        <asp:Label runat="server" AssociatedControlID="Name" Text="Name:"></asp:Label><br />
        <asp:TextBox runat="server" ID="Name" Width="300"></asp:TextBox><br /><br />
        <asp:Label runat="server" AssociatedControlID="Desc" Text="Description:"></asp:Label><br />
        <asp:TextBox runat="server" ID="Desc" TextMode="MultiLine" Rows="3" Width="300"></asp:TextBox><br /><br />
        <asp:Button runat="server" ID="btnAdd" Text="Save" />
        <input id="btnCancel" type="button" value="Cancel" />
    </div>
</asp:Content>