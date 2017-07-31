<%--
  Created by IntelliJ IDEA.
  User: michelhayman
  Date: 7/31/17
  Time: 6:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>GC Menu</title>
</head>
<body>

<table border="1">

    <c:forEach var="myVar" items="${cList}">

    <tr>
        <td> ${myVar.name}</td>
        <td> ${myVar.description}</td>
        <td> ${myVar.quantity}</td>
        <td> ${myVar.price}</td>


    </tr>

    </c:forEach>
</table>


</body>
</html>
