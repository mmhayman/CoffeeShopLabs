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

            font-size: xx-large;

        }

        body {
            background-color: dodgerblue;
            color: paleturquoise;

        }

        h1 {
            color: chartreuse;
            font-family: "Gill Sans";
        }

    </style>
    <h1> Please fill the form to register!</h1>
</head>
<body>

<form method="post" action="/summary">

    <form action="/action_page_post.php" method="post">
        First Name:
        <input type="text" name="firstName" value="First Name" required>
        <br>
        <br>
        Last Name:
        <input type="text" name="lastName" value="Last Name" required>
        <br>
        <br>
        Email:
        <input type="text" name="email" value="email@gmail.com" required>
        <br>
        <br>
        Phone Number:
        <input type="text" name="phoneNumber" value="123-456-7890" required>
        <br>
        <br>
        Password:
        <input type="password" name="password" value="*******" required>
        <br>
        <br>


        <br>


        Would you like to be on our mailing list?
        <br>

        <select name="mailingList">

            <option value="yes">Yes</option>
            <option value="No">No</option>
            <option value="Maybe">Maybe</option>
        </select>
        <br>

        <br>
        What is your coffee preference? <br>
        <input type="checkbox" name="preferences" value="coffee">Coffee<br>
        <input type="checkbox" name="preferences" value="espresso">Espresso<br>
        <input type="checkbox" name="preferences" value="macchiato">Macchiato<br>
        <input type="checkbox" name="preferences" value="cappuccino">Cappuccino<br>
        <input type="checkbox" name="preferences" value="mocha">Mocha<br>
        <input type="checkbox" name="preferences" value="flatwhite">Flat White<br>
        Gender:
        <br>

        <input type="radio" name="gender" value="male"> Male<br>
        <input type="radio" name="gender" value="female"> Female<br>
        <input type="radio" name="gender" value="other"> Other
        <br><br>
        <input type="submit" value="Register">


    </form>


</form>


</body>
</html>
