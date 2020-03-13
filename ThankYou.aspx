<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
            
        <div class="container pt-5" style="min-height:70vh;">
        	<div class="row">
        		<div class="col-12">
        		<%
        			Dim ContentId = Request(Forms.LandingPage.CONTENT_ID_KEY)

        			Dim Title = Request(Forms.LandingPage.TITLE_KEY)
        			Dim EventTrackingLabel = Request(Forms.EventTracking.EVENT_TRACKING_LABEL_KEY)
        			Dim EventTrackingAction = Request(Forms.EventTracking.EVENT_TRACKING_ACTION_KEY)
        			Dim EventTrackingValue = Request(Forms.EventTracking.EVENT_TRACKING_VALUE_KEY)
        		%>
        		<h1><%= Title %></h1>
        			<% If Not ContentId Is Nothing AndAlso ContentId.ToString.Length > 0 Then %>
           			<%= GetContent(ContentId) %>
           		<% else %>
           			<%= GetContent("Contact Thank You") %>
           		<% end if %>
           		</div>
			</div>
		</div>
		
		<script>
			if( typeof ga !== 'undefined'){
				console.log("Thank You Page:", "ga is defined - event sent")
				ga('send', 'event', '<%=EventTrackingAction %>', '<%=EventTrackingLabel %>', '<%=EventTrackingValue %>');
			}
			else {
				console.log("Thank You Page:", "ga is NOT defined - no event sent")
			}
		</script>
		
</asp:Content>