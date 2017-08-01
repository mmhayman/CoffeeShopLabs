<%--
  Created by IntelliJ IDEA.
  User: michelhayman
  Date: 8/1/17
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<form action= "/editItem" method="post">

    Name : <input type = "text" name="name"value="${name}" required>
    <br>
    Description: <input type = "text" name="description"value="${description}" required >
    <br>
    quantity: <input type = "text" name="quantity"value="${quantity}" required>
    <br>
    Price: <input type = "text" name="price"value="${price}"required>
    <br>

    <br>
    <input type = "submit" value = "Save" >


</form>
</body>
</html>
