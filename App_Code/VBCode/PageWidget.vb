Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing.Drawing2D
Imports System.Drawing
Imports System.IO

Public Module PromoWidget
	
	Public Function All()
		return RC4.Pull("Select * from RCPromo where startdt <= '" & Today.Date.ToShortDateString & "' and EndDT >= '" & Today.Date.ToShortDateString & "'")
	End FUnction
	
	Public Function HasPromotions()
		Dim dt As DataTable = RC4.Pull("Select * from RCPromo where startdt <= '" & Today.Date.ToShortDateString & "' and EndDT >= '" & Today.Date.ToShortDateString & "'")
		return dt.Rows.Count > 0 
	End FUnction
	
End Module

Public Module GalleryWidget

	Public Function GetCategories()
			return RC4.Pull("Select * from RCGallery2Cat order by Seq Asc")   
	End Function
	
	Public Function GetGalleries()
		return RC4.Pull("Select * from RCGallery2 order by Seq Asc")   
	End Function
	
	Public Function GetGalleriesForCategory(Id as Integer)
		return RC4.Pull("Select * from RCGallery2 Where CatId = " &  Id & " order by Seq Asc")   
	End Function
	
	Public Function GetImagesForGallery(Id as Integer)
		return RC4.Pull("Select * from RCGallery2Image Where GalleryId = " & Id & " isDeleted =  'N' Order By Seq Asc")   
	End Function
	
	Public Function GetAllImages()
		return RC4.Pull("Select * from RCGallery2Image Where isDeleted =  'N' Order By Seq Asc")   
	End Function
	
	Function GetImagesForCategory(Id as Integer)
		return RC4.Pull("Select * From RCGallery2Image gi INNER JOIN RCGallery2 g ON gi.galleryid = g.id Where g.catid = " & Id & " Order By gi.Seq Asc")
	End Function
	
End Module

Public Module NewsWidget

	Public Function Top(num as Integer) As DataTable
		return RC4.Pull("Select Top " & num & " * from RCNews where PubDate <= '" & Today.Date.ToShortDateString & "' order by PubDate desc")
    End Function
    
    Public Function Categories() As DataTable
		return RC4.Pull("Select * from RCNewsCat order by seq, id")
    End Function
    

End Module

Public Module LinksWidget
	
	Public Function getLinksForCategory(catid as Integer) As DataTable
		return RC4.Pull("Select * from RCLink where CatId = " & catid)
	End Function

End Module

Public Class GlobalVariables
  Public Shared Property pageImageName As String
End Class

Public Module PageWidget

	Public function displayRandomReview()
		Dim sb As New StringBuilder
		Dim dt As DataTable = RC4.Pull("Select TOP 1 * from RCTestimonials where isApproved=1 ORDER BY NEWID()")
		If dt.Rows.Count > 0 Then
			sb.Append("<div class=""quote random"">")
			sb.Append("<div class=""text retroshadow"">""" & dt.Rows(0)("quote") & """</div>")
            sb.Append("<small>" & dt.Rows(0)("firstName") & " " & dt.Rows(0)("LastName") & "")
			if (dt.Rows(0)("Company")).Length > 0 then sb.Append(", " & "&nbsp;" & dt.Rows(0)("Company") ) 
			if (dt.Rows(0)("City")).ToString.Length > 0 then sb.Append(", " & "&nbsp;" & dt.Rows(0)("City")) 
			if (dt.Rows(0)("State")).ToString.Length > 0 then sb.Append(", " & "&nbsp;" & dt.Rows(0)("State")) 
            sb.Append("</small></div>")
			return sb.ToString
		Else
			return "<p></p>"
		End If
    End Function
    
	Public Function displayFeaturedPromotion()
		Dim sb As New StringBuilder
		Dim dt As DataTable = RC4.Pull("Select *, FORMAT ( StartDt, 'd', 'en-US' ) As 'StartDt2' from RCPromo Where isFeatured = 1 Order By StartDt Desc")
		sb.Append("<div class=""latest promo"">")
		If dt.Rows.Count > 0 Then
		 	sb.Append("<small>")
		 	sb.Append(dt.Rows(0)("StartDt2"))
		 	sb.Append("</small>")
		 	sb.Append("<h3>")
		 	sb.Append(dt.Rows(0)("Name"))
		 	sb.Append("</h3>")
		 	sb.Append("<div>")
		 	sb.Append(TruncateStringAndRemoveHTML(WordLimit(dt.Rows(0)("Desc"), 100)).Replace(vbCrLf, "<br />"))
		 	sb.Append("</div>")
		Else
			sb.Append("<p>")
		 	sb.Append("Check back again for our world famous promotions")
		 	sb.Append("</p>")
		End If
		sb.Append("</div>")
		return sb.ToString
	End Function
	
	Public Function displayLatestBlogEntry(Optional CatId as Integer = 0)
		Dim sb As New StringBuilder
		Dim dt As DataTable
		if(	CatId > 0 )
			dt = RC4.Pull("Select Top 3 Title, Contents, Description, Slug, PubDate from RCNews Where PubDate <= GETDATE() And CatId = " & CatId & " Order By [PubDate] desc, Id")
		Else
			dt = RC4.Pull("Select Top 3 Title, Contents, Description, Slug, FORMAT ( PubDate, 'd', 'en-US' ) As 'PubDate' from RCNews Where PubDate <= GETDATE() Order By [PubDate] desc, Id")
		End If
		sb.Append("<div class=""latest blog"">")
		If dt.Rows.Count > 0 Then
		For Each dr66 as DataRow in dt.Rows
		Dim PDate as Date
		Dim PDate2 as String
		PDate = (dr66("PubDate"))
		PDate2 = PDate.ToString("MM/dd/yyyy")
		 	sb.Append("<small>")
		 	'sb.Append(dr66("PubDate"))
		 	sb.Append(PDate2)
		 	sb.Append("</small>")
		 	sb.Append("<h3>")
		 	sb.Append(dr66("Title"))
		 	sb.Append("</h3>")
		 	sb.Append("<div>")
		 	'sb.Append(TruncateStringAndRemoveHTML(WordLimit(dt.Rows(0)("Contents"), 100)))
		 	sb.Append(dr66("Description"))
		 	sb.Append("<p style=""margin-top:1rem;""><a href=""/"">Read more ></a></p>")
		 	sb.Append("</div>")
		Next
		Else
			sb.Append("<p>")
		 	sb.Append("Check back again for first blog")
		 	sb.Append("</p>")
		End If
		sb.Append("</div>")
		return sb.ToString
	End Function
    
End Module
