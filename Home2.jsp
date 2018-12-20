<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>homepage for administrator</title>
</head>
<body>
Hi administrator

<center>
		<h1 style="color:red">Candidate</h1>
		<table border="2">
		<tr>
		<td>Name</td>
		<td>Email</td>
		</tr>
		</table>
</center>
<a href="CandidateServlet">check candidate</a>
<a href="candidate.jsp">add candidate</a> 
<a href="InterviewServlet">check interview</a>
<a href="interview.jsp">add interview</a>
</body>
</html>