<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fname=request.getParameter("fname");
String path=request.getRealPath("/upload");
File f=new File(path+"\\"+fname);
System.out.println(f);
f.delete();

%>
</body>
</html>