﻿Imports System.Net.Mail
Imports System.Net
Imports System.Data


Partial Class Testimonials
    Inherits System.Web.UI.Page

    Sub page_load(ByVal s As Object, ByVal e As EventArgs) Handles MyBase.Load
        Dim x As Integer = 0
        If Not Page.IsPostBack Then
            Dim sb As New StringBuilder
            For Each dr As datarow In RC4.Pull("Select * from RCTestimonials where isApproved=1").Rows
               
                sb.Append("<div class=""quote w-100"">")
				sb.Append("<div class=""text"">""" & WordLimitContainer(dr("quote"), 30, dr("id")) & """</div>")
                sb.Append("<small>" & dr("firstName") & " " & dr("LastName") & "")
				if (dr("Company")).ToString.Length > 0 then sb.Append(", " & dr("Company") & "" ) 
				if (dr("City")).ToString.Length > 0 then sb.Append("<div>" & dr("City")) 
				if (dr("State")).ToString.Length > 0 then sb.Append(", " & "&nbsp;" & dr("State") & "</div>") 
				sb.Append("</small>")
				If Not dr.IsNull("RatingValue") Then
					sb.Append("<fieldset class=""starability-basic"">")
					For value As Integer = 1 To dr("RatingValue")
						sb.Append("<label></label>")
					Next
					sb.Append("</fieldset>")
				End If
                sb.Append("</div>")
           
            Next
            ltlTestimonials.Text = sb.ToString
        End If

    End Sub

    Sub btnSubmit_Click(ByVal s As Object, ByVal e As EventArgs) Handles btnSubmit.ServerClick
    	Dim rating = Request("rating")
        Dim con As New Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("rcon").ConnectionString)
        con.Open()
        Dim sql As String = "Insert into rcTestimonials(dateCreated, FirstName, LastName, city, state, quote, isApproved, ip, RatingValue) Values (@dateCreated, @FirstName, @LastName, @city, @state, @quote, @isApproved, @ip, @RatingValue)"
        Dim cmd As New Data.SqlClient.SqlCommand(sql, con)
        cmd.Parameters.AddWithValue("dateCreated", Today.Date)
        cmd.Parameters.AddWithValue("FirstName", txtFirstName.Text)
        cmd.Parameters.AddWithValue("LastName", txtLastName.Text)
        cmd.Parameters.AddWithValue("city", txtCity.Text)
        cmd.Parameters.AddWithValue("state", "")
        cmd.Parameters.AddWithValue("quote", txtMessage.Text)
        cmd.Parameters.AddWithValue("isApproved", False)
        cmd.Parameters.AddWithValue("RatingValue", Rating)
        cmd.Parameters.AddWithValue("ip", Request.UserHostAddress)

        Try
            cmd.ExecuteNonQuery()
            clearform()
            lblMsg.InnerHtml = "Thank you for your testimonial!"
           	'ScriptManager.RegisterStartupScript(Me, Me.GetType(), "Success", "ga('send', 'event', 'Testimonial Submission Form', 'Form Submitted');alert('Your testimonial was sent successfully. Thank you for your submission.'); location.href='/testimonials.aspx';", True)
            
        Catch ex As Exception
            lblMsg.InnerHtml = "There was a problem with your testimonial. Please make sure to fill out all the required fields."
            lblMsg.InnerHtml = ex.Message
        End Try
    End Sub
    
    Sub sendEmail()
		Dim smtp As New SmtpClient
        smtp.Host = RC4.ConfigStrings.GetByName("Host").Value
        smtp.Credentials = New NetworkCredential(RC4.ConfigStrings.GetByName("SMTPAccount").Value, RC4.ConfigStrings.GetByName("SMTPPassword").Value)
        Dim msg As New MailMessage
		'msg.To.Add("blake.t@rccwebmedia.com")
		'msg.To.Add("dean.s@rccwebmedia.com")
		msg.To.Add("bob.h@romeocomp.com")
        msg.From = New MailAddress("WebContact@real-fast.com")
        msg.IsBodyHtml = True
        msg.Body &= "<html><style type=""text/css"">p{font-family:Calibri, Arial, Helvetica; font-size:11pt;}</style>"
        msg.Body &= "<p><b>Name: </b>" & txtFirstName.Text & " " & txtLastName.Text & "</p>"
        msg.Body &= "<p><b>City: </b>" & txtCity.Text & "</p>"
        msg.Body &= "<p><b>Testimonial: </b>" & txtMessage.Text & "</p>"
        msg.Body &= "</html>"
        msg.Subject = "New Testimonial - RCC Web Media"
        smtp.Send(msg)
	End Sub

    Sub clearform()
        txtFirstName.Text = ""
        txtLastName.Text = ""
        txtCity.Text = ""
        txtMessage.Text = ""
    End Sub
End Class
