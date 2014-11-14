<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>

<html>
    <head>
        <title>Login</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="header.jsp" %> 
    
        
    </head>
    <body>
        <br><br><br><br>
        
        <div class="container">
            <div class="col-sm-4 col-sm-offset-4">
                <h2>Login</h2>
                <% if(request.getParameter("error_msg")!=null){ %>
                <div class="row">
                    <div class="alert alert-danger text-center">
                        
                        <%=request.getParameter("error_msg")%>
                       
                    </div>
                    <br/>
                </div>
                 <% } %>
                 <% if(request.getParameter("success_msg")!=null){ %>
                <div class="row">
                    <div class="alert alert-success text-center">
                        
                        <%=request.getParameter("success_msg")%>
                       
                    </div>
                    <br/>
                </div>
                 <% } %>
                <div class="row well">
                    <form method="POST" class="form-horizontal" role="form" action="LoginCheck">
                        <div class="form-group">
                            <label for="field.login" class="col-sm-4
                                   control-label">Username</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="field.login" name="username"
                                       placeholder="Username"
                                       />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="field.passwd" class="col-sm-4 control-label">Password</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="field.passwd"
                                       name="password" placeholder="Password"/>
                            </div>
                        </div>
                        <div clas="form-group">
                            <div class="col-sm-offset-9 col-sm-3">
                                <button type="submit" class="btn btn-default btn-primary"
                                        name="submit">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>     
    </body>
</html>
