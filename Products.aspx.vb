Imports System.Data.SqlClient
Imports System.Data

Partial Class Products
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Categories()

        Dim dt As DataTable = RC4.Pull("Select * from RCProductLine order by Id")


        For Each dr As DataRow In dt.Rows
            If Request("Line") Is Nothing Then
                Response.Redirect("/Products.aspx?Line=" & dr("Id"))
            End If
            If Request("Line") = dr("Id") Then

                LineTitle.InnerHtml = dr("Name")

                LineDescription.InnerHtml = dr("Description").ToString()
				
                ' Dim dtCat As DataTable = RC4.Pull("Select Distinct Id, Label, Name from RCProductCat where LineId=" & CInt(dr("Id")) &  " order by Name asc") 
                ' For Each drC As DataRow In dtCat.Rows

                Dim dtm As DataTable = RC4.Pull("SELECT * from RCProduct where LineId=" & CInt(dr("Id")) & " order by Name asc")
                If dtm IsNot Nothing AndAlso dtm.Rows.Count > 0 Then
                    Cats.InnerHtml &= "<table class=""products full product-table left"">"
                End If

                For Each dr2 As DataRow In dtm.Rows


                    Cats.InnerHtml &= "<tr class=""padboth-small"">"
                    Cats.InnerHtml &= "  <td class=""product-image"">"
                    If Not IsDBNull(dr2("ImgURL")) Then
                        Cats.InnerHtml &= "    <a href=""/Product.aspx?Id=" & dr2("Id") & """ alt=""Product Picture"" />"
                        Cats.InnerHtml &= "      <img src=""" & dr2("ImgURL") & """ class=""product-image"" />"
                        Cats.InnerHtml &= "    </a>"
                    Else
                        Cats.InnerHtml &= "    <a href=""/Product.aspx?Id=" & dr2("Id") & """ alt=""Product Picture"" />"
                        Cats.InnerHtml &= " <img src=""/Product.ashx?Id=" & dr2("Id") & """  class=""product-image"" />"
                        Cats.InnerHtml &= "    </a>"
                    End If
                    Cats.InnerHtml &= "  </td>"

                    Cats.InnerHtml &= "  <td data-title=""Name"" class=""product-name"">"
                    If Not IsDBNull(dr2("Attachment")) Then
                        Cats.InnerHtml &= "<a href=""/ProductDoc.ashx?Id=" & dr2("Id") & """>"
                        Cats.InnerHtml &= "" & dr2("Name") & ""
                        Cats.InnerHtml &= "</a>"
                    Else
                        Cats.InnerHtml &= "<a href=""/Product.aspx?Id=" & dr2("Id") & """>"
                        Cats.InnerHtml &= " " & dr2("Name") & ""
                        Cats.InnerHtml &= "</a>"
                    End If
                    Cats.InnerHtml &= "  &nbsp;</td>"

                    'Cats.InnerHtml &= "    <td data-title=""Description"" class=""product-description""><p class=""truncate"">" & dr2("Description") & " </p></td>"

                    Cats.InnerHtml &= "  </tr>"


                Next

            Else




            End If

        Next
        Cats.InnerHtml &= "</table>"
    End Sub
    Private Sub Categories()
        Dim dt As DataTable = RC4.Pull("Select * from RCProduct WHERE LineId=14 order by Name Desc") 'Order by Descending only because they are being appended to the beginning
        For Each dr As DataRow In dt.Rows
            mainNavProductCats.InnerHtml = "<li><a href=""/Product.aspx?Id=" & dr("Id") & """>" & dr("Name") & "</a></li>" & mainNavProductCats.InnerHtml
        Next
    End Sub
    Protected Sub Featured_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dtProduct As DataTable = RC4.Pull("Select * from RCProduct where bHome=1")
        If dtProduct.Rows.Count = 1 Then

        ElseIf dtProduct.Rows.Count >= 2 Then

        End If

        For Each dr As DataRow In dtProduct.Rows

            product.InnerHtml &= "<div class=""featured-product"">"

            product.InnerHtml &= "  <a href=""/Product.aspx?Id=" & dr("Id") & """>"
            product.InnerHtml &= "      <img class=""featuredimg"" src=""/images/featured.png"" />"
            product.InnerHtml &= "      <img class=""featuredproductimg"" src=""/Product.ashx?Id=" & dr("Id") & """>"
            product.InnerHtml &= "  </a>"
            product.InnerHtml &= "</div>"
        Next


    End Sub



End Class
