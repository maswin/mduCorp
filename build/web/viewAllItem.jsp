<%-- 
    Document   : viewAllItem
    Created on : 22 Aug, 2014, 11:25:06 AM
    Author     : aswin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Db.DBConnection"%>
<%@ include file="auth_header.jsp" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Items</title>
    </head>
    <body>
        <div class="container">
            <div class="col-sm-8 col-sm-offset-2">
        <h1>All Items</h1>
        <table class="table">
            <tr>
                <th>Unit</th>
                <th>Description</th>
                <th>Unit</th>
                <th>Rate</th>
            </tr>
        <%
            DBConnection db = new DBConnection();
            Statement st = db.con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM item");
            while(rs.next()){
        %>
        <tr>
            <td><%=rs.getString("ssno")%></td>
            <td><%=rs.getString("description")%></td>
            <td><%=rs.getString("unit")%></td>
            <td><%=rs.getString("rate")%></td>
        </tr>
        
        <% } %>
        </table>
            </div>
        </div>
    </body>
</html>
