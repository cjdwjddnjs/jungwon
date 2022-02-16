package com.farmporter.myapp.service;

import java.util.List;

import com.farmporter.myapp.model.NoticeVO;

public interface INoticeService {
	
	List<NoticeVO> getNoticeList();

	NoticeVO getNoticeInfo(int noticeNo);
	
	void insertNotice(NoticeVO notice);
	
	void deleteNotice(int noticeNo);

}
