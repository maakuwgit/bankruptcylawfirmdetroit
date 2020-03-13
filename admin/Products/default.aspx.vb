Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_products_default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim dt As DataTable = RC4.Pull("Select Id, Name from RCProductCat order by name asc")
            dlCat.DataSource = dt
            dlCat.DataTextField = "Name"
            dlCat.DataValueField = "Id"
            dlCat.DataBind()
            LoadRepeater()
        End If
    End Sub

    Sub getNestedProducts(ByVal Sender As Object, ByVal e As RepeaterItemEventArgs)
        Dim dt As DataTable = RC4.Pull("Select Id, Name, bHome, '/Product.ashx?h=40&Id=' + cast(Id as varchar(8)) as PicURL from RCProduct where CatId=" & e.Item.DataItem("Id") & " Order by Seq asc")
        Dim rpt As GridView = e.Item.FindControl("gvProduct")
        rpt.DataSource = dt
        rpt.DataBind()
    End Sub

    Sub getNestedCats(ByVal Sender As Object, ByVal e As RepeaterItemEventArgs)
        Dim dt As DataTable = RC4.Pull("Select * from RCProductCat where (Select count(*) from RCProduct where CatId=RCProductCat.Id)>0 and LineId=" & e.Item.DataItem("Id") & " Order by Seq asc")
        Dim rpt As Repeater = e.Item.FindControl("rptCats")
        rpt.DataSource = dt
        rpt.DataBind()
    End Sub

    Protected Sub btnEdit_Click(sender As Object, e As EventArgs)
        Dim id As Integer = CType(sender, Button).CommandArgument
        Response.Redirect("Add.aspx?Id=" & id)
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim id As Integer = CType(sender, Button).CommandArgument
        'SQLExec("Delete from RCProductLine where Id=" & id)
        SQLExec("Delete from RCProduct where Id=" & id)
        LoadRepeater()
    End Sub

    Protected Sub btnLine_Click(sender As Object, e As EventArgs) Handles btnLine.Click
        Response.Redirect("ProductLine.aspx")
    End Sub

    Protected Sub btnCat_Click(sender As Object, e As EventArgs) Handles btnCat.Click
        Response.Redirect("Cat.aspx")
    End Sub

    Protected Sub LoadRepeater()
        Dim dt As DataTable = RC4.Pull("Select Id, Name from RCProductLine order by Seq asc")
        rptLines.DataSource = dt
        rptLines.DataBind()
    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim con As SqlConnection = getCon()
        Dim cmd As New SqlCommand("Insert into RCProduct (Name, Description, CatId) VALUES (@Name, @Description, @CatId) Select Scope_Identity()", con)
        cmd.Parameters.AddWithValue("Name", Name.Text)
        cmd.Parameters.AddWithValue("Description", Desc.Text)
        cmd.Parameters.AddWithValue("CatId", dlCat.SelectedValue)
        con.Open()
        Dim ProductId As Integer = cmd.ExecuteScalar()
        con.Close()
        Response.Redirect("/admin/Products/Add.aspx?Id=" & ProductId)
    End Sub

    Protected Sub btnSpecCat_Click(sender As Object, e As EventArgs) Handles btnSpecCat.Click
        Response.Redirect("SpecCat.aspx")
    End Sub

    Protected Sub ckHome_CheckedChanged(sender As Object, e As EventArgs)
        Dim Id As Integer = CType(sender, CheckBox).ToolTip
        Dim c As SqlConnection = getCon()
        Dim cmd As New SqlCommand("Update RCProduct set bHome=@bHome where Id=@Id", c)
        cmd.Parameters.AddWithValue("Id", Id)
        cmd.Parameters.AddWithValue("bHome", CType(sender, CheckBox).Checked)
        c.Open()
        cmd.ExecuteNonQuery()
        c.Close()
    End Sub

End Class