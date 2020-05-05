<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();
if(cookies!=null){                                            // 쿠키가 Null이 아니라면
	for(int i=0; i<cookies.length; i++){       
	if(cookies[i].getName().equals("userid")){   
		cookies[i].setMaxAge(0);  
		response.addCookie(cookies[i]);   
		}
	}
}
response.sendRedirect("login.html");
%>
</body>
</html>