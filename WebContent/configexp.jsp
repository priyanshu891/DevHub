<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<title>DevHub | Administrator/Configuring Experts.</title>

		<style>
			body {
				background-image: url("images/background.jpg");
			}
		</style>

		<%@include file="css_script.jsp" %>

			<style>
				.sub-menu {
					float: left;
					width: 100%;
				}

				.content {
					float: left;
					width: 100%;
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
				<div class="col-sm-3">
					<div class="panel panel-info">
						<div class="panel-heading">Task</div>
						<div class="panel-body">
							<a href="bugsadmin.jsp">View Bugs</a>
							<br/>
							<br/>
							<a href="configexp.jsp">Configure Experts</a>
							<br/>
							<br/>
							<a href="addexpert.jsp">Add Expert</a>
						</div>
					</div>
				</div>


				<div class="col-sm-6">
					<div class="panel panel-success">
						<div class="panel-heading">Configuring Experts for Software Teams. </div>
						<div class="panel-body">
							<form name="form1" method="post" action="configexp1.jsp">


								<table class="table">
									<%
	if("success".equals((String)request.getParameter("msg"))){
	out.print("<tr><td colspan=2 bgcolor=#FFD7AE class=smalltext align=center height=25><font color=blue>Expert Configured Successfully!</font></td></tr>");
	}else if("error".equals((String)request.getParameter("msg"))){
		out.print("<tr><td colspan=2 bgcolor=#FFD7AE class=smalltext align=center height=25><font color=red>Expert already configured for this Product.</font></td></tr>");
	}
	%>

										<tr>
											<th>Product</th>
											<td>
												<select name="prodid" class="form-control">
													<%
		Connection con=ConnectionProvider.getConnection();
		Statement stmt = con.createStatement();
		String query = "select * from products";
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next())
		{
			out.print("<option value="+rs.getString("prodid")+">"+rs.getString("prodname")+"-"+rs.getString("version")+"</option>");
		}
		rs.close();
		%>
												</select>
											</td>
										</tr>
										<tr>
											<th>Technical Expert </th>
											<td>
												<select name="expertid" class="form-control">
													<%
		query = "select * from login where type='Expert'";
		rs = stmt.executeQuery(query);
		while(rs.next())
		{
			out.print("<option value="+rs.getString("loginid")+">"+rs.getString("name")+"</option>");
		}
		rs.close();
		con.close();
		%>
												</select>
											</td>
										</tr>
										<tr>

											<td colspan="2" align="center" height="25">
												<input type="submit" name="Submit" value="Submit" class="btn btn-success" />
											</td>
										</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<BR/>

				<BR/>
				<BR/>
			</div>

			<!-- Start of footer -->

			<%@include file="footer.jsp" %>

				<!-- End of footer -->

	</body>

	</html>