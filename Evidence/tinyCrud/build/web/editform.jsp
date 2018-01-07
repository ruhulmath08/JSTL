<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>editform.jsp</title>
    </head>
    <body>
        <%@page import="com.shamim.bean.User" %>
        <jsp:useBean id="s" class="com.shamim.service.UserService"/>


        <%
            String id = request.getParameter("id");
            User u = s.getRecordById(Integer.parseInt(id));
        %>

        <h2>Edit Form</h2>
        <form action="edituser.jsp" method="post">
            <input type="hidden" name="id" value="<%=u.getId()%>">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="<%=u.getName()%>"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Edit User"></td>
                </tr>
            </table>
        </form>

        
    </body>
</html>
