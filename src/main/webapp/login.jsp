<%--
  Created by IntelliJ IDEA.
  User: johnny
  Date: 3/5/21
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String wrongCredentialsMessage = "";

    if (request.getMethod().equals("POST")) {

        if (request.getParameter("username").equals("admin") && request.getParameter("userPassword").equals("password")) {
            response.sendRedirect("/profile.jsp?username=" + request.getParameter("username"));
        }

        wrongCredentialsMessage = "Username or Password Invalid";

    }

%>
<html>
<head>
    <title>Login</title>
</head>
<body>

<main>

    <h1>Login Form</h1>
    <form method="POST" action="/login.jsp">

        <p class="red-text"><%=wrongCredentialsMessage%></p>
        <label for="username">Username</label>
        <input name="username" id="username" type="text">
        <br>
        <label for="userPassword">Password</label>
        <input name="userPassword" id="userPassword" type="password">
        <br>
        <input type="submit" value="Login">

    </form>
</main>
</body>
</html>