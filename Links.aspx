<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Links.aspx.vb" Inherits="Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
  
<header class="d-flex bg-primary align-items-center justify-content-center px-3 container-fluid page-header mb-5">
	<h1 class="text-white text-center"><%= WebSite.Link(Website.Router.QueryString("id")).GetLabel() %></h1>
</header>
  
<main id="link" class="container">
	<div class="row"> 
		<div class="col-12 wow fadeInDown"><%= GetContent("Links")%></div>
			<div class="col-sm-3 col-xs-12 col-sm-push-9">
				<div class="col-xs-12"><h3>Categories</h3></div>
				<asp:Repeater runat="server" ID="Categories">
					<ItemTemplate>
						<div class="col-xs-12">
							<a href="<%=Website.Link(23).URL()%>/<%#Eval("Id")%>"><%#Eval("Name") %></a>
						</div>
					</ItemTemplate>
				</asp:Repeater>
				<div class="col-xs-12 row"><hr></div>
			</div>
			
			 <div class="col-sm-9 col-xs-12 col-sm-pull-3">
			 <p style="font-size:18px; font-weight:bold;">Click a link below to view the resource</p>
				<asp:Repeater runat="server" ID="rptBio">
					<ItemTemplate>
						<div class="col-md-12 col-sm-12 col-xs-12 link__item__content" style="margin-bottom:3rem;">
							<div class="row">
								<div class="col-xs-1" style="min-height-:10rem;">
									<!-- img src='<%#Eval("ImgSrc") %>'  class="img-responsive" -->
								</div>
								<div class="col-xs-11 no-float">
									<div class="col-xs-12">
									<h2 style="margin-top:0"><%#Eval("Name") %></h2>
									</div>
									<div class="col-xs-12">
										<%# Eval("Description")%>
									</div>
									<div class="col-xs-12">
									<a target="_blank" href="http://<%# Eval("Link")%>"><%# Eval("Link")%></a>
									</div>
								</div>
							</div>
						</div>
					</ItemTemplate>
				</asp:Repeater>
			</div>  
		</div>
	</div>
</main>
    

</asp:Content>

