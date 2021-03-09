<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: johnny
  Date: 3/8/21
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Result</title>
</head>
<body style="background: <%=request.getParameter("color")%>">
<c:choose>
	<c:when test='<%=Objects.equals(request.getParameter("num"), request.getParameter("answer"))%>'>
		<h1>You guessed <em>correctly</em>,</h1>
		<h3><%=request.getParameter("num")%> was the right answer!</h3>
	</c:when>
	<c:otherwise>
		<h1>You guessed <em>incorrectly</em>,</h1>
		<h3><%=request.getParameter("num")%> was the wrong answer!</h3>
		<h3>The right answer was <%=request.getParameter("answer")%></h3>
	</c:otherwise>
</c:choose>
</body>
</html>
