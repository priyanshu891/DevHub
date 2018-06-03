<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

    <style>
      body {
        background-image: url("images/background.jpg");
      }
    </style>

    <%@include file="css_script.jsp" %>

<title>DevHub | Reporting Bugs</title>

</head>
<body>

  	<!-- Start of Header -->

	<%@include file="header.jsp" %>

      <!-- End of Header -->

      <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-3">
          <div class="panel panel-success">
            <div class="panel-heading">User Bug Reporting</div>
            <div class="panel-body">
              <a href="reportbug.jsp">Report A New Bug</a>
              <br/>
              <br/>
              <a href="viewbugs.jsp">View Status</a>
              <br/>
              <br/>
              <a href="logout.jsp">Logout</a>
              <br/>
              <br/>
            </div>
          </div>
        </div>
        <div class="col-sm-7">
          <div class="panel panel-success">
            <div class="panel-heading">Report a Bug</div>
            <div class="panel-body">


              <img src="images/bug.jpg" width="134" height="74" />
              <br/>

              <ul>
                <li>
                  <font color="#ff0000">Select Product, Environment and Type for the Bug being reported by you.</font>
                </li>
              </ul>
              <ul>
                <li>
                  <font color="#ff0000">Try to describe your bug precisely and write the steps to reproduce the bug again.</font>
                </li>
              </ul>
              <ul>
                <li>
                  <font color="#ff0000">Also specify some erroneous behaviour of the program when bug appears. </font>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- Start of footer -->

      <%@include file="footer.jsp" %>

        <!-- End of footer -->

        </body>

  </html>