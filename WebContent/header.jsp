<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>
  <nav class="navbar navbar-inverse my-navbar">
    <div class="container">
      <div class="navbar-header">
        <a class=" navbar-brand" href="index.jsp">Dev<span class="primary-text">Hub</span>
        </a>
      </div>
      <ul class="nav navbar-nav">
        <li class="active " sytle="background-color:green;">
          <a href="default.jsp">Home</a>
        </li>

        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <span class="glyphicon glyphicon-user"></span> &nbsp;Login
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li>
              <a href="login.jsp?type=Admin">Administrator</a>
            </li>
            <li>
              <a href="login.jsp?type=Expert">Technical Expert</a>
            </li>
            <li>
              <a href="login.jsp?type=User">User Login</a>
            </li>
          </ul>
        </li>
        <li>
          <a href="aboutus.jsp">About Us</a>
        </li>
        <li>
          <a href="contactus.jsp">Contact Us</a>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <%
    String login = (String)session.getAttribute("login");
	if("yes".equals(login))
	{%>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
              <span height="400px" class="glyphicon glyphicon-user">&nbsp;
                <%=(String)session.getAttribute("user")%>
              </span>
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">

              <li>
                <a href="logout.jsp">Logout</a>
              </li>
            </ul>
          </li>
          <%}
	else{
	%>
            <li>
              <a href="signup.jsp">
                <span class="glyphicon glyphicon-user"></span> Sign Up</a>
            </li>
            <%} %>
      </ul>
    </div>
  </nav>
</body>

</html>