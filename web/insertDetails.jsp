<%-- 
    Document   : insertDetails
    Created on : 11 Aug, 2014, 3:22:36 PM
    Author     : aswin
--%>
<%@ include file="auth_header.jsp" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        <br>
        
        <div class="container">
            <div class="col-sm-8 col-sm-offset-2">
                <h2>Insert Details</h2>
                <% if(request.getParameter("error_msg")!=null){ %>
                <div class="row">
                    <div class="alert alert-danger text-center">
                        
                        <%=request.getParameter("error_msg")%>
                        
                    </div>
                    <br/>
                </div>
                <% } %>
                <% if(request.getParameter("msg")!=null){ %>
                <div class="row">
                    <div class="alert alert-success text-center">
                        
                        <%=request.getParameter("msg")%>
                        
                    </div>
                    <br/>
                </div>
                <% } %>
                <div class="row well">
                    <form method="POST" class="form-horizontal" role="form" action="InsertDetails_Action">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">ID</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="ssid" value="0"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">DESCRIPTION</label>
                            <div class="col-sm-8">
                                <textarea type="text" class="form-control" name="description"
                                       placeholder="Description..." cols="50" rows="6"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">UNIT</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="unit"
                                       placeholder="00"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">RATE</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"
                                       name="rate" placeholder="00.00"/>
                            </div>
                        </div>
                        <div clas="form-group">
                            <div class="col-sm-offset-9 col-sm-3">
                                <button type="submit" class="btn btn-default btn-primary"
                                        name="submit">Insert</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
