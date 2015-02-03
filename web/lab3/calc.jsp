<%-- Document : calc Created on : Jan 27, 2015, 2:00:30 PM Author : tim --%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Calculator</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
            </head>

            <body>
                <c:set var="circleArea" value="${requestScope.circleArea}"/>
                <c:set var="triangleArea" value="${requestScope.triangleArea}"/>
                <c:set var="recArea" value="${requestScope.recArea}"/>
                    <div class="row text-center">
                        <div class="col-md-4">
                            <form id="recCalcForm" name="recCalcForm" method="POST" action='<%= request.getContextPath() + "/CalcController"%>'>
                                <div class="form-group">
                                <label>
                                    Length:
                                    
                                
                                    <input name="length" type="text" id="length" class="form-control" />
                                </label>
                                </div>
                                <div class="form-group">
                                <label>
                                    Width:
                                    
                                
                                    <input name="width" type="text" id="width" class="form-control"/>
                                </label>
                                </div>
                                <div class="form-group">
                                <label>Area:
                                    
                                
                                    <input name="result" type="text" id="width" value="${recArea}" class="form-control"disabled />
                                </label></div>
                                <input id="calcType" name="calcType" type="hidden" value="rectangle" />
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                        </div>
                        <div class="col-md-4">
                            <form id="recCalcForm" name="recCalcForm" method="POST" action='<%= request.getContextPath() + "/CalcController"%>'>
                                <div class="form-group">
                                <label>
                                    Radius:
                                    <input name="radius" type="text" class="form-control" id="radius" />
                                </label>
                                </div>
                                <div class="form-group">
                                <label>Area:
                                    <input name="result" type="text" class="form-control" id="width" value="${circleArea}" disabled />
                                </label>
                                </div>
                                <input id="calcType" name="calcType" type="hidden" value="circle" />
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                        </div>
                        <div class="col-md-4">
                            <form id="triangleForm" name="triangleForm" method="POST" action='<%= request.getContextPath() + "/CalcController"%>'>
                                <div class="form-group">
                                <label>
                                    Base:
                                    <input name="length" type="text" class="form-control" id="length" />
                                </label>
                                </div>
                                <div class="form-group">
                                <label>
                                    Height:
                                    <input name="width" type="text" id="width" class="form-control"/>
                                </label>
                                </div>
                                <div class="form-group">
                                <label>Area:
                                    <input name="result" type="text" id="width" class="form-control" value="${triangleArea}" disabled />
                                </label>
                                </div>
                                <input id="calcType" name="calcType" type="hidden" value="triangle" /><br />
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                        </div>
                    </div>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
            </body>

            </html>
