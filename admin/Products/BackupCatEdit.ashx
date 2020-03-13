<%@ WebHandler Language="VB" Class="Edit" %>

Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web

Public Class Edit : Implements IHttpHandler
    
    Public Sub ProcessRequest(ByVal ctx As HttpContext) Implements IHttpHandler.ProcessRequest
        ctx.Response.ContentType = "text/plain"
        Dim id As Integer = ctx.Request("Id")
        Dim line As Integer = ctx.Request("Line")
        If Not ctx.Request("Name") Is Nothing Then
            Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("rcon").ConnectionString)
            Dim cmd As SqlCommand
            If id = 0 Then
                cmd = New SqlCommand("Insert Into RCProductCat (Name, LineId) Values (@Name, @LineId)", con)
            Else
                cmd = New SqlCommand("Update RCProductCat set Name=@Name, LineId=@LineId where Id=@Id", con)
                cmd.Parameters.AddWithValue("Id", id)
            End If
            cmd.Parameters.AddWithValue("Name", ctx.Request("Name"))
            cmd.Parameters.AddWithValue("LineId", line)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        End If
    End Sub
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class