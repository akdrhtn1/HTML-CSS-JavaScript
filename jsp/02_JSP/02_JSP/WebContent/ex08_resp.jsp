<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String menu = request.getParameter("coffee");
		int count = Integer.parseInt(request.getParameter("su"));
		int money = Integer.parseInt(request.getParameter("money"));
		
		int price = 0;
		int total = 0;
		String name="";
		switch(menu){
		case "1" : name = "아메리카노";
				   price = 3000;
				   break;
		case "2" : name = "카페모카";
		   		   price = 3500;
		           break;
		           
		case "3" : name = "에소프레소";
		           price = 2500;
        		   break;
        
		case "4" : name = "카페라떼";
		   		   price = 4000;
       			   break;
		}
		
		total = price * count;
		   
	%>
	
	<ul>
		<li>커피종류 : <%=name %> </li>
		<li>단가 : <%=price %>원 </li>
		<li>수량:  <%=count %></li>
		<li>구입금액: <%=total %>원</li> 
	</ul>
		<hr>
	<ul>
		<li>입금액 :<%=money %>원</li>
		<li>잔액 : 
		<%if(money>=total){
			out.println(money-total+"원");
		}else{
			out.println("잔액부족합니다.");
		%>
			<script type="text/javascript">		
				alert("잔액이 부족합니다.");
				history.go(-1);
			</script>
		<% 
			}
		%> 
	</li>
		
	</ul>
</body>
</html>