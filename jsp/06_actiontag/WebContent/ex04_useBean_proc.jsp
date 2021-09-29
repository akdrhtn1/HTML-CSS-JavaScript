<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터(파라미터값)를 VO 저장학 화면 출력 
	 1. MemberVO 타입의 객체(memberVO)를 생성
	 2. 전달받은 파라미터 값을 memberVO 객체(인스턴스)에 저장
	 3. MemberVO 값을 화면 출력--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입정보</title>
</head>
<body>
	<jsp:useBean id="memberVO" class="com.mystudy.MemberVO" />
	<jsp:setProperty property="*" name="memberVO"/>
	<h1>회원가입정보</h1>
	<ul>
		<li>아이디 : ${memberVO.id }</li>
		<li>암호 : ${memberVO.pwd }</li>
		<li>이름 : ${memberVO.name }</li>
		<li>성별 : ${memberVO.gender }</li>
		<li>취미 : <%
			for(String str : memberVO.getHobby()){
				out.print(str + " ");
			}
		%></li>
	</ul>
	
</body>
</html>