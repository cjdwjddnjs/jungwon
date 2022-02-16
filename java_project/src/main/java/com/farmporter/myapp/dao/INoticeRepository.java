package com.farmporter.myapp.dao;

import java.util.List;
import java.util.Map;

import com.farmporter.myapp.model.NoticeVO;
import com.farmporter.myapp.model.UserVO;
import com.farmporter.myapp.model.WpriceVO;


public interface INoticeRepository {

	List<NoticeVO>getNoticeList();

	NoticeVO getNoticeInfo(int noticeNo);
	
	void insertNotice(NoticeVO notice);
	
	void deleteNotice(int deleteNo);

	}
