<%-- 
    Document   : changepassword
    Created on : 13 Oct, 2023, 8:51:25 PM
    Author     : devro
--%>


<% 

if(session.getAttribute("adminid")== null)
{
    response.sendRedirect("../login.jsp");
}
else
{
    

    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">          
            
            
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="background-color:lightsteelblue;min-height: 600px;">
                        <h2 style="color:blue; text-align:center;">Change Password</h2>
                        <form class="form-group" method="post" action="admincontroller.jsp">
                            <table class=" table table-bordered" style="width:60%;margin: auto;">
                            <input type="hidden" name="page" value="changepassword" />
                            <tr>
                                <td>Enter Old Password</td>  
                                <td>
                                    <input type="text" name="oldpassword" class="form-control" placeholder="Enter Old Password"required/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter New Password</td> 
                                <td>
                                  <input type="password" name="newpassword" class="form-control"placeholder="Enter New Password"required /> 
                                </td>
                            </tr>
                            <tr>
                                <td>  Confirm New Password</td> 
                                <td>
                                  <input type="password" name="confirmpassword" class="form-control"placeholder=" Confirm New Password"required /> 
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>  
                                </td>
                            </tr>
                        </table>
                    </form>
                    </div> 
                    
                </div>
              <jsp:include page="footer.jsp"/>
            </div>
                
   </div>
    </body>
</html>
<%

}    
    
%>