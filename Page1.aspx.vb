Imports System.Web.Security

Public Class Page1
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate")
        Response.AppendHeader("Pragma", "no-cache")
        Response.AppendHeader("Expires", "0")

        If Request.QueryString("booted") = "true" Then
            FormsAuthentication.SignOut()
        ElseIf Request.QueryString("signout") = "true" Then
            FormsAuthentication.SignOut()
        End If
    End Sub

    Protected Sub BtnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        FormsAuthentication.Initialize()
        'evaluate whether user is a real user
        Dim authenticatedUser = True

        If authenticatedUser Then
            FormsAuthentication.RedirectFromLoginPage("user", False)
        Else
            'say that there's no such user and don't redirect
        End If
    End Sub
End Class