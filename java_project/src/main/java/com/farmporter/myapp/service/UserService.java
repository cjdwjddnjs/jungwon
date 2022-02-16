//User Service

package com.farmporter.myapp.service;

import java.security.InvalidParameterException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Service;

import com.farmporter.myapp.dao.IUserRepository;
import com.farmporter.myapp.model.AuthInfo;
import com.farmporter.myapp.model.SignUpVO;
import com.farmporter.myapp.model.UserVO;

@Service
public class UserService implements IUserService {
   
   @Autowired
   IUserRepository userRepository;
   
   /* 회원 정보 조회 (아이디로) */
   @Override
    public UserVO getUserInfo(String userid) { 
      return userRepository.getUserInfo(userid);
   }
   
   /* 로그인 정보 일치 체크 */
   @Override
   public UserVO getUserCheck(String userid, String password) {
      UserVO userVo = new UserVO();
      try {
          userVo = userRepository.getUserCheck(userid, password);
      } catch( Exception e) {
         e.printStackTrace();
      }
      return userVo;
   }
   
   /* 회원 수 조회 */
   @Override
   public int getUserCount() {
      return userRepository.getUserCount();
   }
   
   /* 가입한 회원 리스트 조회 */
   @Override
   public List<UserVO> getUserList() {
      return userRepository.getUserList();
   }
   
   /* 회원가입(SignUpVO) */
   @Override
   public void insertUser(SignUpVO signup) throws UncategorizedSQLException, DuplicateKeyException {
      // 비밀번호 유효성 검사 
      if(!signup.getPassword().equals(signup.getPasswordCheck())) {
         throw new InvalidParameterException();
      }
      try {
         userRepository.insertUser(signup);
      } catch(Exception e) {
         e.printStackTrace();
      }
   }
   
   /* 회원 정보 업데이트 */
   @Override
   public void updateUser(UserVO user) {
      userRepository.updateUser(user);
   }

	@Override
	public AuthInfo authenticate(String userId, String password) {
		// TODO Auto-generated method stub
		return userRepository.authenticate(userId, password);
	}
   
   

      
}