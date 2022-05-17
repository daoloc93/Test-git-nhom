<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>Find User By Country & Name</h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>

            </caption>
            <tr>
                <th>Country</th>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Name</th>
                <td>
                    <input type="text" name="name" id="name" size="15"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Find"/>
                </td>
            </tr>
        </table>

        <c:if test='${requestScope["foundedUserByCountry"] != null}'>
            <table border="1">
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                    <td>Email</td>
                    <td>Country</td>
                </tr>

                <c:forEach items='${requestScope["foundedUserByCountry"]}' var="user">
                    <tr>
                        <td>${user.getId()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getEmail()}</td>
                        <td>${user.getCountry()}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

    </form>
</div>
</body>
</html>