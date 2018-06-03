<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

		<%@include file="css_script.jsp" %>

			<style>
				body {
					background-image: url("images/background.jpg");
				}
			</style>
			<title>DevHub | Bug Detail</title>
	</head>

	<body>

		<!-- Start of Header -->

		<%@include file="header.jsp" %>

			<!-- End of Header -->


			<div class="row">
				<div class="col-sm-1">
				</div>
				<div class="col-sm-10">
					<div class="panel panel-success">
						<div class="panel-heading">Your Bug Detail</div>
						<div class="panel-body">
							<table class="table">
								<%
try{
	Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from bug where bugid="+(String)request.getParameter("bugid");
	ResultSet rs = stmt.executeQuery(query);
	while(rs.next()){
	out.print("<tr><td bgcolor=#F2F2F2>Bug ID</td><td>"+rs.getString("bugid")+"</td><td bgcolor=#F2F2F2>Author</td><td>"+rs.getString("author")+"</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Product Name</td><td colspan=3>"+rs.getString("prodname")+"</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Environment</td><td>"+rs.getString("env")+"</td><td bgcolor=#F2F2F2>Type</td><td>"+rs.getString("type")+"</td></tr>");
	out.print("<tr><td colspan=4 bgcolor=#F2F2F2>Description</td></tr>");	
	out.print("<tr><td colspan=4 >"+rs.getString("description")+"</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Priority</td><td colspan=3>"+rs.getString("priority")+"</td></tr>");
	
	out.print("<tr><td bgcolor=#F2F2F2>Status</td><td>"+rs.getString("status")+"</td><td bgcolor=#F2F2F2>Responsible</td><td>"+rs.getString("assign_to")+"</td></tr>");
	}
	rs.close();
	stmt.close();
	con.close();
}catch(Exception e){
	System.out.print(e);
}  
%>


									<tr>
										<table class="table">
											<tr>
												<td colspan="2" bgcolor="#0054A8" class="whitetext">Audit Trail</td>
											</tr>
											<tr bgcolor=#F2F2F2>
												<td class="smalltext" width="150">Expert</td>
												<td class="smalltext">Comments</td>
											</tr>
											<%

try{
	Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from solutions where bugid="+(String)request.getParameter("bugid");
	ResultSet rs = stmt.executeQuery(query);
	while(rs.next()){
	out.print("<tr>");
	out.print("<td class=smalltext>"+rs.getString("expert")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("soln")+"</td>");
	out.print("</tr>");	
	}
	rs.close();
	stmt.close();
	con.close();
}catch(Exception e){
	System.out.print(e);
}  

%>
										</table>
									</tr>
							</table>
							<div align="center">
								<hr width="100" />
								<a href="viewbugs.jsp">Back</a>
								<hr width="100" />
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Start of footer -->

			<%@include file="footer.jsp" %>

				<!-- End of footer -->

	</body>

	</html>