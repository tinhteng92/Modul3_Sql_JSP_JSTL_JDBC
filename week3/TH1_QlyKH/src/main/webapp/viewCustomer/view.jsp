<%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 6/30/2022
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
    <h1>Customer details</h1>
    <p>
        <legend>Customer information</legend>
    <table>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
        </tr>
    </table>
    </p>
</body>
</html>
