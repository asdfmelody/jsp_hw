<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
    <%
    //실패작
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

<%!
class Product{
	private String name, price;
	
	public Product(){}
	
	public Product(String name, String price){
		this.name=name;
		this.price=price;
	}
	
	public String getName(){
		return name;
	}
	public String getPrice(){
		return price;
	}
}
%>
<%

%>


<hr>
<table style="height: 564px; width: 812px;">
	<tbody>
		<tr style="height: 22px;">
			<th>상품</th><th>가격</th><th>장바구니</th>
		</tr>
		
		<%--
		ArrayList<Product> list = new ArrayList<Product>();
		list.add("1번째", "10000");
		list.add("2번째", "20000");
		list.add("3번째", "30000");
		list.add("4번째", "40000");
		
		
		for(Product p:list){
			
		}
		<tr style="height: 22px;">
			<td><%= list.getName()%></td>
			<td><%= list.getPrice() %></td>
		--%>
			<td><%
			if (userid == null){//비회원이면 
		%>
				<a href = "login.html">
				<input type="button" value="장바구니">
				</a>
			<% }
			else{ //회원일경우
				%>
				<form name="Product" method="POST" action="add.jsp">
					<input type="button" value="장바구니">
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