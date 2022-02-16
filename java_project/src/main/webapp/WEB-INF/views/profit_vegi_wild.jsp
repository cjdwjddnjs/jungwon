<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>소득정보 노지채소</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">

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
              <ul class="dropdown-menu stay-open" role="menu">
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
              <ul class="dropdown-menu" role="menu">
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
            <div class="row"><h3>소득정보 - 노지채소</h3></div><br/><br/><br/><br/>
            <div class="row">
                <div class="col-sm-2 item_button">
                    <h4 class="item_name">양배추</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-cabbage">
                        <img class="item" class="rounded-circle" alt="양배추" src="<c:url value="/resources/img/vegi_wild/cabbage.png"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">당근</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-carrot">
                      <img class="item" class="rounded-circle" alt="당근" src="<c:url value="/resources/img/vegi_wild/carrot.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">쪽파</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-chivejj">
                      <img class="item" class="rounded-circle" alt="쪽파" src="<c:url value="/resources/img/vegi_wild/chive_jj.PNG"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">부추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-chivew">
                      <img class="item" class="rounded-circle" alt="부추" src="<c:url value="/resources/img/vegi_wild/chive.PNG"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">생강</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-ginger">
                      <img class="item" class="rounded-circle" alt="생강" src="<c:url value="/resources/img/vegi_wild/ginger.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
              </div>
                <div class="row">
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">대파</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-greenonion">
                      <img class="item" class="rounded-circle" alt="대파" src="<c:url value="/resources/img/vegi_wild/greenonion.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">가을배추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-lettucef">
                      <img class="item" class="rounded-circle" alt="가을배추" src="<c:url value="/resources/img/vegi_wild/lettuce.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">고랭지배추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-lettuceh">
                      <img class="item" class="rounded-circle" alt="고랭지배추" src="<c:url value="/resources/img/vegi_wild/lettuce.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">봄배추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-lettuces">
                      <img class="item" class="rounded-circle" alt="봄배추" src="<c:url value="/resources/img/vegi_wild/lettuce.jpg"/>"data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">가을무</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-raddishf">
                      <img class="item" class="rounded-circle" alt="가을무" src="<c:url value="/resources/img/vegi_wild/raddish.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">고랭지무</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-raddishh">
                        <img class="item" class="rounded-circle" alt="고랭지무" src="<c:url value="/resources/img/vegi_wild/raddish.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">봄무</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-raddishs">
                        <img class="item" class="rounded-circle" alt="봄무" src="<c:url value="/resources/img/vegi_wild/raddish.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">시금치</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-spinach">
                        <img class="item" class="rounded-circle" alt="시금치" src="<c:url value="/resources/img/vegi_wild/spinach.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">수박</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-waterm">
                        <img class="item" class="rounded-circle" alt="수박" src="<c:url value="/resources/img/vegi_wild/waterm.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  
            </div>
        </div>


          <!-- modal -->
          <div class="modal fade" id="squarespaceModal-cabbage" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 양배추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_cabbage.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-carrot" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 당근 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_carrot.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-chivejj" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 쪽파 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_chive_jj.PNG"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-chivew" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 부추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_chive_w.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-ginger" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 생강 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_ginger.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-greenonion" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 대파 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_greenonion.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-lettucef" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 가을배추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_lettuce_f.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-lettuceh" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 고랭지배추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_lettuce_h.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-lettuces" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 봄배추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_lettuce_s.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-raddishf" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 가을무 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_raddish_f.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-raddishh" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 고랭지무 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_raddish_h.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-raddishs" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 봄무 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_wild/profit_raddish_s.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>
            </div>
              <div class="modal fade" id="squarespaceModal-spinach" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="container">
                      <div class="row title_profit">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        <h2>소득정보 - 시금치 (0.1ha 기준)</h2></div><br/>
                      <div class="row">
                          <img src="<c:url value="/resources/img/vegi_wild/profit_spinach.png"/>" width="500px" height="500px">
                      </div> </div>
              </div> </div>
            </div>
              <div class="modal fade" id="squarespaceModal-waterm" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="container">
                      <div class="row title_profit">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        <h2>소득정보 - 수박 (0.1ha 기준)</h2></div><br/>
                      <div class="row">
                          <img src="<c:url value="/resources/img/vegi_wild/profit_waterm.png"/>" width="500px" height="500px">
                      </div> </div>
                </div> </div>  
              </div> 
                
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