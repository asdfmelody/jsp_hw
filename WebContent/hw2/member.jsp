<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member.jsp</title>
</head>
<body>
<%
boolean isMember = false;
String userid ="";

Cookie[] cookies = request.getCookies();

if (userid != null) {
for(int i=0;i<cookies.length;i++){
	if(cookies[i].getName().equals("userid")){
		isMember = true;
		userid=cookies[i].getValue();
		}
	}
}

if (!isMember){
	response.sendRedirect("login.html");
}
%>
<%= userid %> 님, 당신은 회원이 맞습니다.
<a href = "logout.jsp">로그아웃</a> 
</body>
</html>