<%--
  Created by IntelliJ IDEA.
  User: michelhayman
  Date: 7/31/17
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action= "addNewItem" method="post">

    Name : <input type = "text" name="name" required>
    <br>
    Description: <input type = "text" name="description"required >
    <br>
    quantity: <input type = "text" name="quantity" required>
    <br>
    Price: <input type = "text" name="price" required>
    <br>

    <br>
    <input type = "submit" value = "Add Item" >

</form>
</body>
</html>
