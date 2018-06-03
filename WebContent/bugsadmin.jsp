<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

		<title>DevHub | Bugs List</title>

		<%@include file="css_script.jsp" %>

			<style>
				body {
					background-image: url("images/background.jpg");
				}
			</style>
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
								<thead>
									<tr>
										<th>Bug ID</th>
										<th>Product</th>
										<th>Env.</th>
										<th>Type</th>
										<th>Synopsis</th>
										<th>Status</th>
									</tr>
								</thead>
								<%
try{
	
	Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from bug order by bugid desc";
	ResultSet rs = stmt.executeQuery(query);
	int i=2;
	while(rs.next()){
	if(i%2==0)
	out.println("<tr bgcolor=#CEE7FF >");
	else
	out.println("<tr bgcolor=#E8F3FF >");
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
	out.println("</tr>");	
	out.print("<tr><td colspan=6>");
	%>
									<div class="smalltext">|
										<a href="updatebug.jsp?bugid=<%=rs.getString(" bugid ")%>">Update Bug</a> |
										<a href="del.jsp?bugid=<%=rs.getString(" bugid ")%>">Delete</a> |
										<a href="bugdetail1.jsp?bugid=<%=rs.getString(" bugid ")%>">Detail</a> |</div>
									<%
	out.print("</td></tr>");
	}
	
	out.println("</table>");
	out.print("<div align=left> Total Bugs: "+(i-2)+"</div>");
}catch(Exception e){
	System.out.print(e);
}  
%>

										<div align="center">
											<hr width="100" />
											<a href="admin.jsp">Back</a>
											<hr width="100" />
										</div>
										</td>
										</tr>
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