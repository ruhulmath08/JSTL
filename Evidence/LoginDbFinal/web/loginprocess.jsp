<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>loginprocess.jsp</title>
    </head>
    <body>
        <%@page import="com.shamim.dao.LoginDao" %>
        <jsp:useBean id="lb" class="com.shamim.bean.LoginBean"/>
        <jsp:setProperty property="*" name="lb"/>
        
        <%
            boolean status = LoginDao.validate(lb);
            if(status){
                out.println("You successfully logged in.");
            }else{
                out.println("Error");
            }
        %>
    </body>
</html>
