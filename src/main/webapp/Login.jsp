<%-- 
    Document   : login
    Created on : 14/04/2018, 15:30:44
    Author     : douglas
--%>

<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Pagina Login</title>
        <style type="text/css">
            @import "css/styleLogin.css";
            @import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
        </style>
        <script>
            function validate() {
                var username = document.form.username.value;
                var password = document.form.password.value;

                if (username == null || username == "") {
                    alert("Nome de Usuario Obrigatorio")
                    return false;
                } else if (password == null || password == "") {
                    alert("Senha Obrigatoria");
                    return false;
                }
            }
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="container-fluid">
            <div class="wrapper animated bounce">
                <h1>OGestor.com</h1>
                <hr>
                <form name="form" action="LoginServlet" method="post" onsubmit="return validade()">
                    <label id="icon" for="username"><i class="fa fa-user"></i></label>
                    <input type="text" placeholder="Username" id="username" name="username">
                    <label id="icon" for="password"><i class="fa fa-key"></i></label>
                    <input type="password" placeholder="Password" id="password" name="password">
                    <p style="color:red; text-align: center">
                        <%=(request.getAttribute("errMessage") == null) ? ""
                            : request.getAttribute("errMessage")%>
                    </p>
                    <hr>
                    <input type="submit" value="Login">
                    <hr>
                    <div class="crtacc"><a href="#">Create Account</a></div>
                    <div class="center">

                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
