<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOOD UPDATE PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-primary">UPDATE FOOD</h2>
	<form action="FoodUpdateServe" method="post">
		<input type="text" class="form-control" name="fid"  placeholder="ENTER THE FOOD ID"/>
		<input type="text" class="form-control" name="price" placeholder="ENTER THE PRICE"/>
	 		 <input type="submit" class="btn btn-outline-danger" value="UPDATE"/>
	</form>
</div>
</body>
</html>