Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Partial Class Videos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim dtc As DataTable
		Dim dt As DataTable
        dtc = RC4.Pull("Select * from RCVideoCat Order by Id desc")
		dt = RC4.Pull("Select * from VideoItem Order by Id asc")

        Dim sb As New StringBuilder	
        
		For Each dr As DataRow In dt.Rows
                sb.AppendLine("<div class=""col-6 mb-5"">")
                sb.AppendLine("<div class=""mb-3"">")
                sb.AppendLine("<h4>" & dr.Item("VidName") & "</h4>")
                'sb.AppendLine("<span>Category: " & dr.Item("CatName") & "</span>")
                If Not IsDBNull(dr.Item("VidDesc")) AndAlso Not String.IsNullOrEmpty(dr.Item("VidDesc")) Then
                    sb.AppendLine("<p>" & dr.Item("VidDesc") & "</p>")
                End If
                sb.AppendLine("</div>")
                
                If Not IsDBNull(dr.Item("Code")) Then
                    
                    Dim vidUrl As String = dr.Item("Code").Trim
      
                    
                    If LCase(vidUrl).Contains("youtube.com") Or LCase(vidUrl).Contains("youtu") Then
                    
                    	If Not LCase(vidUrl).Contains("embed") Then
                    	
                    		Dim Parts = vidUrl.Split("/")
                    		
                    		vidUrl = "https://www.youtube.com/embed/" & Parts.Last
		
                        End If
              
                       sb.AppendLine("<div class=""embed-responsive embed-responsive-16by9 border border-dark""><iframe  src=""" & vidUrl & "?rel=0"" frameborder=""0"" gesture=""media"" allow=""encrypted-media"" allowfullscreen></iframe></div>")
                    ElseIf LCase(vidUrl).Contains("vimeo.com") Then
                        vidUrl = vidUrl.Replace("vimeo.com/", "player.vimeo.com/video/")
                        sb.AppendLine("<div class=""embed-responsive embed-responsive-16by9 border border-dark""><iframe scrolling=""no"" gesture=""media"" frameborder=""0"" src=""" & vidUrl & """ allowfullscreen></iframe></div>")
                    End If
                End If
                sb.AppendLine("</div>")
        Next
        If sb.Length = 0 Then
            nsvDetail.InnerHTML = "<div class=""""></div>"
        Else
            nsvDetail.InnerHTML = sb.ToString
        End If
    End Sub
    
End Class
