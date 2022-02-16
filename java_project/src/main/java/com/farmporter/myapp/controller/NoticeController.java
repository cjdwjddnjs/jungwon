package com.farmporter.myapp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farmporter.myapp.model.NoticeVO;
import com.farmporter.myapp.service.INoticeService;


@Controller
public class NoticeController{
	
	@Autowired
	INoticeService NoticeService;

	@RequestMapping(value= {"/notice"})
	public String notice(Model model) {
		List<NoticeVO> notice = NoticeService.getNoticeList();
		model.addAttribute("notice",notice);
		return "notice";
	}

	@RequestMapping(value= "/notice/{noticeNo}")
	public String getNoticeInfo(@PathVariable int noticeNo, Model model) {
		NoticeVO notice = NoticeService.getNoticeInfo(noticeNo);
		model.addAttribute("notice",notice);
		return "notice_page";
	}
	
	@RequestMapping(value= "/notice_input", method=RequestMethod.GET)
	public String insertNotice(Model model) {
		return "/notice_input";
	}
	
	@RequestMapping(value= "/notice_input", method=RequestMethod.POST)
	public String insertNotice(NoticeVO notice, Model model) {
		NoticeService.insertNotice(notice);
		return "redirect:./notice";
	}
	
	@RequestMapping(value= "/notice_delete", method=RequestMethod.POST)
	public String deleteNotice(int noticeNo, Model model) {
		NoticeService.deleteNotice(noticeNo);
		return "redirect:./notice";
	}
	
}








