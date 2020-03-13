Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_Content_EditTab
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            
            If Not Request("pid") Is Nothing Then
            	ProductId.Value = Request("pid")
            End If
            
            If Not Request("Id") Is Nothing Then
                If IsNumeric(Request("Id")) Then
                    Id.Value = Request("Id")
                    Dim dt As DataTable = RC4.Pull("Select * from RCProductTab Where Id=" & CInt(Request("Id")))
                    If dt.Rows.Count > 0 Then 
                        If Not IsDBNull(dt.Rows(0).Item("Name")) Then txtName.Text = dt.Rows(0).Item("Name")
                        If Not IsDBNull(dt.Rows(0).Item("Content")) Then txtContent.Text = dt.Rows(0).Item("Content")
                        If Not IsDBNull(dt.Rows(0).Item("Seq")) Then TextBox_Seq.Text = dt.Rows(0).Item("Seq")
                        CheckBox_Published.checked  = dt.Rows(0).Item("Published")
                        ProductId.Value = dt.Rows(0).Item("ProductId")
                    End If
                End If
            End If
        End If
    End Sub

    
	

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
    	
    	If String.IsNullOrEmpty(Id.Value) And String.IsNullOrEmpty(Request("pid")) Then
    		Response.Redirect("/Admin/Products/")
    	End If
    	
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings.Item("rcon").ConnectionString)
        Dim cmd As SqlCommand
        If String.IsNullOrEmpty(Id.Value) And Not Request("pid") Is Nothing Then
            Dim sql As String = "Insert Into RCProductTab (ProductId, Name, Content, Published, Seq) Values (" & Request("pid") & ", @Name, @Content, @Published, @Seq)"
            cmd = New SqlCommand(sql, con)
        Else
            Dim sql As String = "Update RCProductTab set Name=@Name, Content=@Content, Published=@Published, Seq=@Seq where Id=@Id"
			
            cmd = New SqlCommand(sql, con)
            cmd.Parameters.AddWithValue("Id", Id.Value)
        End If
        cmd.Parameters.AddWithValue("Name", txtName.Text)
        cmd.Parameters.AddWithValue("Content", txtContent.Text)
        cmd.Parameters.AddWithValue("Published", CheckBox_Published.checked)
        cmd.Parameters.AddWithValue("Seq", TextBox_Seq.Text)
		con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("/Admin/Products/Add.aspx?Id=" & ProductId.Value)
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("/Admin/Products/Add.aspx?Id=" & ProductId.Value)
    End Sub

    
End Class
