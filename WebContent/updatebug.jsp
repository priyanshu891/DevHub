<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Welcome - Updating Bug</title>
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
				<div class="col-sm-10">
					<div class="panel panel-success">
						<div class="panel-heading">Bug Status</div>
						<div class="panel-body">
							<table class="table">
								<center>You can update Priority, Status and Responsible Expert for this Bug.</center>
								<form name="form" method="post" action="updatebug1.jsp">
									<input type="hidden" name="bugid" value="<%=(String)request.getParameter(" bugid ")%>" />


									<tr bgcolor="#0054A8" class="whitetext" align="center">
										<td colspan="4">Bug Detail</td>
									</tr>
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
	
	out.print("<tr bgcolor=#F2F2F2><td>&nbsp;</td><td>Current Stage</td><td>New Stage</td><td>&nbsp;</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Priority</td><td>"+rs.getString("priority")+"</td>");
	out.print("<td>");
	out.print("<select name=priority class='form-control't>");
	out.print("<option value='Low'>Low</option><option value='Medium'>Medium</option><option value='High'>High</option>");
	out.print("</select>");	
	out.print("</td><td>&nbsp;</td></tr>");
	
	out.print("<tr><td bgcolor=#F2F2F2>Status</td><td>"+rs.getString("status")+"</td>");
	out.print("<td>");
	out.print("<select name=status class='form-control'>");
	out.print("<option value='New'>New</option><option value='Assigned'>Assigned</option><option value='Fixed'>Fixed</option><option value='Closed'>Closed</option>");
	out.print("</select>");	
	out.print("</td><td>&nbsp;</td></tr>");
	
	out.print("<tr><td bgcolor=#F2F2F2>Responsible</td><td>"+rs.getString("assign_to")+"</td>");
	out.print("<td>");
	out.print("<select name=assign_to class='form-control'>");
	
	query = "select loginid, name from login where loginid in (select expertid from experts where prodid='"+rs.getString("prodid")+"')";
	System.out.print(query);
	ResultSet rs1 = stmt.executeQuery(query);
	while(rs1.next()){
		out.print("<option value="+rs1.getString(1)+">"+rs1.getString(2)+"</option>");		
	}	
	rs1.close();
	out.print("</select>");	
	out.print("</td><td>&nbsp;</td></tr>");
	}
	rs.close();
	stmt.close();
	con.close();
}catch(Exception e){
	System.out.print(e);
}  
%>
										<tr>
											<td colspan="4" align="center">
												<input type="submit" name="update" value="Update" class="btn btn-success" />
											</td>
										</tr>
								</form>

								<tr>
									<table class="table table-responsive">
										<tr>
											<td colspan="2" bgcolor="#0054A8" class="whitetext">Audit Trail</td>
										</tr>
										<tr bgcolor=#F2F2F2>
											<td class="f" width="150">Expert</td>
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
								<a href="bugsadmin.jsp">Back</a>
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