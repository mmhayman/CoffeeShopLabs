<%--
  Created by IntelliJ IDEA.
  User: michelhayman
  Date: 7/31/17
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br>

<p>
<table border="1" cellspacing="20" align="center" >

    <h1>Item List:</h1>

    <h3>Name: Description:  Qty: Price:  </h3>

    <c:forEach var="myVar" items="${cList}">



        <tr>
            <td> ${myVar.name}</td>
            <td> ${myVar.description}</td>
            <td> ${myVar.quantity}</td>
            <td> ${myVar.price}</td>
            <td><a href="delete?id=${myVar.itemid}" onclick="return confirm ('Are you sure you want to delete this item?');"> Delete </a></td>
            <td><a href="storeitemid?itemid=${myVar.itemid}"> Edit </a></td>


        </tr>

    </c:forEach>


</table>

</p>
<a href="additem" style="color: black">Add a new Item</a>
</body>
</html>
