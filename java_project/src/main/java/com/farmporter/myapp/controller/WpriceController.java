package com.farmporter.myapp.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farmporter.myapp.model.WpriceVO;
import com.farmporter.myapp.service.IWpriceService;


@Controller
public class WpriceController{
	
	@Autowired
	IWpriceService wpriceService;

	@RequestMapping(value= {"/world_price"})
	public String worldPrice(Model model) {
		List<WpriceVO> wPrice = wpriceService.getWorldPrice();
		model.addAttribute("wPrice", wPrice);
		return "world_price";}

	
}








