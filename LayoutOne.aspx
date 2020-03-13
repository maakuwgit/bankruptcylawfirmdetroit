<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Layout.aspx.vb" Inherits="Layout" %>
<% @Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">  
<header class="d-flex bg-primary align-items-center justify-content-center px-3 container-fluid page-header mb-5">
	<h1 class="text-white text-center"><%= WebSite.Link(Website.Router.QueryString("id")).GetLabel() %></h1>
</header>
  
<main class="container">
	<div class="row"> 
		<div class="col-12">
			<%= Website.Content.GetForPage(Website.Router.QueryString("id")) %>
		</div>
	</div>
</main>

<aside data-callout>
	<div class="container">
		<nav class="row justify-content-around align-items-center align-content-center">
			<a href="/solutions/chapter-7-bankruptcy-attorney" class="btn btn-black btn-lg">Chapter 7 Bankruptcy Attorney</a>
			<a href="/solutions/chapter-13-bankruptcy-attorney" class="btn btn-black btn-lg">Chapter 13 Bankruptcy Attorney</a>	
		</nav>
	</div>
</aside>
</asp:Content>