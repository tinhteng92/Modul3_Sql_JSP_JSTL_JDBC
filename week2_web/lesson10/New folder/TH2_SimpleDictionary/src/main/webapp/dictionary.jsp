<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Tinh Chu
  Date: 6/29/2022
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("pen", "bút");
    dic.put("hand", "tay");
    dic.put("cup", "cốc");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if(result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else {
        out.println("Not found");
    }
%>
</body>
</html>
