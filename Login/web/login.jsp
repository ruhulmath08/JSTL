<%-- 
    Document   : login
    Created on : Jan 8, 2018, 12:12:19 AM
    Author     : Ruhul-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource url="jdbc:mysql://localhost:3306/test"
                   user="root"
                   password="root"
                   driver="com.mysql.jdbc.Driver"
                   var="con"/>

<c:if test="${param.login != null}">
    <sql:query var="result" dataSource="${con}">
        select * from user where user_id=${param.uid} and password = '${param.psw}'
    </sql:query>
    
        <c:forEach items="${result.rows}" var="r">
            <c:set var="id" value="${r.user_id}" />
            <c:set var="roles" value="${r.roles}" />
        </c:forEach>
</c:if>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Form</h1>
        <pre>
            <pre>
                <form method="get" action="login.jsp">
                    user id  : <input type="text" name="uid"/>
                    Password : <input type="password" name="psw"/>
                               <input type="submit" value="Login" name="login"/>
                               <a href="login.jsp">Refresh</a>
                </form>
                
        </pre>
        <c:if test="${param.login != null}">
            <c:choose>
                <c:when test="${id != null}">
                    <h1 style="color: #0000ff">Login success....</h1>
                    <p style="color: #ff0000">
                        Login id : ${id}
                        Role : ${roles}
                    </p>
                </c:when>
                <c:otherwise>
                    <h1 style="color: #ff0000">login error</h1>
                </c:otherwise>     
            </c:choose>
        </c:if>
    </body>
</html>
