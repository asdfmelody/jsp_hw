<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>희선 쇼핑몰 - 장바구니추가</title>
</head>
<body>
<%

request.setCharacterEncoding("UTF-8");
String productName = request.getParameter("product");

ArrayList<String> list = (ArrayList<String>) session.getAttribute("productList");
if (list == null){
	list = new ArrayList<String>();
	session.setAttribute("productList",list);

%>

<%		
}
else {
list.add(productName);
%>
<script>
	alert("<%= productName %> 이(가) 추가 되었습니다. ");
</script>
<%} %>

<script> history.go(-1); </script>
</body>
</html>