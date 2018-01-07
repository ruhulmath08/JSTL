<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edituser.jsp</title>
    </head>
    <body>
        <jsp:useBean id="u" class="com.shamim.bean.User"/>
        <jsp:useBean id="s" class="com.shamim.service.UserService"/>
        <jsp:setProperty property="*" name="u"/>
        <%
            int i = s.update(u);
            response.sendRedirect("display.jsp");
        %>   
    </body>
</html>
