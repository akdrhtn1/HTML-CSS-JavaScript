<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력화면</title>


<style>
	#container{
		width: 512px; 
		margin: auto;

	}
	#container h2,p{
		text-align : center;
	}
	#container table{

		width: 100%;
		padding : 0 5px;
		border : 1px solid black;
		border-collapse: collapse;
	}
	
	#container th {
		background : #9cf;

	}

	th, td { border: 1px solid black;}
	#container .center{text-align : center; }
	
	#container tfoot td{text-align : center; }
</style>


</head>
<body>
<div id="container">
	<h2>방명록 : 입력화면</h2>
	<hr>
	<p><a href="list.jsp">[목록으로 이동]</a></p>
	
	<form action="write_ok.jsp" method="post">
	<table>
		<tbody>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="name"></td>
			</tr>
			
			
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject"></td>
			</tr>
			
			
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email"></td>
			</tr>
			
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
			
			
			<tr>
				<td colspan="2"><textarea name="content" rows="" cols="60"></textarea>
				</td>

			</tr>
			
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="submit" value="저장">
					<input type="reset" value="취소">
				</td>
		</tfoot>
	</table>
	
	</form>
</div>
</body>
</html>