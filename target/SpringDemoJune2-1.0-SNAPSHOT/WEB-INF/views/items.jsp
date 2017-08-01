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

    <style>

        p {
            text-align: center;
            color: mediumspringgreen;
            font-family: Dialog;

        }

        h1 {
            color: white;
        }
        body {

            background-color: salmon;
            color: white;
            font-family: "Comic Sans MS";
            font-style: inherit;
        }

        h3 {

            word-spacing: 30px;
            font-size: small;
            text-align: center;
        }

        table {
            color: darkslategrey;
            background-color: lightskyblue;
            font-family: Tahoma;

        }

    </style>
</head>
<body>


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




    </tr>

    </c:forEach>


</table>

</p>
<a href="/">Back to the Index</a>

</body>
</html>
