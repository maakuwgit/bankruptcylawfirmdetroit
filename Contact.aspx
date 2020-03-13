<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>
<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="ReCaptcha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

 <div class="d-flex bg-primary align-items-center justify-content-center px-3 container-fluid page-header mb-5">
			<h1 class="text-white text-center"><%= WebSite.Link(Website.Router.QueryString("id")).GetLabel() %></h1>
	</div>
            
        <div class="container">
			<div class="row">
				<div class="col-12">
					<%= Website.Content.GetForPage(Website.Router.QueryString("id")) %>
				</div>
				<div class="col-12 col-md-6 mb-3">
					<!-- #Include file="\PageWidgets\ContactWidget.aspx" -->	
				</div>
				<div class="col-12 col-md-6 mb-5">
					<div class="embed-responsive embed-responsive-4by3">
						<iframe title="Kostopoulous & Associates Location" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2940.54020118269!2d-83.02484898453854!3d42.52257827917622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8824da45a9f7c88f%3A0xc5bb080fd0689ca0!2sKostopoulos+%26+Associates!5e0!3m2!1sen!2sus!4v1559128657198!5m2!1sen!2sus"  frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<div class="mt-3">
						<h4><%= Website.Company.Name %></h4>
						<div><%= Website.Company.Contact.Address %></div>
						<div><%= Website.Company.Contact.CityStateZip %></div>
						<div><span>Phone: </span><a href="tel:+15865740916"><%= Website.Company.Contact.Phone %></a></div>
					</div>
				</div>
		</div>
		
</asp:Content>

