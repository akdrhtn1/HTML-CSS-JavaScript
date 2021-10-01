<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.bc.mybatis.GuestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 전달받은 데이터(암호)와 DB 저장 암호 일치여부 확인 후 처리
	 비교값 : 전달받은 PWD 파라미터값과  session의 pwd 값과 비교
	 - 일치하면 : DB데이터 삭제 후 목록페이지로 이동
	 - 불일치면 : 이전페이지로 이동 
--%>

<%
	//0. 한글처리를 위한 encoding 설정
	int result = 0;
	request.setCharacterEncoding("UTF-8");

	String pwd = request.getParameter("pwd");
	
	GuestbookVO vo = (GuestbookVO)session.getAttribute("guestbookVO");
	System.out.println("param pwd: " + pwd + ", vo pwd:" + vo.getPwd());
	
	//암호 일치여부 확인
	if(pwd.equals(vo.getPwd())){ //일치
	
		SqlSession ss = DBService.getFactory().openSession(true);
		//암호일치하는 경우 - DB데이터 삭제처리 후 목록페이지로 이동
		try{
			result = ss.delete("guestbook.delete", vo);	
			ss.close();	
			//3. 화면전환 - 정상처리시 
			System.out.println(result);
			
			if(result>=1){
	%>
			<script>
				alert("삭제가 정상적으로 처리되었습니다.\n목록페이지로 이동합니다.");
				location.href="list.jsp";
			</script>
	<%
			}
		}catch(Exception e){
			e.printStackTrace();	
%>
			<script>
			alert("입력중 예외가 발생했습니다..\n 담당자(8282)에게 연락하세요");
			history.back();
			</script>
<%	
		}
	}else{
%>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
		history.back();
	</script>

<%	
	}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>