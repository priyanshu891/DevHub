<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome | Administrator</title>
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

        <div class="col-sm-1">
        </div>

        <div class="col-sm-3">
          <div class="panel panel-info">
            <div class="panel-heading">As an Administrator you can</div>
            <div class="panel-body">
              <ul>
                <li>
                  </>View all reported bugs
                  <br/>
                </li>
                <li>Assign bugs to different Technical Experts to fix it.
                  <br/>
                </li>
                <li>Configure different Technical Experts for different Teams for a particular Software Product.</li>
              </ul>
            </div>
          </div>
        </div>

        <div class="col-sm-6">
          <div class="panel panel-info">
            <div class="panel-heading">Menu</div>
            <div class="panel-body">


              <a href="bugsadmin.jsp">View Bugs</a>
              <br/>
              <br/>
              <a href="configexp.jsp">Configure Experts</a>
              <br/>
              <br/>
              <a href="addexpert.jsp">Add Expert</a>
              <br/>
              <br/>
              <a href="logout.jsp">Logout</a>
              <br/>
            </div>
          </div>
        </div>
      </div>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <!-- Start of footer -->

      <%@include file="footer.jsp" %>

        <!-- End of footer -->

  </body>

  </html>