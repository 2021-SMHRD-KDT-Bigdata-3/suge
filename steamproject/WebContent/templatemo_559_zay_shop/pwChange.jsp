<%@page import="DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/css/font.css">
    <style>
    	
    </style>
    <script src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
    $("#id").keyup(function()){
    	var id = $.trim($(this).val());
    	//trim은 공백기능없어주는애.
    	$(this).val(id);
    	if(id.length < 8)
    		$("#id")
    }
    
    </script>
</head>
<body>
	<% memberDTO dto = (memberDTO)session.getAttribute("member");
						
							%>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
                <div class="container text-light">
              		<div>
              		</div>
                	<div>
                	<%
							if(dto != null){
										out.print("<h1>"+dto.getName()+  "님 환영해요~😉");
							}else{
								out.print("<h1>로그인이 필요합니다!</h1>");
							}
							%>
                		<%
								if(dto==null){
									//out.print("<button class='btn btn-success' type='button' onclick='location.href='join.jsp' '>회원가입</button>");
									//out.print("<button class='btn btn-success' type='button' onclick='location.href='join.jsp' '>회원가입</button>");
									%>
									<button class="btn btn-success" type="button" onclick="location.href='join.jsp' ">회원가입</button>
			                		<button class="btn btn-success" type="button" onclick="location.href='login.jsp' ">로그인</button>
								
								<% }else{
									if(dto.getId().equals("admin")){
										//out.print("<a href ='delete.jsp'>회원삭제</a>");%>
										<button class="btn btn-success" type="button" onclick="location.href='guestmanage.jsp' ">회원관리</button>
										<button class="btn btn-success" type="button" onclick="location.href='../logout' ">로그아웃</button>
									<%}else{
									//out.print("<a href='update.jsp'>개인정보수정</a>");
									//out.print("<a href='LogoutServiceCon.do'>로그아웃</a>");%>
									<button class="btn btn-success" type="button" onclick="location.href='../logout' ">로그아웃</button>
								
									<% }}
								%>
								
								
                		
                	</div>
                </div>
    </nav>
     <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-primary logo h1 align-self-center" href="mainPage.jsp">
                SUGE
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </nav>
    <br>
    <br>
    <div align="center">
		<form action = '../pwchange' method = "post" >	   
		 	<br>
		    <h1 style="color:navy; font-weight: 900;">비밀번호 변경</h1>
		    <br>
		    	<h4 class="join_title" style="color:black; font-weight: 900;">
		    		
		    	</h4>
		    	<div>
			    	<input type="password" name = "pw2" style="text-align:center; width:300px; height:30px; ">
		    		<br>
		    		<span>현재 비밀번호</span>
		    		<br>
		    		<input type="password" name="pw"style="text-align:center; width:300px; height:30px; "> 
		    		<br>
		    		<span>변경할 비밀번호</span>
		    	</div>
		    	<br>
		    	<div>
		    		<input id = "pwchange" class="btn btn-success" type="submit" value = "비밀번호 변경하기">
		    		<input class="btn btn-success" type="button" value = "뒤로가기" onClick="location.href='myPage.jsp'">
		    		<br>
		    		<br>
		    		<br>
		    	</div>
    	</form>
    	
    </div>
    
    
<!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row right" >

                <div class="col-md-4 pt-5" >
                    <h2 class="h2 text border-bottom pb-3 border-light logo wht" >SUGE</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            광주광역시 남구 송암동 CGI센터
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">062-610-2400</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:info@company.com">suge@suge.com</a>
							<br><br>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">CONTENTS</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="recom.jsp">추천</a></li>
                        <li><a class="text-decoration-none" href="categoryMain.jsp">카테고리</a></li>
                        <li><a class="text-decoration-none" href="popChart.jsp">인기순위</a></li>
                        <li><a class="text-decoration-none" href="board.jsp">게시판</a></li>
                       
                    </ul>
                </div>  

                

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                 </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
            </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Suggest Steam Games &copy; 2021 SUGE 
                            | Designed by <a rel="sponsored" href="#" target="_blank">SUGE</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->    
    
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"></script>
    
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>

    $('#pwchange').on('click',function(){
    	
    	alert("비밀번호가 변경되었습니다.");
    	
    })
    </script>
    
</body>
</html>