<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="<c:url value= "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>" rel="stylesheet"> 
  <link href="<c:url value= "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"/> "rel="stylesheet"> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

  <!-- login.css -->
  <link href= "<c:url value= "/resources/css/login.css"/>" rel="stylesheet"> 
  
  <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

  <title>Login Page</title>
</head>
<body>
  <div class="jumbotron">
      <h1 class="display-4">Welcome to <strong><a href="/myapp/main_page" class="noline">Farmporter</a></strong> </h1>
      <br>
      <p>
        We support your return to farm!
      </p>
      <hr class="my-4">
  </div>

  <div class="wrapper">
    <div id="formContent">        
      <!-- Login Form -->
      <form id="login_form"  method="post"  action="/myapp/loginCheck">
        <input type="text" id="userid" name="userid" placeholder="id">
        <input type="password" id="password" name="password" placeholder="password">
        <input type="submit" class="login_button" value="Log In" >
      </form>
  
      <!-- Remind Information -->
      <div id="formFooter">
        <a href="/myapp/agreement">회원 가입</a>
        <a href="#" data-toggle="modal" data-target="#squarespaceModal-id">아이디 찾기</a>
        <a href="#" data-toggle="modal" data-target="#squarespaceModal-pw">비밀번호 찾기</a>
      </div>    
    </div>
  </div>  
 
   
  <!-- line modal 아이디 찾기 -->
  <div class="modal fade" id="squarespaceModal-id" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h3 class="modal-title" id="lineModalLabel">아이디 찾기</h3>
        </div>
        <div class="modal-body">
          
          <!-- content goes here -->
          <form>
            <div class="form-group">
              <label for="exampleInputEmail1">이메일</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <div class="btn-group btn-group-justified" role="group" aria-label="group button">
            <div class="btn-group" role="group">
              <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">닫기</button>
            </div>
            <div class="btn-group btn-delete hidden" role="group">
              <button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
            </div>
            <div class="btn-group" role="group">
              <button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">검색</button>
            </div>
          </div>
        </div>
      </div>
    </div>      
  </div>

  <!-- line modal 비밀번호 찾기 -->
  <div class="modal fade" id="squarespaceModal-pw" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <h3 class="modal-title" id="lineModalLabel">비밀번호 찾기</h3>
        </div>
        <div class="modal-body">
          
          <!-- content goes here -->
          <form>
            <div class="form-group">
              <label for="exampleInputEmail1">이메일</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">이름</label>
              <input type="email" class="form-control" id="exampleInputName" placeholder="이름을 입력하세요">
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <div class="btn-group btn-group-justified" role="group" aria-label="group button">
            <div class="btn-group" role="group">
              <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">닫기</button>
            </div>
            <div class="btn-group btn-delete hidden" role="group">
              <button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
            </div>
            <div class="btn-group" role="group">
              <button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">임시 비밀번호 발송</button>
            </div>
          </div>
        </div>
      </div>
    </div>      
  </div>

<!-- <script> 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){        
        /* alert("로그인 버튼 작동"); */
        
        /* 로그인 메소드 서버 요청 */
        $("#login_form").attr("action");
       $("#login_form").submit();
    }); 
</script>  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>