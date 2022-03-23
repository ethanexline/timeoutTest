<%@ Page Title="Home Page" Language="VB" AutoEventWireup="true" CodeBehind="Page2.aspx.vb" Inherits="timeoutTest.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link type="text/css" rel="stylesheet" href="Content/bootstrap.min.css" />
        <script src="Scripts/jquery-3.4.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>

        <script src="js/timeout.js"></script>
    </head>
    <body>
        <h1>This is the everything behind the login</h1>
        <a href="Page3.aspx">Simulate Navigation</a>

        <%--this modal must be placed at the bottom of each page that needs a timeout--%>
        <div id="sessionEndingModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content" style="width: 350px;">
                    <div class="modal-header" style="display: flex; justify-content: space-between;">
                        <h3 style="margin-right: 30px;" class="modal-title">Session Timeout Warning</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <p>You're being timed out due to inactivity.</p>
                        <p>Please choose to stay signed in or to logoff.</p>
                        <p>Otherwise, you will be logged off automatically.</p>
                    </div>

                    <div class="modal-footer">
                        <button id="LogOffButton" onclick="signOut();" class="btn btn-light">Log Off</button>
                        <button id="StayLoggedIn" onclick="dismissModal();" class="btn btn-primary">Stay Logged In (10)</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
