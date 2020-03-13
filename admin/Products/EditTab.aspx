<%@ Page Title="" Language="VB" MasterPageFile="~/admin/admin.master" EnableEventValidation="false" AutoEventWireup="false" CodeFile="EditTab.aspx.vb" Inherits="admin_Content_EditTab" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="/ckeditor/ckeditor.js" type="text/javascript"></script>
    <style type="text/css">
        textarea{width:600px; max-width:95%;}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h1 style="line-height:3rem;">Product Tab Editor</h1>
    <asp:HiddenField ID="ProductId" runat="server"/>
    <asp:HiddenField ID="Id" runat="server" />
    <asp:CheckBox runat="server" ID="CheckBox_Published" Text="Published"></asp:CheckBox><br><br>
    <label style="line-height:2rem;" Title="The display order of the tabs. 1 is first, 2 is second, ... 0 will display alphabeticlly at the end.">Display Order:</label><br />
    <asp:TextBox runat="server" ID="TextBox_Seq" Width="300" MaxLength="100"></asp:TextBox><br><br>
    <asp:Label runat="server" AssociatedControlID="txtName" Text="Name:" style="line-height:2rem;" ></asp:Label><br />
    <asp:TextBox runat="server" ID="txtName" Width="300" MaxLength="100"></asp:TextBox>
    <br /><br /> 
 
    

    <asp:Label runat="server" AssociatedControlID="txtContent" Text="Content:" style="line-height:2rem;" ></asp:Label><br />
  	
    <asp:TextBox runat="server" CssClass="ckeditor" ID="txtContent" TextMode="MultiLine" Rows="20"></asp:TextBox>
    
    <br />

    <asp:Button runat="server" Text="Save" ID="btnSave" />
    <asp:Button runat="server" Text="Cancel" ID="btnCancel" /><br /><br />
	
</asp:Content>