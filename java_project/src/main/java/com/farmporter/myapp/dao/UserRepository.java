// UserRepository

package com.farmporter.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.farmporter.myapp.model.AuthInfo;
import com.farmporter.myapp.model.SignUpVO;
import com.farmporter.myapp.model.UserVO;


@Repository
public class UserRepository implements IUserRepository{
   
	
   @Autowired
   JdbcTemplate jdbcTemplate;
   
   private class UserMapper implements RowMapper<UserVO>{
      @Override
      public UserVO mapRow(ResultSet rs, int count) throws SQLException{
         UserVO user = new UserVO();
         user.setUserId(rs.getString("userid"));
         user.setName(rs.getString("name"));
         user.setPassword(rs.getString("password"));
         user.setBirthDate(rs.getDate("birthdate"));
         user.setEmail(rs.getString("email"));
         return user;
      }
   }
   
   private class UserMapperLogin implements RowMapper<UserVO>{
      @Override
      public UserVO mapRow(ResultSet rs, int count) throws SQLException{
         UserVO user = new UserVO();
         user.setUserId(rs.getString("userid"));
         user.setName(rs.getString("name"));
         user.setPassword(rs.getString("password"));
         user.setBirthDate(rs.getDate("birthdate"));
         user.setEmail(rs.getString("email"));
         return user;
      }
   }
   
      @Override
   public void insertUser(SignUpVO signup) {
      String sql = "insert into farm_user (userid, name, password,"
            + "birthdate, email)"
            + "values(?,?,?,?,?)";
      int result = jdbcTemplate.update(sql,
            signup.getUserId(),
            signup.getName(),
            signup.getPassword(),
            signup.getBirthDate(),
            signup.getEmail());
   }
   
   /* ȸ�� ���� ��ȸ (���̵��) */
     @Override
     public UserVO getUserInfo(String userid) { 
        String sql = "select userid, name, password," 
                    +   "birthdate, email from farm_user where userid=?"; 
     return jdbcTemplate.queryForObject(sql, new UserMapper(), userid); 
    }   
     
     @Override
     public UserVO getUserCheck(String userid, String password) { 
        String sql = "select userid, name, password," 
                 +   "birthdate, email from farm_user where userid=?";  
     UserVO userVO =  jdbcTemplate.queryForObject(sql, new UserMapperLogin(), userid);
     return userVO;
    }     
     
   @Override
     public int getUserCount() {
   String sql = "select count(*) from farm_user";
   return jdbcTemplate.queryForObject(sql, Integer.class);
   }
   
   @Override
   public List<UserVO> getUserList() {
      String sql = "select * from farm_user";
      return jdbcTemplate.query(sql, new RowMapper<UserVO>() {
         @Override
         public UserVO mapRow(ResultSet rs, int count) throws SQLException{
            UserVO user = new UserVO();
            user.setUserId(rs.getString("userid"));
            user.setName(rs.getString("name"));
            user.setPassword(rs.getString("password"));
            user.setBirthDate(rs.getDate("birthdate"));
            user.setEmail(rs.getString("email"));
            return user;
         }
      });
   }
   
   /* ȸ�� ���� ������Ʈ */
     @Override
     public void updateUser(UserVO user) { String sql =
     "update farm_user " +" set name=?, email=?," +
     "birthdate=?, password=? where userid=?"; 
     jdbcTemplate.update(sql,
     user.getName(), user.getEmail(),
     user.getBirthDate(), user.getPassword(), user.getUserId()); 
     }


	@Override
	public AuthInfo authenticate(String userId, String password) {
		return new AuthInfo(userId, password);
	}


     

}