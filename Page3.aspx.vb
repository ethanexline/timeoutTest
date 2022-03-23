Public Class Page3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate")
        Response.AppendHeader("Pragma", "no-cache")
        Response.AppendHeader("Expires", "0")
    End Sub

End Class