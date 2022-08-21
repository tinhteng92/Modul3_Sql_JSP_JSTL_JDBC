<%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 7/6/2022
  Time: 5:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management Application</title>
</head>
<body>
<center>
    <h1>Delete Product</h1>
</center>
<div align="center">
    <form method="post">
        <h3>Are you sure?</h3>
        <table>
            <caption>Product Information</caption>
            <tr>
                <th>ID: </th>
                <td>${sanpham.getIdsp()}</td>
            </tr>
            <tr>
                <th>Name: </th>
                <td>${sanpham.tensp}</td>
            </tr>
            <tr>
                <th>Unit: </th>
                <td>${sanpham.dvt}</td>
            </tr>
            <tr>
                <th>Description: </th>
                <td>${sanpham.mota}</td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>${sanpham.gia}</td>
            </tr>
            <tr>
                <th>Image: </th>
                <td>${sanpham.img}</td>
            </tr>
            <tr>
                <th>Kind of Product: </th>
                <td>${sanpham.loaisp}</td>
            </tr>
            <tr>
                <td><button type="submit" class="btn btn-danger">Delete</button></td>
                <td><button type="button" class="btn btn-secondary"><a href="/sanpham?action=sanpham" id="a-cancel">Cancel</a></button> </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>