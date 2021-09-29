<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 파라미터 값을 자바빈(Bean)VO에 저장하고 사용 --%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="vo" class="com.mystudy.MemberVO" />
	<jsp:setProperty property="*" name="vo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean 사용</title>
</head>
<body>
	<h2>결과보기</h2>
	<ul>
		<li>아이디 : ${vo.id }</li>
		<li>암호 : ${vo.pwd }</li>
		<li>이름 : ${vo.name }</li>
		<li>성별 : ${vo.gender }</li>
		<li>취미 : <%
			for(String str : vo.getHobby()){
				out.print(str + " ");
			}
		%></li>
		<li>취미 : ${vo.hobby[1] }</li>
		

	</ul>
	<hr>
</body>
</html>