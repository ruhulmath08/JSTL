<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>display.jsp</title>
    </head>
    <body>
        <%@page import="com.shamim.bean.User, java.util.*" %>
        <jsp:useBean id="s" class="com.shamim.service.UserService"/>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
        <h2>User list</h2>
        <%
            List<User> list = s.getAllRecords();
            request.setAttribute("list", list);
        %>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${list}" var="u">
                <tr>
                    <td>${u.getId()}</td>
                    <td>${u.getName()}</td>
                    <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
                    <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="adduser.jsp">Add User</a>
    </body>
</html>
