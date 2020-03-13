Imports System.Data
Imports System.Data.SqlClient

Partial Class Site
    Inherits System.Web.UI.MasterPage

    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings.Item("rcon").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        	SEO(false)
    End Sub

    Private Sub SEO(Optional IsProduction As Boolean = true)
    	if isProduction Then
			Dim URLGuess As String 
			URLGuess = Request.RawUrl
			Dim dt6 As DataTable = RC4.Pull("Select Top 1 * from vSEO_URL where url like '" & URLGuess.Replace("/", "") & "' OR Page like '" & URLGuess & "'")
			If dt6.Rows.Count = 0 
				Exit Sub
			End If
			With dt6.Rows(0)
				If Not IsDBNull(.Item("Title")) Then Me.Page.Title = .Item("Title") 
				meta.Text = vbCrLf
				If Not IsDBNull(.Item("Desc")) Then meta.Text &= " <meta name=""description"" content=""" & .Item("Desc") & """/>" & vbCrLf
				If Not IsDBNull(.Item("Keywords")) Then meta.Text &= " <meta name=""keywords"" content=""" & .Item("Keywords") & """/>" & vbCrLf
			End With
		Else
			if FilterRawUrl(Request.RawUrl).length > 0 Then
				Dim ad As New SqlDataAdapter("Select * from RCSeo where Page=@Page", con)
				ad.SelectCommand.Parameters.AddWithValue("Page", Request.RawUrl)
				Dim dt As New DataTable
				con.Open()
				ad.Fill(dt)
				If dt.Rows.Count = 0 Then
					'Dim cmd As New SqlCommand("Insert into RCSeo (Page) values (@Page)", con)
					'cmd.Parameters.AddWithValue("Page", Request.RawUrl)
					'cmd.ExecuteNonQuery()
				Else
					With dt.Rows(0)
						If Not IsDBNull(.Item("Title")) Then Me.Page.Title = .Item("Title")
						meta.Text = vbCrLf
						If Not IsDBNull(.Item("Desc")) Then meta.Text &= " <meta name=""description"" content=""" & .Item("Desc") & """/>" & vbCrLf
						If Not IsDBNull(.Item("Keywords")) Then meta.Text &= " <meta name=""keywords"" content=""" & .Item("Keywords") & """/>" & vbCrLf
					End With
				End If
				con.Close()
			End If
        End If
    End Sub
    
    Private Function FilterRawUrl(rawurl As String)
    	If rawurl.Trim().StartsWith("/images") Or _
    		rawurl.Trim().StartsWith("/admin") Or _
    		rawurl.Trim().StartsWith("/css") Or _
    		rawurl.Trim().StartsWith("/js") Or _
    		rawurl.Trim().EndsWith(".ico") Or _
    		rawurl.Trim().EndsWith(".js") Or _
    		rawurl.Trim().EndsWith(".png") Or _
    		rawurl.Trim().EndsWith(".gif") Or _
    		rawurl.Trim().EndsWith(".jpg") Or _
    		rawurl.Trim().EndsWith(".jpeg") Or _
    		rawurl.Trim().EndsWith(".map") Or _
    		rawurl.Trim().EndsWith(".css") _
    	Then
    		return ""
    	End If
    	return rawurl
    End Function

End Class