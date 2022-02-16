<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Intro</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/table.css" />" rel="stylesheet">
        <style>
  table{
    margin-top: 3%;
    margin-right: 50%;
    height: 70%;
    width: 60%;
  }
    </style>
    
</head>
<body>
  <header>
    <div class="navbar navbar-default">
      <div class="container-fluid">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/myapp/main_page">Farmporter</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <div class="menu">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">소개</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/intro">소개</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">귀농 가이드</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/profit_crop">소득정보</a></li>
                <li><a href="/myapp/predict">가격정보</a></li>
                <li><a href="/myapp/farmer_profit">자금정보</a></li>
              </ul>
             </li>
             <li class="nav"><a href="/myapp/farm_sites">귀농 관련 사이트 <span class="sr-only">(current)</span></a></li>
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">알림소식</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/notice">공지사항</a></li>
              </ul>
             </li>
          </ul>
         </div> 
		<c:if test="${empty authInfo}">
		<div id="before" class = "login">
         		<ul class="nav navbar-nav navbar-right">
           		<li><a href="/myapp/login">로그인</a></li>
           		<li><a href="/myapp/agreement">회원가입</a></li>
           	</ul>
          </div>
          </c:if>
          <c:if test="${! empty authInfo}">
          <div id="after" class = "login">
         		<ul class="nav navbar-nav navbar-right">
	            <li><a href="logout">로그아웃</a></li>
	            <li><a href="/myapp/my_page/${authInfo.id}">My page</a></li>
	        </ul>
          </div>
          </c:if>
        </div>
      </div>
    </div>
  </header>


  <nav class="navbar navbar-default sidebar" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
    </div>
    <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">프로젝트 소개<span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-home"></span></a></li>
        <li class="menu">
          <a href="/myapp/intro" class="menu" data-toggle="menu">프로젝트 소개<span></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
        </li>
                
      </ul>
    </div>
  </div>
  </nav>

      <section>
        <div class="container">
            <div class="row"><h3>귀농인구를 위한 국내외 농업 정보 및 국내 농산물가격 예측 서비스</h3></div><br/><br/><br/>
            <div class="row">
                <div class="col-sm-4 col-md-3 intro_button">
                    <h4 class="intro_name">기획의도</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg intro_button">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-intro_purpose">
                        <img class="rounded-circle intro_img" alt="기획의도" src="<c:url value="/resources/img/purpose.png"/>" data-holder-rendered="true">                    
                      </a>
                    </button>
                </div>
                <div class="col-sm-4 col-md-3 intro_button">
                  <h4 class="intro_name">분석목표</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg intro_button">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-intro_goal">
                      <img class="rounded-circle intro_img" alt="분석목표" src="<c:url value="/resources/img/goal.png"/>" data-holder-rendered="true">
                    </a>
                  </button>
                </div>
                <div class="col-sm-4 col-md-3 intro_button">
                  <h4 class="intro_name">사용 데이터</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg intro_button">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-data">
                      <img class="rounded-circle intro_img" alt="사용 데이터" src="<c:url value="/resources/img/data.png"/>" data-holder-rendered="true">
                    </a>
                  </button>
                </div>
                <div class="col-sm-4 col-md-3 intro_button">
                  <h4 class="intro_name">분석결과_1</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg intro_button">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-result_1">
                      <img class="rounded-circle intro_img" alt="분석결과_1" src="<c:url value="/resources/img/result_1.png"/>" data-holder-rendered="true">
                    </a>
                  </button>
                </div>
                <div class="col-sm-4 col-md-3 intro_button">
                  <h4 class="intro_name">분석결과_2</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg intro_button">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-result_2">
                      <img class="rounded-circle intro_img" alt="분석결과_2" src="<c:url value="/resources/img/result_2.png"/>" data-holder-rendered="true">
                    </a>
                  </button>
                </div>
            </div>
            
        <!-- modal -->
        <div class="modal fade" id="squarespaceModal-intro_purpose" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>기획 의도</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/purpose.png"/>" width="890px" height="600px">
                </div> </div>
            </div> </div>      
        </div>
        <div class="modal fade" id="squarespaceModal-intro_goal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>분석 목표</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/goal.png"/>" width="890px" height="500px">
                </div> </div>
            </div> </div>      
        </div>
        <div class="modal fade" id="squarespaceModal-data" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>사용 데이터</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/data.png"/>" width="890px" height="500px">
                </div> </div>
            </div> </div>      
        </div>
        <div class="modal fade" id="squarespaceModal-result_1" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>분석 결과_1</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/result_1.png"/>" width="890px" height="500px">
                </div> </div>
            </div> </div>      
        </div>
        <div class="modal fade" id="squarespaceModal-result_2" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>분석 결과_2</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/result_2.png"/>" width="890px" height="500px">
                </div> </div>
            </div> </div>      
        </div>
      </section>
      
      <footer>
        <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
        <p>Copyright 2021 Farmporter. All rights reserved.</p>
      </footer>

<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"/>"></script>
</body>
</html>