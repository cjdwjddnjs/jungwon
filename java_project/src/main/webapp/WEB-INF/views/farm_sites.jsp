<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>귀농 관련 사이트</title>
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
      <li class="active"><a href="#">귀농 관련 사이트<span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-home"></span></a></li>
      <li class="menu">
        <a href="/myapp/farm-sites" class="menu" data-toggle="menu">귀농 관련 사이트 <span></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
      </li>
    </ul>
  </div>
</div>
</nav>
    

<!-- 메인메뉴 -->

<section>
  <h3>귀농 관련 사이트</h3>
  <span class="counter pull-right"></span>
  <table class="table table-hover table-bordered results">
    <thead>
      <tr>
        <th class="col-md-2 col-xs-2">구분</th>
        <th class="col-md-5 col-xs-5">기관</th>
        <th class="col-md-5 col-xs-5">홈페이지</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="Sortation" rowspan = "5" style="vertical-align: middle; text-align:center;">정부기관</td>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">농촌진흥청</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="http://www.rda.go.kr/main/mainPage.do" target="_blank">www.rda.go.kr</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">농사로</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="http://www.nongsaro.go.kr/" target="_blank">www.nongsaro.go.kr</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">귀농귀촌종합센터</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="https://www.returnfarm.com:444/" target="_blank">www.returnfarm.com</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">웰촌</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="https://www.welchon.com/web/index.do" target="_blank">www.welchon.com</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">농업교육포털</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="https://agriedu.net/" target="_blank">agriedu.net</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class="Sortation" rowspan = "2" style="vertical-align: middle; text-align:center;">민간단체</td>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">귀농사모</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="https://banking.nonghyup.com/nhbank.html" target="_blank">banking.nonghyup.com</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">전국귀농운동본부</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-home" aria-hidden="true">
            <a href="http://www.refarm.org/" target="_blank">www.refarm.org</a>
          </span>
        </td>
      </tr>
      <tr>
      <tr>
        <td class="Sortation" rowspan = "2" style="vertical-align: middle; text-align:center;">금융기관</td>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">농협은행</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-usd" aria-hidden="true">
            <a href="https://banking.nonghyup.com/nhbank.html" target="_blank">banking.nonghyup.com</a>
          </span>
        </td>
      </tr>
      <tr>
        <td class = "Institution" style="vertical-align: middle; text-align:center;">농지은행</td>
        <td style="vertical-align: middle;">
          <span class="glyphicon glyphicon-usd">
            <a href="https://www.fbo.or.kr/index.do" target="_blank">www.fbo.or.kr/index.do</a>
          </span>
        </td>
      </tr>
    </tbody>
        
        
    
</table>
</section>    
    
 
<footer>
  <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
  <p>Copyright 2021 Farmporter. All rights reserved.</p>
</footer>
       
      
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"/>"></script>
</body>
</html>

  


