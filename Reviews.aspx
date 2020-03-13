<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="Reviews.aspx.vb" Inherits="Testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="/css/starability-minified/starability-all.min.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

 <div class="d-flex bg-primary align-items-center justify-content-center px-3 container-fluid page-header mb-5">
			<h1 class="text-white text-center"><%= WebSite.Link(Website.Router.QueryString("id")).GetLabel() %></h1>
	</div>
	
<div  class="container">
 
			<div class="row">
			<div class="col-12">
					<%= Website.Content.GetForPage(Website.Router.QueryString("id")) %>
				</div>
				<div class="col-12">
					<h3 class="col-12 pl-0 mt-3">Average Rating</h3>
					<div class="col-12 pl-0 mb-3"><%= AverageRatingElement() %></div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-lg-8">
						<asp:Literal runat="server" ID="ltlTestimonials"></asp:Literal>
					</div>
					<div class="col-12 col-lg-4">
					<h2>
						Leave a review
					</h2>
					<form runat="server" role="form" class="no-gutter">
							<div>
								<div class="form-group">
									<asp:Label ID="Label1" runat="server" Text="First Name" AssociatedControlID="txtFirstName"></asp:Label>
									<asp:TextBox runat="server" id="txtFirstName" class="form-control" />
								</div>
						
								<div class="form-group">
									<asp:Label ID="Label2" runat="server" Text="Last Name" AssociatedControlID="txtLastName"></asp:Label>
									<asp:TextBox runat="server" id="txtLastName" class="form-control" />
								</div>
						
								<div class="form-group">
									<asp:Label ID="Label3" runat="server" Text="City" AssociatedControlID="txtCity"></asp:Label>
									<asp:TextBox runat="server" id="txtCity" class="form-control" />
								</div>
								<div class="form-group">
									<asp:Label ID="Label4" style="width:12% !important;" runat="server" Text="Review" AssociatedControlID="txtMessage"></asp:Label>
									<asp:TextBox TextMode="MultiLine" runat="server" id="txtMessage" Rows="4" class="form-control" />
								</div>
								
								
                            	<div class="form-group">
									<fieldset class="starability-basic">
									  <legend>Rate Us</legend>
									  <input type="radio" id="no-rate" class="input-no-rate" name="rating" value="0" checked aria-label="No rating." />

									  <input type="radio" id="rate1" name="rating" value="1" />
									  <label for="rate1">1 star.</label>

									  <input type="radio" id="rate2" name="rating" value="2" />
									  <label for="rate2">2 stars.</label>

									  <input type="radio" id="rate3" name="rating" value="3"/>
									  <label for="rate3">3 stars.</label>

									  <input type="radio" id="rate4" name="rating" value="4" />
									  <label for="rate4">4 stars.</label>

									  <input type="radio" id="rate5" name="rating" value="5" />
									  <label for="rate5">5 stars.</label>

									  <span class="starability-focus-ring"></span>
									</fieldset>
								</div>
						
							
								<div class="form-group">
									<input type="submit" runat="server" value="Submit" id="btnSubmit" class="btn btn-primary"/>
									<span id="lblMsg" runat="server" class="alert"></span>  
								</div>
							</div>
					</form>
			</div>
			</div>
</div>
</asp:Content>