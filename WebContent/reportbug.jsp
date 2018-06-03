<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
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

      <title>Welcome | Reporting Bugs</title>
      <style>
      </style>
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
            <div class="panel-heading">Reporting Bug</div>
            <div class="panel-body">

              <%
	if("error".equals((String)request.getParameter("msg")))
	out.print("<div align=center class=errortext>Field Blank or Some Database Error!</div>");
	%>
                <form id="form1" name="form1" method="post" action="ReportBug">
                  <table class="table">

                    <tr>
                      <td>Product</td>
                      <td>
                        <select name="prodid" class="form-control">
                          <%
		  try{
		  	Connection con=ConnectionProvider.getConnection();
		   	Statement stmt = con.createStatement();
		   	String query = "select * from products";
		   	ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
			{
				out.print("<option value=");
				out.print(rs.getString("prodid")+">");
				out.print(rs.getString("prodname")+" - "+rs.getString("version"));
				out.print("</option>");		
			}
		}catch(Exception e){
			
		}  
		 %>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>Environment</td>
                      <td>
                        <select name="env" class="form-control">
                          <option value="Windows 7">Windows 7</option>
                          <option value="Windows 2000">Windows 2000</option>
                          <option value="Solaris">Solaris</option>
                          <option value="Linux">Linux</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>Type</td>
                      <td>
                        <select name="type" class="form-control">
                          <option value="GUI">GUI</option>
                          <option value="Server">Server</option>
                          <option value="Database">Database</option>
                          <option value="Network">Network</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top">Bug Description </td>
                      <td>
                        <textarea cols="40" rows="8" class="form-control" name="description"></textarea>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2">
                        <input type="hidden" name="authorid" value="<%=(String)session.getAttribute(" loginid ")%>" />
                        <input type="hidden" name="author" value="<%=(String)session.getAttribute(" user ")%>" />
                        <center>
                          <input type="submit" value="Submit" class="btn btn-success" />
                          <input type="reset" value="Reset" class="btn btn-success" />
                        </center>
                      </td>

                    </tr>
                  </table>
                </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Start of footer -->

      <%@include file="footer.jsp" %>

        <!-- End of footer -->

  </body>

  </html>