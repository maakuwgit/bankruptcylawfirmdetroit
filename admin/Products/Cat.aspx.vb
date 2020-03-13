Imports System.Data

Partial Class admin_Products_Cat
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim dt As DataTable = RC4.Pull("Select Id, Name from rcProductLine order by Seq asc")
            dlLine.DataSource = dt
            dlLine.DataTextField = "Name"
            dlLine.DataValueField = "Id"
            dlLine.DataBind()
        End If
        LoadGrid()
    End Sub

    Protected Sub LoadGrid()
        Dim dt As DataTable = RC4.Pull("Select * from RCProductCat order by Seq asc")
        gvCats.DataSource = dt
        gvCats.DataBind()
    End Sub
End Class