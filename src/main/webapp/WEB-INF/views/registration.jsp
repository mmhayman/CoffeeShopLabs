<%--
  Created by IntelliJ IDEA.
  User: michelhayman
  Date: 7/21/17
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>

    <style>

        p {

            color: black;
            font-size: xx-large;

        }

        body {
            background-color: dodgerblue;

        }

        h1{
            color: chartreuse;
            font-family: "Gill Sans";
        }

    </style>
    <h1> Please fill the form to register!</h1>
</head>
<body>

<form method = "post" action="/summary">
    First Name:
    <input type = "text" name = "firstName" value = "First Name">
    <br>
    <br>
    Last Name:
    <input type = "text" name = "lastName" value = "Last Name" >
    <br>
    <br>
    Email:
    <input type = "text" name = "email" value = "email@gmail.com" >
    <br>
    <br>
    Phone Number:
    <input type = "text" name = "phoneNumber" value = "123-456-7890" >
    <br>
    <br>
    Password:
    <input type = "password" name = "password" value = "*******" >
    <br>
    <br>
    <input type = "submit" value = "Register">
</form>

</body>
</html>
