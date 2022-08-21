<%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 6/29/2022
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
  </head>
  <body>
  <h2>Currency Converter</h2>
  <form method="post" action="converter.jsp">
    <label>Rate: </label>
    <input type="text" name="rate" placeholder="RATE" value="22000"/><br/>
    <label>USD: </label>
    <input type="text" name="usd" placeholder="USD" value="0"/><br/>
    <input type="submit" id="submit" value="Converter"/><br/>

  </form>
  </body>
</html>
