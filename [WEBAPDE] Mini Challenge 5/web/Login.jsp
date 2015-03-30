<%-- 
    Document   : SignUp
    Created on : 03 30, 15, 12:15:00 PM
    Author     : Arces
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" 	media="all" href="css/Login.css" />
        <script type = "text/javascript" src = "js/jquery-1.11.2.min.js">
        </script>
        <script type = "text/javascript" src = "js/Login.js">
        </script>
        <title>Welcome!</title>
    </head>
    <body>
        <br/><br/><br/>
        <div id = "login" align = "center">
            <h1 align = "center" id = "loginheader">Log in</h1>
            <div  id = "loginform">
                <form action = "SignUp" method = "post">
                    <br/><br/>
                    <input class = "inputform" type = "text" placeholder = "Username" name = "logusername" required/><br/>
                    <input class = "inputform" type = "password" placeholder = "Password" name = "logpassword" required/><br/>
                    <br/><input class = "inputform" type = "submit"/>
                    <%
                        HttpSession reqSession = request.getSession();
                    %>
                        <h4>Invalid username/password</h4>
                    <%
                        Boolean isTaken = (Boolean) reqSession.getAttribute("isTaken");

                        if (isTaken != null) {
                            if (isTaken) {
                    %>
                        <h4>Sorry, that username is already taken.</h4>
                    <%
                            } else {
                    %>
                        <h4>Sign up successful!</h4>
                    <%
                            }
                        }
                    %>
                </form>
            </div>
        </div>

        <div id = "signup">
            <h1 align = "center" id = "signupheader">Sign up</h1>
            <div  id = "signupform" align = "center">
                <form action = "SignUp" method = "post">
                    <br/><br/>
                    <input class = "inputform" type = "text" placeholder = "Username" name = "signusername" required/><br/>
                    <input class = "inputform" type = "password" placeholder = "Password" name = "signpassword" required/><br/>
                    <br/><input class = "inputform" type = "submit"/>
                </form>
            </div>
        </div>
    </body>
</html>
