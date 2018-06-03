<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*, javax.servlet.*" errorPage="" %>
  <%
String login1 = (String)session.getAttribute("login");
if("yes".equals(login1)){
	RequestDispatcher rd=null;
	
	if("Admin".equals((String)request.getParameter("type")) && "Admin".equals((String)session.getAttribute("type")))
		rd=request.getRequestDispatcher("admin.jsp");
	else if("Expert".equals((String)request.getParameter("type")) && "Expert".equals((String)session.getAttribute("type")))
		rd=request.getRequestDispatcher("expert.jsp");
	else if("User".equals((String)request.getParameter("type")) && "User".equals((String)session.getAttribute("type")))
		rd=request.getRequestDispatcher("user.jsp");
	else
		rd=request.getRequestDispatcher("loginerror.jsp");
	rd.forward(request, response);	
}
else{
%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

      <title>Welcome : Login</title>
      <style>
        body {
          background-image: url("images/background.jpg");
        }
      </style>
    <%@include file="css_script.jsp" %>
    </head>

    <body>


      <%@include file="header.jsp" %>

<div  class="row">		
<div class="col-sm-2">		</div>	
	<%
	if("Admin".equals((String)request.getParameter("type"))){
	out.println("<div class='col-sm-3'><div class='panel panel-info'><div class='panel-heading'>Sign in as Administrator</div>");
	out.println("<div class='panel-body'>An Administrator can assign various reported bugs to different Technical Experts and update the status of bugs.</div></div></div>");
	
	}
	else if("Expert".equals((String)request.getParameter("type"))){
	out.println("<div class='col-sm-3'><div class='panel panel-info'><div class='panel-heading'>Sign in as Technical Expert</div>");
	out.println("<div class='panel-body'>A Technical Expert can give comments on the Reported Bugs and try to fix them.</div></div></div>");
	
	
	}
	else if("User".equals((String)request.getParameter("type"))){
	out.println("<div class='col-sm-3'><div class='panel panel-info'><div class='panel-heading'>Sign in Reporting Bugs</div>");
	out.println("<div class='panel-body'>A Normal User can sign in for Reporting Bugs to the Sofware Management Team.");
	out.println("<br>New User Please <a href=signup.jsp>Signup</a></div></div></div>");
	}	
	%>


<div class="col-sm-5">
<div class="panel panel-info">
<div class="panel-heading">Login </div>
<div class="panel-body">
<form id="form" name="form" method="post" action="Login">
	<%
		if("loginerror".equals((String)request.getParameter("msg")))
		out.println("<div  align=center><font color='red'>Invalid Login ID or Password.</font></div>");
		%>  
      <table class="table table-responsive">
	   <tr>
          <td><label for="usr">Login Id</label></td>
          <td><input type="text" name="loginid" class="form-control"/></td>
        </tr>
        <tr>
          <td><label for="pwd">Password</label></td>
          <td><input type="password" name="password" class="form-control"/></td>
        </tr>
        <tr>
          <td>Type</td>
          <td><%=(String)request.getParameter("type")%>
		  <input type="hidden" name="type" value="<%=(String)request.getParameter("type")%>" />        </tr>
		
        <tr>
          <td colspan="2" align="center">
		  <input type="submit" name="Submit" value="Submit" class="btn btn-primary"  />
		  <input type="reset" name="Reset" value="Reset" class="btn btn-primary" />		  </td>
          </tr>
      </table>
        </form>
       </div> 
       </div>
       </div>
       <br/>
      
       </div>
   <br/><br/><br/><br/>
   <br/><br/><br/>


        <%@include file="footer.jsp" %>

    </body>

    </html>
    <%}%>