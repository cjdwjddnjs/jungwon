// IUserService

package com.farmporter.myapp.service;

import java.util.List;
import java.util.Map;

import com.farmporter.myapp.model.AuthInfo;
import com.farmporter.myapp.model.SignUpVO;
import com.farmporter.myapp.model.UserVO;


public interface IUserService {
   
   /* 회원 정보 조회 (아이디로) */
   UserVO getUserInfo(String userId);
   
   /* 로그인 정보 일치 체크 */
   UserVO getUserCheck(String userid, String password);
   
   /* 회원 수 조회 */
   int getUserCount();
   
   /* 가입한 회원 리스트 조회 */
   List<UserVO> getUserList();
   
   /* 회원가입(SignUpVO) */
   void insertUser(SignUpVO signup);
   
   /* 회원 정보 업데이트 */
   void updateUser(UserVO user);

   AuthInfo authenticate(String userId, String password);

}