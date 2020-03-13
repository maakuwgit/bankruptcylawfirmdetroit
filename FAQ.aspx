<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="FAQ.aspx.vb" Inherits="FAQ" %>
<% @Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<header class="d-flex bg-primary align-items-center justify-content-center px-3 container-fluid page-header mb-5">
	<h1 class="text-white text-center"><%= WebSite.Link(Website.Router.QueryString("id")).GetLabel() %></h1>
</header>
<!-- FAQ WIDGETS -->
<dl class="faq-widget">
<%
	Dim faqs = ControllerFactory.Faq.All()
	Dim featClass, featStyle
	
	For Each row in faqs.Rows
		Dim featured = row("featured")
		featClass = " closed"
		featStyle = ""
		
		If ( featured = 1 )
			featClass = " open"
			featStyle = " style='display:block'"
		End If
%>
<dt class="py-3 border-bottom border-white question<%= featClass %>" data-reveal="true" data-reveal-content-id="r<%= row("id") %>">
	<div class="h2 text-white"><%= row("Question") %></div>
</dt>
<dd class="" data-reveal-content="r<%= row("id") %>"<%= featStyle %>>
	<div class="blockquote p-4"><%= row("Answer") %></div>
</dd>
<%
	Next
%>
</dl>

<script type="text/javascript">
 $(document).ready(function() {
	//$('.reveal').hide();
	$('*[data-reveal="true"]').click(function(e){
		e.preventDefault();
//		console.log(e)
		var contentid = $(e.currentTarget).data("reveal-content-id")
//		console.log(contentid)
		$('*[data-reveal-content="' + contentid + '"]').slideToggle();
		$(e.currentTarget).toggleClass('open closed');
	});
});
</script>

<!--

END FAQ WIDGETS

-->

</asp:Content>

