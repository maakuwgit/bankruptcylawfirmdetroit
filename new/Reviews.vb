Imports System
Imports System.IO
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D

Public Module Reviews

	Public Function GetAverageRating()
		Dim dt = RC4.Pull("Select CAST((Sum(Cast(RatingValue As decimal))/Count(*)) AS DECIMAL(16,1)) from RCTestimonials where isApproved=1")
		If dt.Rows.Count = 1 Then
			return dt.Rows(0).item(0)
		Else
			return 0
		End If
	End Function
	
	Public Function GetDecimalWholePart(ByVal number as Decimal)
		return Math.Truncate(number)
	End Function
	
	Public Function GetDecimalFractionalPart(ByVal number as Decimal)
		If Not IsDbNull(number) Then
			return number - GetDecimalWholePart(number)
		Else
			return 0
		End If
	End Function
	
	Public Function AddHalfStar(ByVal number as Decimal)
		return iif(number > .4, true, false)
	End Function
	
	Public Function NumberOfStars(ByVal number as Decimal)
		return GetDecimalWholePart(number)
	End Function
	
	Public Function AverageRatingElement(Optional ShowValue as Boolean = true)
	
		Dim rating = GetAverageRating()
		Dim sb As New StringBuilder
		
		If Not IsDbNull(rating) AndAlso rating > 0 Then
			Dim stars = NumberOfStars(GetDecimalWholePart(rating))
			Dim add_half_star = AddHalfStar(GetDecimalFractionalPart(rating))
			sb.Append("<style>")
			sb.Append(".starability-basic>label.half-star, .starability-basic>label.half-star:before {")
			sb.Append("height: 30px;")
			sb.Append("margin-top:1px;")
			sb.Append("background-image: url(data:image/png;base64,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);")
			sb.Append("}")
			sb.Append(".starability-average-container{margin-top:10px;}")
			sb.Append("</style>")
		
			sb.Append("<div class=""starability-average-container"" title=""" & rating & " star rating"">")
			sb.Append("<fieldset class=""starability-basic"" style=""display:inline-block;"">")
			For value As Integer = 1 To stars
				sb.Append("<label></label>")
			Next
			If add_half_star Then
				sb.Append("<label class=""half-star""></label>")
			End If
			sb.Append("</fieldset>")
			If ShowValue Then
				sb.Append("<span style=""vertical-align: top;font-size:25px;line-height:25px;padding-top: 5px;display: inline-block;padding-left:5px;"">" & rating & "</span>")
			End If
			sb.Append("</div>")
		Else
			sb.Append("<div class=""starability-average-container"" title=""Not enough reviews to average"">")
			sb.Append("<span style=""color:#aaa;font-style:italic;"">Not enough reviews</span>")
			sb.Append("</div>")
		End If
		return sb.ToString()
		
	End Function
	
End Module






