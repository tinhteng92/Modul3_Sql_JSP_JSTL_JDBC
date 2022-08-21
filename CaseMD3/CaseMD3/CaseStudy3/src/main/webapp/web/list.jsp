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
        <a href="/sanpham?action=create">Add</a>
    </h2>

    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>ProductName</th>
            <th>Unit</th>
            <th>Description</th>
            <th>Price</th>
            <th>Img</th>
            <th>Kind</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="sp" items="${listSanpham}">
            <tr>
                <td><c:out value="${sp.idsp}"/></td>
                <td><c:out value="${sp.tensp}"/></td>
                <td><c:out value="${sp.dvt}"/></td>
                <td><c:out value="${sp.mota}"/></td>
                <td><c:out value="${sp.gia}"/></td>
                <td><img src="images/${sp.img}.png "> </td>
                <td><c:out value="${sp.loaisp}"/></td>
                <td>
                    <a href="/sanpham?action=edit&id=${sp.idsp}">Edit</a>
                    <a href="/sanpham?action=delete&id=${sp.idsp}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>

