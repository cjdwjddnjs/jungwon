package com.farmporter.myapp.model;

import java.sql.Date;

public class NoticeVO {
   int noticeNo;
   String title;
   String content;
   String userId_2;
   Date regDate;
   Date updateDate;
   String writer;
   private int rowNum;
   
   public int getRowNum() {
	return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
public int getNoticeNo() {
      return noticeNo;
   }
   public void setNoticeNo(int noticeNo) {
      this.noticeNo = noticeNo;
   }
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   
   public String getUserId_2() {
      return userId_2;
   }
   public void setUserId_2(String UserId_2) {
      this.userId_2 = UserId_2;
   }
   public Date getRegDate() {
      return regDate;
   }
   public void setRegDate(Date regDate) {
      this.regDate = regDate;
   }
   public Date getUpdateDate() {
      return updateDate;
   }
   public void setUpdateDate(Date updateDate) {
      this.updateDate = updateDate;
   }
   public String getWriter() {
	return writer;
   }
   public void setWriter(String writer) {
	this.writer = writer;
   }

   @Override
public String toString() {
	return "NoticeVO [noticeNo=" + noticeNo + ", title=" + title + ", content=" + content + ", userId_2=" + userId_2
			+ ", regDate=" + regDate + ", updateDate=" + updateDate + ", writer=" + writer + ", rowNum=" + rowNum + "]";
}

}