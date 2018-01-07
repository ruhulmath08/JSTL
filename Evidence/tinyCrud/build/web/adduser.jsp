<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adduser.jsp</title>
    </head>
    <body>
        <form action="adduser.jsp" method="post">
            Name:
            <input type="text" name="name"><br>
            <input type="submit" value="Submit">
        </form>
        <a href="display.jsp">Display User</a>
        
        <jsp:useBean id="s" class="com.shamim.service.UserService"/>
        <jsp:useBean id="u" class="com.shamim.bean.User"/>
        <jsp:setProperty property="*" name="u"/>
        
        <%
            int i = s.save(u);
        %>
    </body>
</html>
