package com.farmporter.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.farmporter.myapp.model.NoticeVO;

@Repository
public class NoticeRepository implements INoticeRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	private class NoticeMapper implements RowMapper<NoticeVO>{
		@Override
		public NoticeVO mapRow(ResultSet rs, int count) throws SQLException{
			NoticeVO notice = new NoticeVO();
			notice.setTitle(rs.getString("title"));
			notice.setContent(rs.getString("content"));
			notice.setUserId_2(rs.getString("userid_2"));
			notice.setNoticeNo(rs.getInt("noticeNo"));
			notice.setUpdateDate(rs.getDate("updateDate"));
			notice.setRegDate(rs.getDate("regDate"));
			notice.setWriter(rs.getString("writer"));
			return notice;
		}
	}
	
	@Override
	   public List<NoticeVO> getNoticeList() {
	      String sql = "SELECT * FROM (SELECT ROWNUM NUM, N.* FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC) N) WHERE ROWNUM BETWEEN 1 AND 5";
	      return jdbcTemplate.query(sql, new RowMapper<NoticeVO>() {
	         @Override
	         public NoticeVO mapRow(ResultSet rs, int count) throws SQLException{
	            NoticeVO notice = new NoticeVO();
	            notice.setNoticeNo(rs.getInt("NOTICENO"));
	            notice.setTitle(rs.getString("TITLE"));
	            notice.setContent(rs.getString("CONTENT"));
	            notice.setUserId_2(rs.getString("USERID_2"));
	            notice.setRegDate(rs.getDate("REGDATE"));
	            notice.setUpdateDate(rs.getDate("UPDATEDATE"));
	            notice.setWriter(rs.getString("WRITER"));
	            notice.setRowNum(rs.getInt("NUM"));
	            return notice;
	         }
	      });
	   }
	
	@Override
	   public NoticeVO getNoticeInfo(int noticeNo) {
	      String sql = "select noticeNo, title, content, userid_2, regdate, updatedate, writer from notice where noticeNo=?";
	      return jdbcTemplate.queryForObject(sql, new NoticeMapper(), noticeNo);
	   }
	
	@Override
	public void insertNotice(NoticeVO notice) {
		String sql = "insert into notice (noticeNo, title, content, writer)"
					+ " values(SEQ.nextval,?,?,?)";
		jdbcTemplate.update(sql, 
				notice.getTitle(),
				notice.getContent(),
				notice.getWriter());
	}
	
	@Override
	public void deleteNotice(int noticeNo) {
		String sql = "delete from notice where noticeNo=?";
		jdbcTemplate.update(sql, noticeNo);
	}
		

}