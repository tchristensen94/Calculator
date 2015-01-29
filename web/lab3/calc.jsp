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
        <title>Calculator</title>
    </head>
    <body>
        
        <%
            Object recResult = request.getAttribute("recArea");
            Object triangleResult = request.getAttribute("triangleArea");
            Object cirlceResult = request.getAttribute("circleArea");
            if(recResult == null) {
                recResult = "";
            }
            if(triangleResult == null) {
                triangleResult = "";
            }
            if(cirlceResult == null) {
                cirlceResult = "";
            }
        %>
        <form id="recCalcForm" name="recCalcForm" method="POST" action='<%= request.getContextPath() + "/CalcController"%>' >
                <label>
                    Length: <input name="length" type="text" id="length" />
                </label><br>
                <label>
                    Width: <input name="width" type="text" id="width" />
                </label><br>
                <label>Area: <input name="result" type="text" id="width" value="<%= recResult %>" disabled />
                </label>
                <input id="calcType" name="calcType" type="hidden" value="rectangle" />
                <input id="submit" name="submit" type="submit" value="Calculate!">
            </form>
        <form id="recCalcForm" name="recCalcForm" method="POST" action='<%= request.getContextPath() + "/CalcController"%>' >
                <label>
                    Radius: <input name="radius" type="text" id="radius" />
                </label><br>
                <label>Area: <input name="result" type="text" id="width" value="<%= cirlceResult %>" disabled />
                </label>
                <input id="calcType" name="calcType" type="hidden" value="circle" />
                <input id="submit" name="submit" type="submit" value="Calculate!">
            </form>
        <form id="triangleForm" name="triangleForm" method="POST" action='<%= request.getContextPath() + "/CalcController"%>' >
                <label>
                    Base: <input name="length" type="text" id="length" />
                </label><br>
                <label>
                    Height: <input name="width" type="text" id="width" />
                </label><br>
                <label>Area: <input name="result" type="text" id="width" value="<%= triangleResult %>" disabled />
                </label>
                <input id="calcType" name="calcType" type="hidden" value="triangle" />
                <input id="submit" name="submit" type="submit" value="Calculate!">
            </form>
    </body>
</html>
