<% @Import Namespace="System.Data" %>
<%
	Dim DocCategoriesData as DataTable =  ControllerFactory.Documents.Categories()
	
	For Each DocCategoriesDataRow As DataRow In DocCategoriesData.Rows
		ControllerFactory.Documents.CategoryId = DocCategoriesDataRow("Id") 
		Dim CategoryDocumentsData as DataTable = ControllerFactory.Documents.CategoryDocuments()
		If CategoryDocumentsData.Rows.Count > 0 Then
%>
		<div class="row pb-3">
		<div><h3><%= DocCategoriesDataRow("Name") %></h3></div>
		</div>
<%
		For Each CategoryDocumentsDataRow As DataRow In CategoryDocumentsData.Rows
%>
		<div class="row pb-3">
		<div class="d-flex">
		<div class="flex-shrink-1 pr-1">
			<img src="<%= ControllerFactory.Documents.DocumentIcon( CategoryDocumentsDataRow("FileName") ) %>" style="width:35px;height:35px;padding:0;" alt="<%= CategoryDocumentsDataRow("FileName") %>" />
		</div>
		<div class="m-auto">
			<a href="/docfile3.ashx?id=<%= CategoryDocumentsDataRow("Id") %>" target="_blank" class="d-block"><%= CategoryDocumentsDataRow("Name") %></a>
			<small  class="d-block"><%= CategoryDocumentsDataRow("Description") %></small>
		</div>
		</div>
		</div>
	
<%	
		Next
%>
		
<%
		End If
	Next
%>

			


