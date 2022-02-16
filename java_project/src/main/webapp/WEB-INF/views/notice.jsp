<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>공지사항</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/table.css" />" rel="stylesheet">

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

<!-- 좌측 네비바 -->
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
      <li class="active"><a href="#">알림소식<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
      <li class="menu">
        <a href="/myapp/notice" class="menu" data-toggle="menu">공지 사항 <span></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
      </li>
    </ul>
  </div>
</div>
</nav>
<!-- 좌측 네비바 -->


<!-- 메인메뉴 -->
<section >
  <h3>공지사항</h3>
  <span class="counter pull-right"></span>
  <table class="table table-hover table-bordered results">
    <thead>
      <tr>
        <th class="col-md-1 col-xs-1" style="vertical-align: middle; text-align:center;">번호</th>
        <th class="col-md-5 col-xs-5" style="vertical-align: middle; text-align:center;">제목</th>
        <th class="col-md-2 col-xs-2" style="vertical-align: middle; text-align:center;">작성자</th>
        <th class="col-md-2 col-xs-2" style="vertical-align: middle; text-align:center;">등록일</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="notice" items="${notice}">
      <tr>
        <td class = "number" style="vertical-align: middle; text-align:center;">${notice.rowNum}</td>
        <td class = "title" style="vertical-align: middle; text-align:center;">
            <a href="/myapp/notice/${notice.noticeNo}/">${notice.title}</a>
        </td>
        <td style = "vertical-align: middle; text-align:center;">${notice.writer}</td>
        <td style = "vertical-align: middle; text-align:center;">${notice.regDate}</td>
      </tr>


      </c:forEach>
    </tbody>
  </table>

    <c:if test="${authInfo.id == 'admin'}">
  		<button type="submit"class="btn btn-default" style="float: right;">
    		<a href= "/myapp/notice_input" style= "color: black;">글쓰기</a>
  		</button>
    </c:if>
    
<!-- 메인메뉴 -->

<!-- 하단 네비게이션바 -->
 
  <nav class="numberBar">
    <ul class="pagination">
      <li>
        <a href="#" aria-label="Previous"> 
          <span aria-hidden="true">&laquo;</span>
        </a>
        <a href="#" aria-label="Previous">
          <span aria-hidden="true">   &lt;</span>
        </a>
      </li>
      <li class="active"><a href="#">1</a></li>
      <li class="disabled"><a href="#">2</a></li>
      <li class="disabled"><a href="#">3</a></li>
      <li class="disabled"><a href="#">4</a></li>
      <li class="disabled"><a href="#">5</a></li>
      <li>
        <a href="#" aria-label="Previous">
          <span aria-hidden="true">   &gt;</span>
        </a>
        <a href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
        </a>
      </li>
    </ul>
  </nav>    
        
    
</section>        

<footer>
  <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
  <p>Copyright 2021 Farmporter. All rights reserved.</p>
</footer>
       
       
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>

  




