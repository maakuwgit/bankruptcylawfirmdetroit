Imports System.Data

Public Class FAQController
	Inherits ModuleController
	
	Public Function Featured() As DataTable
			return RC4.Pull("SELECT * FROM RCFaq WHERE Featured = 1 ORDER BY Seq Asc")
    End Function
    
    Public Function All() As DataTable
			return RC4.Pull("SELECT * FROM RCFaq ORDER BY Seq Asc")
    End Function
    
End Class 