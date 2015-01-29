<%-- 
    Document   : calc
    Created on : Jan 27, 2015, 2:00:30 PM
    Author     : tim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Calculator</title>
    </head>
    <body>
        
        <%
            Object result = request.getAttribute("area");
            if(result == null) {
                result = "";
            }
        %>
        <form id="recCalcForm" name="recCalcForm" method="POST" action='<%= request.getContextPath() + "/RectangleCalculatorController2"%>' >
                <label>
                    Length: <input name="length" type="text" id="length" />
                </label><br>
                <label>
                    Width: <input name="width" type="text" id="width" />
                </label><br>
                <label>Area: <input name="result" type="text" id="width" value="<%= result %>"/>
                </label>
                <input id="submit" name="submit" type="submit" value="Calculate!">
            </form>
    </body>
</html>
