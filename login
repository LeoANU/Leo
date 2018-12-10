<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign in</title>
</head>
<body>
	<center>
		<h1 style="color:red">Sign in</h1>
		
		
		<form action="check.jsp" method="get">
		<table border="0">
		<tr>
			<td>Username:</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password"></td>
		</tr>

		</table>
			<input type="submit" value="login">
			<input type="reset" value="reset">
			<input type="button" value="register" onclick="window.open('register.jsp')">
		</form>
			
	</center>

</body>
</html>
