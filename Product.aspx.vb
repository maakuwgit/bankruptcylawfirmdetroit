Imports System.Data

Partial Class Product
    Inherits System.Web.UI.Page

    Dim id As Integer = 0

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Request("Id") Is Nothing Then
            id = Request("Id")
            Dim dt As DataTable = RC4.Pull("Select * from RCProduct where Id=" & id & " order by Seq asc")
            For Each dr As DataRow In dt.Rows
                product.InnerHtml &= "<div class=""c product"">"
                product.InnerHtml &= "  <div class=""g3"">"
                product.InnerHtml &= "    <img src=""/Product.ashx?Id=" & dr("Id") & """ alt=""Product Picture"" />"
                product.InnerHtml &= "    <div class=""big"" style=""background-image:url('/Product.ashx?w=" & CInt(ConfigStrings.GetValByName("Img.Product.Width")) & "&Id=" & dr("Id") & "')""></div>"
                product.InnerHtml &= "  </div>"
                product.InnerHtml &= "  <div class=""g9"">"
                product.InnerHtml &= "    <h3>" & dr("Name") & "</h3>"
                product.InnerHtml &= "    <div class=""extras"">"
                If Not IsDBNull(dr("Attachment")) Then
                    product.InnerHtml &= "<a href=""/ProductDoc.ashx?Id=" & dr("Id") & """>"
                    product.InnerHtml &= "Setup Procedure"
                    product.InnerHtml &= "</a>"
                End If
                If Not IsDBNull(dr("CADFile")) Then
                    product.InnerHtml &= "<a href=""/ProductDoc.ashx?Type=CAD&Id=" & dr("Id") & """>"
                    product.InnerHtml &= "CAD File"
                    product.InnerHtml &= "</a>"
                End If
                If Not IsDBNull(dr("BroFile")) Then
                    product.InnerHtml &= "<a href=""/ProductDoc.ashx?Type=Bro&Id=" & dr("Id") & """>"
                    product.InnerHtml &= "Brochure"
                    product.InnerHtml &= "</a>"
                End If
                product.InnerHtml &= "  </div>"
                product.InnerHtml &= "    <p>" & dr("Description") & "</p>"
                product.InnerHtml &= "  </div>"
                product.InnerHtml &= "</div>"
            Next
        End If
    End Sub
End Class
