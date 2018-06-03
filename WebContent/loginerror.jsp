<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>DevHub | Authentication Error!</title>
    <style>
      body {
        background-image: url("images/background.jpg");
      }
    </style>

    <%@include file="css_script.jsp" %>

  </head>

  <body>

    <!-- Start of Header -->

    <%@include file="header.jsp" %>

      <!-- End of Header -->

      <div class="row">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
          <div class="panel panel-warning">
            <div class="panel-heading">Login Error</div>
            <div class="panel-body">
              <img src="images/bug.jpg" width="134" height="74" />
              <br/> You are not Authorized to view this page.
              <br/> Your have been logged as some other type of User.
              <br /> Re-Login after
              <a href="logout.jsp">Logout</a>
            </div>
            <br/>
            <br/>
            <br/>
            <br/>

            <br/>
            <br/>


          </div>
        </div>
      </div>

      <!-- Start of footer -->

      <%@include file="footer.jsp" %>

        <!-- End of footer -->

  </body>

  </html>