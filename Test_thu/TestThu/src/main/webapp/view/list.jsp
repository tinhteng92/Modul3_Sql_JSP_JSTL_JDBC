<%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 7/3/2022
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management Application</title>
</head>
<body class="container">
<center>
    <h1>Student Management</h1>
</center>

<div>
    <h2>
        <a href="/students?action=create">Add</a>
    </h2>

    <div class="input-group">
        <form method="post" action="/students?action=search">
        <input id="search" name="name" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
        <button type="submit" class="btn btn-outline-primary">Search</button>
        </form>
    </div>


    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date Of Birth</th>
            <th>Address</th>
            <th>PhoneNumber</th>
            <th>Email</th>
            <th>ClassRoom</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${listStudent}">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.dateOfBirth}"/></td>
                <td><c:out value="${student.address}"/></td>
                <td><c:out value="${student.phoneNumber}"/></td>
                <td><c:out value="${student.email}"/> </td>
                <td><c:out value="${student.classroom}"/></td>
                <td>
                    <a href="/students?action=edit&id=${student.id}">Edit</a>
                    <a href="/students?action=delete&id=${student.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>
