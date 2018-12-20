	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>upload</title>
</head>
<body>
<script type="text/javascript">
    alert("${info}");
</script>
please make sure that the file name is unique
<form action="upload" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td></td>
            <td><h1>resume</h1></td>
        </tr>

        <tr>
            <td>upload:</td>
            <td><input type="file" name="file"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="upload"/></td>
        </tr>
    </table>
</form>

<table border="1">
  <tr>
    <th>download</th>
    <th>delete</th>
  </tr>

    <c:forEach items="${files}" var="name">
    <tr>
        <td><a href="upload/${name}">${name}</a></td>
        <td><a href="delete.jsp?fname=${name}">delete</a></td>
    </tr>
    </c:forEach>
 </table>

</body>
</html>