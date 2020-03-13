<% @Import Namespace="System.Data" %>
<link rel="stylesheet" type="text/css" href="/css/starability-minified/starability-all.min.css">
<div id="carouselReviews" class="carousel slide" data-ride="carousel" data-interval="3000" data-pause="hover" style="display: flex;flex-direction: column;">


<ol class="carousel-indicators">
<%
	Dim Data as DataTable =  ReviewsWidget.topRandom(9) 
	Dim First = true
	Dim sliders = Data.Rows.Count
	For i As Integer = 0 To sliders-1
%>
<% 
	If First Then
		First = false
%>
<li data-target="#carouselReviews" data-slide-to="<%= i %>" class="active"></li>
<% 
	Else
%>
<li data-target="#carouselReviews" data-slide-to="<%= i %>"></li>
<% 
	End If
%>
 
  <%
  	Next
  %>
   </ol>
   
   
<!-- Wrapper for slides -->
<div class="carousel-inner" role="listbox">
<div class="carousel-item active">
<div class="row">
<%
	Dim reviewsdata as DataTable =  ReviewsWidget.topRandom(9) 
	Dim rwFirstItem = true
	Dim rwGridCounter = 1
	Dim rwGridCount = 1
	For Each dr As DataRow In reviewsdata.Rows
%>


<% 
		If rwGridCounter > rwGridCount Then
			rwGridCounter = 1
	%>
		</div>
		</div>
		<div class="carousel-item">
		<div class="row" class="min-height">
	
	<%
		End If
	%>
	
<div class="col">
<div>
<p class="text-white blockquote text-center">
<%= TruncateString(dr.Item("quote"), 250) %>
</p>
<div class="text-center">
<% 
If Not dr.IsNull("RatingValue") Then
	Response.Write("<fieldset class=""starability-basic text-center"" style=""display:inline-block;width:auto;"">")
	For value As Integer = 1 To dr("RatingValue")
		Response.Write("<label></label>")
	Next
	Response.Write("</fieldset>")
End If
%>
</div>
<div style="font-style:italic;font-size:14px;font-weight:bold;color:white;"><%= dr.item("firstname") %> <%= dr.item("lastname") %></div>
</div>
</div>
<!-- Review Popup -->
<div style="display: none;" id="<%= dr.item("id") %>-more" class="col-11 col-lg-5">
	<% 
	If Not dr.IsNull("RatingValue") Then
		Response.Write("<fieldset class=""starability-basic text-center"" style=""display:inline-block;width:auto;"">")
		For value As Integer = 1 To dr("RatingValue")
			Response.Write("<label></label>")
		Next
		Response.Write("</fieldset>")
	End If
	%>
	<p data-selectable="true"><%= dr.Item("quote") %></p>
	<div style="font-style:italic;font-size:12px;font-weight:bold;color:white;"><%= dr.item("firstname") %> <%= dr.item("lastname") %></div>
</div>
<%	
	rwGridCounter = rwGridCounter + 1
	Next
%>



</div>
</div>
</div>
</div>

<style>
.carousel-indicators {
	position: static;
	bottom: initial;
	right: initial;
	left: initial;
	order: 2;
}
.carousel-indicators li {
    position: relative;
    flex: 0 1 auto;
    width: 10px;
    height: 10px;
    border-radius: 30px;
    margin-right: 3px;
    margin-left: 3px;
    text-indent: -999px;
    background-color: #fff;
    border:1px solid #A72005;
}

.carousel-indicators .active {
	background: #A72005;
}
</style>




