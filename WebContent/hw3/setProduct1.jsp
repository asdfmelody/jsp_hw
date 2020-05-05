<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"
    
 %>
 <%
 // html로 노가다
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>희선 쇼핑몰</title>
<%
	request.setCharacterEncoding("UTF-8");
	//유효 사용자 인증 --- 완료
	//직접 방문시 null 설정 문제 -- 완료
	
	String userid = (String) session.getAttribute("userid");
%>
</head>
<body>
<h2>Heesun Shopping</h2>
<hr>
<%
if (userid == null){%>
	<a href="login.html">비회원입니다. 로그인 하세요.</a>
<%}
else {
	%><%= userid %> 님, 어서오세요!    <a href = "logout.jsp">로그아웃</a> <%
} //로그인 완성
%>

<hr>
<a href = "checkOut.jsp"> 장바구니 보기 </a> <br>
<table>
	<tbody>
		<tr style="height: 22px;">
			<th>상품 상세</th><th>상품명</th><th>가격</th><th>장바구니</th>
		</tr>
		
		<tr>
			<td style ="padding :5px"><image src="D:\IProg\hw\src\slush.jpg" height="300"></td>
			<td style ="padding :5px">슬러쉬</td>
			<td style ="padding :5px">10000</td>
			<td style ="padding :5px">
			<%
			if (userid == null){//비회원이면 
		%>
				<a href = "login.html">
				<input type="button" value="장바구니">
				</a>
			<% }
			else{ //회원일경우
				%>
				<form name="product" method="POST" action="add.jsp">
					<input name ="product" type="button" value="장바구니">
				</form>
				<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td style ="padding :5px"><image src="D:\IProg\hw\src\bubbletea.jpg" height="300"></td>
			<td style ="padding :5px">버블티</td>
			<td style ="padding :5px">20000</td>
			<td style ="padding :5px">
			<%
			if (userid == null){//비회원이면 
		%>
				<a href = "login.html">
				<input type="button" value="장바구니">
				</a>
			<% }
			else{ //회원일경우
				%>
				<form name="2Product" method="POST" action="add.jsp">
					<input name ="product" type="button" value="장바구니">
				</form>
				<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td style ="padding :5px"><image src="D:\IProg\hw\src\beer.jpg" height="300"></td>
			<td style ="padding :5px">맥주</td>
			<td style ="padding :5px">30000</td>
			<td style ="padding :5px">
			<%
			if (userid == null){//비회원이면 
		%>
				<a href = "login.html">
				<input type="button" value="장바구니">
				</a>
			<% }
			else{ //회원일경우
				%>
				<form name="3Product" method="POST" action="add.jsp">
					<input name ="product" type="button" value="장바구니">
				</form>
				<%
			}
			%>
			</td>
		</tr>
		<tr>
			<td style ="padding :5px"><image src="D:\IProg\hw\src\cocktail.jpg" height="300"></td>
			<td style ="padding :5px">칵테일</td>
			<td style ="padding :5px">40000</td>
			<td style ="padding :5px">
			<%
			if (userid == null){//비회원이면 
		%>
				<a href = "login.html">
				<input type="button" value="장바구니">
				</a>
			<% }
			else{ //회원일경우
				%>
				<form name="4Product" method="POST" action="add.jsp">
					<input name ="product" type="button" value="장바구니">
				</form>
				<%
			}
			%>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>