<%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 6/28/2022
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
  </head>
  <body>
  <form action="/convert" method="post">
  <h2>Currency Converter</h2>
  <label>Rate:</label><br/>
  <input type="text" name="rate" placeholder="Rate" value="22000"/><br/>
  <label>USD: </label><br/>
  <input type="text" name="usd" placeholder="USD" value="0"/><br/>
  <input type="submit" id = "submit" value="Converter">
  </form>
  </body>
</html>
