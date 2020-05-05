<%--20181007 최희선 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<hr>
<% 
	int sum=0;
	for (int i=0; i<=100; i++){
		sum+=i;
	}
	String str = Integer.toString(sum); 
%>
<jsp:include page= "sum2_out.jsp">
	<jsp:param name="sum" value= "<%= str %>"/>
</jsp:include> 
	
</body>
</html>