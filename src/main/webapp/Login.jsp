<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width: 30%;margin: 50px auto;">
		<h2 class="text-info">LOGIN PAGE</h2>
		<form action="LoginServe" method = "post">
			<input type="text" class="form-control" name="uname" placeholder="ENTER THE USERNAME"/>
			<input type="password" class="form-control" name="pass" placeholder="ENTER THE PASSWORD"/>
			<input type="submit" class="btn btn-outline-primary"  value="LOGIN"/>
		</form>
	</div>
</body>
</html>