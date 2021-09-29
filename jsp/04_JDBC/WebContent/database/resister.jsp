<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=\, initial-scale=1.0">
<title>Insert title here</title>

        <!-- reset cdn 갖고와서 사용-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="css/resister.css">
<script src="js/resister.js"></script>
       
       
</head>
<body>
    <div class="wrap">
        <header id="header" class="section">
            <h1>
                <a id="reg" href="#">회원가입</a>
            </h1>
        </header>

            <form id=join_form action="insert.jsp" method="POST">
                <div class="container" role="main">
                    <div class="join_content">
                        <div class="one_group">
                            <div class="loginId">
                                <h3 class="repet_title">
                                    <label for="id">아이디</label>
                                </h3>
                                <span class="box_id">
                                    <input type="text" id="id" class="input--text" name="id" pattern="^[a-zA-Z0-9]+$" maxlength="20">
                                </span>
                                <span class="error_box" id="idMsg">  
                                </span>
                            </div>
                            
                            <div class="passwd">
                                <h3 class="repet_title">
                                    <label for="passwd1">비밀번호</label>
                                </h3>
                                <span class="box_id">
                                    <input type="password" id="passwd1" class="input--text" name="paswd1" maxlength="20">
                                </span>
                                <span class="error_box" id="pswd1Msg">  
                                </span>

                                <h3 class="repet_title">
                                    <label for="passwd2">비밀번호 재확인</label>
                                </h3>
                                <span class="box_id">
                                    <input type="password" id="passwd2" class="input--text" name="paswd2" maxlength="20">
                                </span>
                                <span class="error_box" id="pswd2Msg">  
                                </span>


                            </div>
                            

                        </div>

                        <div class="two_group">
                            <div class="name">
                                <h3 class="repet_title">
                                    <label for="name">이름</label>
                                </h3>
                                <span class="box_id">
                                    <input type="text" id="name" class="input--text" name="name" maxlength="10">
                                </span>
                                <span class="error_box" id="nameMsg">  
                                </span>
                            </div>

                            <div class="phone">
                                <h3 class="repet_title">
                                    <label for="cellPhone">전화번호</label>
                                </h3>
                                <span class="box_id">
                                    <input type="tel" id="cellPhone" class="input--text" name="cellPhone" maxlength="16" required placeholder="000-0000-0000">
                                </span>
                                <span class="error_box" id="phoneMsg">  
                                </span>
                            </div>
                            
                            
                           <div class="email">
                                <h3 class="repet_title">
                                    <label for="btDate">이메일</label>
                                </h3>

                                <div class="birth_wrap">
                            
                                        <span class="box_id">
                                            <input type="email" id="email" class="input--text" name="email">
                                        </span>
                                </div>
                            </div>

                        </div>

                        <input type="submit" id="submit" class="btn btn--primary" value="가입하기">

                    </div>

                </div>
            </form>
        </div>
</body>
</html>