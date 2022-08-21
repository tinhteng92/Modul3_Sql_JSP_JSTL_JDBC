<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<center>
    <h1>Register</h1>
</center>
<p>
<%--    <c:if test="${message} !=null">--%>
        <span class="message">${message}</span>
<%--    </c:if>--%>
</p>
<div align="center">
    <form method="post" action="">
        <table border="1" cellpadding="5">
            <caption>
                <input type="text" name="chucvu" id="chucvu" size="45" value="khach" hidden/>
                <tr>
                    <th>Username:</th>
                    <td>
                        <input type="text" name="tk" id="tk" size="45" placeholder="Enter username"/>
                    </td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td>
                        <input type="password" name="mk" id="mk" size="45" placeholder="Enter password"/>
                    </td>
                </tr>

                <tr>
                    <th>Repeat Password:</th>
                    <td>
                        <input type="password" name="mk"  size="45" placeholder="Enter password"/>
                    </td>
                </tr>

                <tr>
                    <th>Fullname:</th>
                    <td>
                        <input type="text" name="ten" id="ten" size="45" placeholder="Enter your fullname"/>
                    </td>
                </tr>

                <tr>
                    <th>Select your gender:</th>
                    <td>
                        <select name="gioitinh">
                            <option value="none" selected>Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <th>Phone Number:</th>
                    <td>
                        <input type="text" name="sdt" id="sdt" size="45" placeholder="Enter phone number"/>
                    </td>
                </tr>

                <tr>
                    <th>Address:</th>
                    <td>
                        <input type="text" name="diachi" id="diachi" size="45" placeholder="Enter your address"/>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Register"/>
                    </td>
                </tr>

            </caption>
        </table>
    </form>


</div>

</body>
</html>
