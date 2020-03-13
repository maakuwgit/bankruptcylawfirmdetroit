Imports System.Data

Partial Class ProductCategory
    Inherits System.Web.UI.Page


    Private Shared Property InnerHtml As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Dim dt As DataTable = RC4.Pull("SELECT Distinct Label, LineId, Id AS CatId2, Name from vProductCat where bComm = 1 order by Label Asc")

        For Each drL As DataRow In dt.Rows
            Markets.InnerHtml &= "<table class=""product-table full left simpleTable"">"
            Markets.InnerHtml &= "<h3>" & drL("Name") & "</h3>"
            Markets.InnerHtml &= "<thead>"
            Markets.InnerHtml &= "<tr>"
            'Markets.InnerHtml &= "<th class=""col1 displaynone"">Image</th>"
            Markets.InnerHtml &= "<th  data-sort=""string"" class=""col13"">Name</th>"
            Markets.InnerHtml &= "<th  data-sort=""int"" class=""col4"">Output</th>"
            Markets.InnerHtml &= "<th  data-sort=""int"" class=""col7"">Freq</th>"
            Markets.InnerHtml &= "<th   data-sort=""int"" class=""col6"">Pulse</th>"
            Markets.InnerHtml &= "<th  data-sort=""int"" class=""col8"">Duty</th>"
            Markets.InnerHtml &= "<th  data-sort=""int"" class=""col9"">Eff</th>"
            Markets.InnerHtml &= "<th  data-sort=""int"" class=""col10"">Voltage</th>"
            Markets.InnerHtml &= "<th  data-sort=""string"" class=""col11 hide-tp-only"">Matching</th>"
            Markets.InnerHtml &= "<th  data-sort=""string"" class=""col12 hide-tp-only"">Pkg.</th>"
            Markets.InnerHtml &= "</tr>"
            Markets.InnerHtml &= "</thead>"
            Dim dtm As DataTable = RC4.Pull("SELECT * from vProductCat where CatId =" & drL("CatId2") & " and bComm = 1 order by PName Asc")

            For Each dr As DataRow In dtm.Rows

                Markets.InnerHtml &= "<tr>"
                'markets.InnerHtml &= "  <td class=""col1"">"
                'markets.InnerHtml &= "    <a target=""_blank"" href=""/Product.ashx?Id=" & dr("Id") & """ alt=""Product Picture"" />View</a>"
                'markets.InnerHtml &= "  </td>"
                Markets.InnerHtml &= "  <td data-title=""Name"" class=""col13"">"
                If Not IsDBNull(dr("Attachment")) Then
                    Markets.InnerHtml &= "<a href=""/ProductDoc.ashx?Id=" & dr("pId") & """>"
                    Markets.InnerHtml &= "    <strong>" & dr("PName") & "</strong>"
                    Markets.InnerHtml &= "</a>"
                Else
                    Markets.InnerHtml &= "    <strong>" & dr("PName") & "</strong></td>"
                End If

                Markets.InnerHtml &= "    <td data-title=""Output"" class=""col4"">" & dr("Output") & " </td>"
                Markets.InnerHtml &= "    <td data-title=""Freq"" class=""col7"">" & dr("Freq") & "</td>"
                Markets.InnerHtml &= "    <td data-title=""Pulse""class=""col6"">" & dr("Pulse") & "</td>"
                Markets.InnerHtml &= "    <td data-title=""Duty"" class=""col8"">" & dr("Duty") & "</td>"
                Markets.InnerHtml &= "    <td data-title=""Eff"" class=""col9"">" & dr("Eff") & "</td>"
                Markets.InnerHtml &= "    <td data-title=""Voltage"" class=""col10"">" & dr("Voltage") & "</td>"
                Markets.InnerHtml &= "    <td data-title=""Matching"" class=""col11 hide-tp-only"">" & dr("Matching") & "</td>"
                Markets.InnerHtml &= "    <td data-title=""Pkg."" class=""col12 hide-tp-only"">"
                If Not IsDBNull(dr("BroFile")) Then
                    Markets.InnerHtml &= "<a href=""/ProductDoc.ashx?Type=Bro&Id=" & dr("pId") & """>"
                    Markets.InnerHtml &= "    <strong>" & dr("PkgName") & "</strong>"
                    Markets.InnerHtml &= "</a></td>"
                Else
                    Markets.InnerHtml &= "    <strong>" & dr("PkgName") & "</strong></td>"
                End If
                Markets.InnerHtml &= "  </tr>"
                'markets.InnerHtml &= "</div>"

            Next

        Next
        Markets.InnerHtml &= "</table>"
    End Sub
End Class

