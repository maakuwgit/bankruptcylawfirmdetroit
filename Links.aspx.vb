Imports System.Data
Imports System.Data.SqlClient

Partial Class Links
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim dt As New DataTable
            dt = RC4.Pull("Select *, '/LinkImg.ashx?Id=' + cast(Id as varchar(8)) as ImgSrc from RCLink where Link Not Like '' order by Name asc")
            rptBio.DataSource = dt
            rptBio.DataBind()
            
            Dim CategoriesDataTable As DataTable = RC4.Pull("Select * from RCLinkCat order by Seq")
        	Categories.DataSource = CategoriesDataTable
        	Categories.DataBind()
        
        End If
    End Sub
End Class
