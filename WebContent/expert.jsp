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

			<title>DevHub | Expert</title>
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
						<div class="panel-heading">This is List of all Reported Bugs assigned to you</div>
						<div class="panel-body">
							<font color="#cc9933">
								Find out the possible causes, try to fix it and provide satisfactory comments.
							</font>
							<table class="table">
								<tr bgcolor="#0054A8" class="whitetext" align="center">
									<td>Bug ID</td>
									<td>Product</td>
									<td>Env.</td>
									<td>Type</td>
									<td>Synopsis</td>
									<td>Status</td>
									<td>&nbsp;</td>
								</tr>
								<%
try{
	Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from bug where assign_to='"+(String)session.getAttribute("loginid")+"'";
	ResultSet rs = stmt.executeQuery(query);
	int i=2;
	while(rs.next()){
	if(i%2==0)
	out.println("<tr bgcolor=#CEE7FF align=center>");
	else
	out.println("<tr bgcolor=#E8F3FF align=center>");
	i++;
	out.print("<td class=smalltext>"+rs.getString("bugid")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("prodname")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("env")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("type")+"</td>");
	out.print("<td class=smalltext>");
	String des=rs.getString("description");
	if(des.length()>40)
	des=des.substring(0,40)+". . .";
	out.println(des);
	out.print("</td>");
	out.print("<td class=smalltext>"+rs.getString("status")+"</td>");
	out.print("<td class=smalltext><a href='bugcomment.jsp?bugid="+rs.getString("bugid")+"'>Comment</a></td>");	
	out.println("</tr>");		
	}
	
	out.print("<tr><td colspan='6'><center> Total Bugs: "+(i-2)+"<center></td></tr>");
}catch(Exception e){
	System.out.print(e);
}  
%>
							</table>
						</div>
					</div>
				</div>
			</div>

			<!-- Start of footer -->

			<%@include file="footer.jsp" %>

				<!-- End of footer -->

	</body>

	</html>