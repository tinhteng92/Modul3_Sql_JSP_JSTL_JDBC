
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete a customer</title>
</head>
<body>
    <h1>Delete a customer</h1>
    <p>
        <c:if test='${message}!=null}'>
            <span class="message">${message}</span>
        </c:if>
    </p>
    <p>
        <a href="/customers">Back to customer list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
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
            <tr>
                <td><input type="submit" value="Delete a customer"></td>
                <td><a href="/customers">Back to customer list</a></td>
            </tr>
        </table>
        </fieldset>
    </form>
</body>
</html>
