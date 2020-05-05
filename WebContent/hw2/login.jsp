<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<%
String userid = request.getParameter("userid");
out.println("["+userid+"]");

if (userid != null && userid.equals("admin")) {
	Cookie cookie = new Cookie("userid", userid);
	response.addCookie(new Cookie("userid",userid));
	cookie.setMaxAge(3);
	response.addCookie(cookie);
	
	response.sendRedirect("member.jsp");
}
else {
	response.sendRedirect("login.html");
}

%>

</body>
</html>