
<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Staff.aspx.vb" Inherits="Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<header class="d-flex bg-primary align-items-center justify-content-center px-3 container-fluid page-header mb-5">
	<h1 class="text-white text-center"><%= WebSite.Link(Website.Router.QueryString("id")).GetLabel() %></h1>
	<%= Website.Content.GetForPage(Website.Router.QueryString("id")) %>
</header>
	
<section class="container">
	<div class="row align-items-start justify-content-center">
		<asp:Repeater runat="server" ID="rptBio">
		<ItemTemplate>
			<figure class="col-lg-4 col-md-6">
					<asp:Image runat='server' id='staff_image' visible='<%# Container.DataItem("FSLoc").ToString() <> "" %>' src='<%#Eval("FSLoc") %>' alt='<%#Eval("Name")%>'  class="img-fluid col-12"/>
					<figcaption class="col-12">
						<h3 class="mod__staff__name"><%# Eval("Name")%></h3>
						<p class="mod__staff__bio"><%# nl2br(Eval("Description")) %></p>
					</ficaption>
			</figure>
		</ItemTemplate>
		</asp:Repeater>
	</div>
</section>
</asp:Content>
