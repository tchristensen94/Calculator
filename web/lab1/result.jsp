<%-- 
    Document   : result
    Created on : Jan 27, 2015, 1:32:52 PM
    Author     : tim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <% 
            Object result = request.getAttribute("area");
            if(result == null) {
                result = "something went wrong";
            }
        %>
        <h1>Area: <%= result %></h1>
    </body>
</html>
