<%-- 
    Document   : Home
    Created on : 15/04/2018, 15:49:07
    Author     : douglas
--%>

<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Home</title>
    </head>
    <body>
    <center><h2>Home Page</h2></center>
    Welcome <%=request.getAttribute("userName")%> <!-- Refer to the video to understand how this works -->
    <div style="text-align: right"><a href="LogoutServlet">Logout</a></div>
</body>
</html>
