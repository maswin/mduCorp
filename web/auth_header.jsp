<%-- 
    Document   : auth_header
    Created on : 11 Aug, 2014, 5:36:03 PM
    Author     : aswin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
<!DOCTYPE html>
<%      
    if(session.getAttribute("LOGGED_IN")==null){
        response.sendRedirect("index.jsp?error_msg=Please Login to Continue");
    }
%>
<div class="container">
      <div id="page-header" class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle"
                  data-toggle="collapse" data-target="#header-nav-collapse-menu">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"
             href="#">Madurai Corporation</a>
        </div>

        <div class="navbar-collapse collapse" id="header-nav-collapse-menu">
            
          <ul class="navbar-nav nav navbar-right">
            <li><a href="Logout">Logout</a></li>
        
            <li><a href="viewAllItem.jsp">View Item</a></li>
       
            <li><a href="insertDetails.jsp">Insert Item</a></li>
          </ul>
        </div>
      </div>
    </div>

    

    
  </div>
