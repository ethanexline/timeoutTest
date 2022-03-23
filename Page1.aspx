<%@ Page Title="Home Page" Language="VB" AutoEventWireup="true" CodeBehind="Page1.aspx.vb" Inherits="timeoutTest.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link type="text/css" rel="stylesheet" href="Content/bootstrap.min.css" />
        <script src="Scripts/jquery-3.4.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
    </head>
    <body>
        <form runat="server" id="form1">
            <h1>This is the "login"</h1>
            <asp:Button runat="server" ID="btnLogin" Text='Clicking this button represents "logging in"'></asp:Button>
            <span id="Error" style="display: none; color: red; font-weight: bold;">Session Has Expired</span>
        </form>

    </body>

    <script type="text/javascript">
        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) { return pair[1]; }
            }
            return (false);
        }

        window.onload = function () {
            if (getQueryVariable('booted') === "true") {
                document.getElementById('Error').style.display = 'block';
            }
        }
    </script>
</html>

