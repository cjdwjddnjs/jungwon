<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>정착자금/대출</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/table.css" />" rel="stylesheet">
	
    <style>
      /* 구분 기관 주소  */ 
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
            <li class="active"><a href="#">귀농 가이드<span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-home"></span></a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">소득 정보 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/profit_crop">식량작물</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/profit_fruit">과수</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/profit_vegi_fac">시설채소</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/profit_vegi_wild">노지채소</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">가격 정보 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/predict">농산물 가격 예측</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/world_price">세계 주요식품 가격현황</a></li>
              </ul>
            </li>        
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">자금 정보 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
              <ul class="dropdown-menu stay-open" role="menu">
                <li><a href="/myapp/farmer_profit">농가 수입/소득</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/gov_land_cost">정부지원금/농지가격</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/loan_settle_cost">정착 자금/대출</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/cost_comparison">도시/농촌 지출 비교</a></li>
              </ul>
            </li>                
          </ul>
        </div>
      </div>
      </nav>

      <section>
        <div class="container">
            <div class="row"><h3>정착 자금/대출</h3></div><br/><br/>
            <div class="row">
                <div class="col-sm-4 col-md-3 ini_button">
                    <h4 class="ini_name">정착자금 마련방법</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg ini_button">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-ini_method">
                        <img class="rounded-circle ini_img" src="<c:url value="/resources/img/ini_cost_method.png" />" alt="정착자금 대출방법" data-holder-rendered="true">
                      	
                      </a>
                    </button>
                </div>
                <div class="col-sm-4 col-md-3 ini_button">
                  <h4 class="ini_name">정착자금 사용처</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg ini_button">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-ini_usage">
                      <img class="rounded-circle ini_img" src="<c:url value="/resources/img/ini_cost_usage.png" />" alt="정착자금 사용처"  data-holder-rendered="true">
                     
                    </a>
                  </button>
                </div>
            </div>
            
              <h4 style="margin-top: 10%;"><strong>귀농 농업창업 및 주택구입지원자금</h4></strong>

              <table class="table table-bordered results">
                
              
                  <tr>
                    <th class="col-md-2 col-xs-2" style="vertical-align: middle; text-align:center;">상품특징</th>
                    <td class="col-md-8 col-xs-8">* 귀농인에게 농업창업 및 주거 마련 자금을 지원함으로 안정적인 농촌의 정착 및 농업 인력구조 개선, 지역 활성화 추진을 <br>&nbsp&nbsp&nbsp위한 농업정책자금대출</th>
                  </tr>
                
                
                  <tr>
                    <th style="vertical-align: middle; text-align:center;">대출대상</td>
                    <td style="vertical-align: middle;">* 사업대상자 요건을 충족하면서 시장·군수가 귀농 농업창업 및 주택구입지원사업 대상자 선정심사위원회의 심사를 통해 <br>&nbsp&nbsp&nbsp사업대상자로 선발한 자
                      ※ 당행 신용평가 등에 따라 대출이 제한될 수 있으며, 대출대상에 대한 자세한 내용은 NH농협은행 <br>&nbsp&nbsp&nbsp영업점으로 문의해 주시기 바랍니다.</td>
                  </tr>
                  <tr>
                    <th style="vertical-align: middle; text-align:center;">대출기간</td>
                    <td style="vertical-align: middle;">* 15년(5년 거치 10년 원금균등상환)</td>
                  </tr>
                  <tr>
                    <th class = "Institution" style="vertical-align: middle; text-align:center;">대출한도</td>
                    <td style="vertical-align: middle;">* 농업창업자금 : (세대당) 최고 3억원이내
                      주택구입·신축 및 증·개축 자금 : (세대당) 최고 7,500만원이내
                  </tr>
                  <tr>
                    <th class = "Institution" style="vertical-align: middle; text-align:center;">담보 및 보증여부</td>
                    <td style="vertical-align: middle;">* 여(무입보 신용, 담보)</td>
                  </tr>
     
            </table>
          

        

        <!-- modal -->
        <div class="modal fade" id="squarespaceModal-ini_method" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>정착자금 마련방법</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/ini_cost_method.png" />" width="800px" height="600px">
                    
                </div> </div>
            </div> </div>      
        </div>
        <div class="modal fade" id="squarespaceModal-ini_usage" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="container">
                <div class="row title_ini">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h2>정착자금 사용처</h2></div><br/>
                <div class="row">
                    <img src="<c:url value="/resources/img/ini_cost_usage.png"/>" width="890px" height="600px">
                    
                </div> </div>
            </div> </div>      
        </div>
      </section>
      
      <footer>
        <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
        <p>Copyright 2021 Farmporter. All rights reserved.</p>
      </footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>