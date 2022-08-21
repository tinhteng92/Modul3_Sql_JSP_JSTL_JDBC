<%@ page import="java.util.ArrayList" %>
<%@ page import="QLKH.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 6/29/2022
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
  <%
    ArrayList<Customer> cuss = new ArrayList<>();

    cuss.add(new Customer("Mai Văn Hoàn", "1983-08020", "Hà Nội", "anh1.jpg"));
    cuss.add(new Customer("Nguyễn Văn Nam", "1983-08020", "Hà Nội", "anh2.jpg"));
    cuss.add(new Customer("Nguyễn Thái Hòa", "1983-08020", "Hà Nội", "anh3.jpg"));
    cuss.add(new Customer("Trần Đăng Khoa", "1983-08020", "Hà Nội", "anh4.jpg"));
    cuss.add(new Customer("Nguyễn Đình Thi", "1983-08020", "Hà Nội", "anh5.jpg"));
    request.setAttribute("cuss", cuss);
  %>
  <div>
    <table >
      <tr>
        <th colspan="4" >Danh sách khách hàng</th>
      </tr>
      <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
      </tr>
      <c:forEach var="cuss" items="${cuss}">
        <tr>
          <td>${cuss.name}</td>
          <td>${cuss.dateOfBirth}</td>
          <td>${cuss.address}</td>
          <td><img height="100px" width="100px" src="${cuss.image}" ></td>
        </tr>
      </c:forEach>
    </table>
  </div>
  </body>
</html>
