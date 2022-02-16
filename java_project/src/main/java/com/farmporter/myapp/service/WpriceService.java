package com.farmporter.myapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.farmporter.myapp.dao.IUserRepository;
import com.farmporter.myapp.dao.IWpriceRepository;
import com.farmporter.myapp.model.UserVO;
import com.farmporter.myapp.model.WpriceVO;

@Service
public class WpriceService implements IWpriceService {
	
	@Autowired
	IWpriceRepository wpriceRepository;
	
	@Override
	public List<WpriceVO> getWorldPrice() {
		return wpriceRepository.getWorldPrice();
	}
}
