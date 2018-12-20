<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传实例 - 菜鸟教程</title>
</head>
<body>
<h1>文件上传实例 - 菜鸟教程</h1>
<form method="post" action="UploadServlet" enctype="multipart/form-data">
<table>
<tr>
<td></td>
<td><h1>文件上传</h1></td>
</tr>
<tr>
<td>cname</td>
<td><input type="text" name="cname"/></td>
</tr>
<tr>
<td>email</td>
<td><input type="text" name="email"/></td>
</tr>
<tr>
<td>上传文件:</td>
<td><input type="file" name="file"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="上传文件"/></td>
</tr>
</table>
</form>
    
</body>
</html>