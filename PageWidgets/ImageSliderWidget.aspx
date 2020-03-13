<% @Import Namespace="System.Data" %>
<div id="carouselImageSlider" class="carousel slide" data-ride="carousel" data-interval="5000" data-pause="hover">
<!-- Wrapper for slides -->
<div class="carousel-inner" role="listbox">
<%
	Dim SilderData as DataTable =  ControllerFactory.ImageSlider.All
	Dim FirstItem = true
	For Each dr As DataRow In SilderData.Rows
%>
<% 
	If FirstItem Then
		FirstItem = false
%>
<div title="<%= dr("title") %>" alt="<%= dr("title") %>" class="carousel-item active p-2" style="background:url(<%= dr("ImgSrc") %>);background-size:cover;background-position:right;background-repeat: no-repeat;height:40vh;width:100%;">
<% 
	Else
%>
<div title="<%= dr("title") %>" alt="<%= dr("title") %>" class="carousel-item p-2" style="background:url(<%= dr("ImgSrc") %>);background-size:cover;background-position:right;background-repeat: no-repeat;height:40vh;width:100%;">
<% 
	End If
%>
<% if( dr("Title").toString().length > 0 ) %>
	<div class="carousel-caption d-none d-md-block" style="background:rgba(55,170,197,.9);">
		<h1 class="text-uppercase">	
			<%= dr("Title") %>
		</h1>
		<% if( dr("Description").toString().length > 0 ) %>
		<p>
			<%= dr("Description") %>
		</p>
		<% End If %>
	</div>
<% End If %>
</div>
<%	
	Next
%>
</div>
<% If SilderData.Rows.Count > 1 Then %>
<a class="carousel-control-prev" href="#carouselImageSlider" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span></a> <a class="carousel-control-next" href="/contact" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span></a> 
<% End If %>
</div>



