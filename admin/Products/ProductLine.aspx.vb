Imports System.Data

Partial Class admin_Product_ProductLine
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        LoadGrid()
    End Sub

    Protected Sub LoadGrid()
        Dim dt As DataTable = RC4.Pull("Select * from RCProductLine order by Seq asc")
        gvLines.DataSource = dt
        gvLines.DataBind()
    End Sub
End Class