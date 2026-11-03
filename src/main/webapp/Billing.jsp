<%@page import="master.dao.OrderDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="NavClient.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BILLING PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-info">BILLING INFORMATIONS</h2>
	<form action="Billing.jsp" method="post">
		<input type="text" class="form-control" name="uname"  placeholder="ENTER UNAME"/>
	 		 <input type="submit" class="btn btn-outline-danger" value="GENERATE BILL"/>
	</form>
	<p>
<table class="table table-striped table-bordered">
<thead class="table-dark">
<tr>
<th>ORDER ID</th>
<th>ORDER NAME</th>
<th>FOOD ID</th>
<th>FOOD NAME</th>
<th>QUANTITY</th>
<th>PRICE</th>
<th>TOTAL PRICE</th>
<th>USERNAME</th>
</thead>
<tbody>
<%
String uname=request.getParameter("uname");
OrderDao fdao=new OrderDao();
ResultSet rs=fdao.billing(uname);
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getDate(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getInt(5) %></td>
<td><%=rs.getDouble(6) %></td>
<td><%=rs.getDouble(7) %></td>
<td><%=rs.getString(8) %></td>
</tr>
<%
}
%>

</tbody>
</table>
</div>
</body>
</html>