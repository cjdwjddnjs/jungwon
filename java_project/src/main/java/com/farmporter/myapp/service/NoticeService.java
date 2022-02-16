package com.farmporter.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farmporter.myapp.dao.INoticeRepository;
import com.farmporter.myapp.model.NoticeVO;

@Service
public class NoticeService implements INoticeService {

	@Autowired
	INoticeRepository NoticeRepository;

	@Override
	public List<NoticeVO> getNoticeList(){
		return NoticeRepository.getNoticeList();
	}
	@Override
	public NoticeVO getNoticeInfo(int noticeNo) {
		return NoticeRepository.getNoticeInfo(noticeNo);
	}
	
	@Override
	public void insertNotice(NoticeVO notice) {
		NoticeRepository.insertNotice(notice);	
	}
	
   @Override
   public void deleteNotice(int noticeNo) {
	   NoticeRepository.deleteNotice(noticeNo);
   }
}
