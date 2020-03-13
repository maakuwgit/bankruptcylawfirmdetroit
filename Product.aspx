<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Product.aspx.vb" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="c">
        <div class="g12">
            <input type="button" class="submit" onclick="history.back()" value="Go Back" />
	        <div id="product" runat="server" class="product"></div>
        </div>
    </div>
</asp:Content>