Imports System.Data

Public Class LinksController
	Inherits ModuleController
	
	
	Public Function getForLayout(location as String) As DataTable
		return RC4.Pull("SELECT * FROM WMALinksLayout WHERE location = '" & location & "' ORDER BY [order] Asc")
	End Function
    
End Class 
