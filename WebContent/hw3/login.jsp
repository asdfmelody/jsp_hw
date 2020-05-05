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

boolean isMember = false;

if (userid == null){
	response.sendRedirect("setProduct1.jsp");
}
else{
	if(userid.equals("admin")){
		session.setAttribute("userid", userid);
		session.setMaxInactiveInterval(30*60);

		response.sendRedirect("setProduct1.jsp");
	}
	else{
		response.sendRedirect("login.html");
	}
}

%>
</body>
</html>