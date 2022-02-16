package com.farmporter.myapp.dao;

import java.util.List;
import java.util.Map;

import com.farmporter.myapp.model.UserVO;
import com.farmporter.myapp.model.WpriceVO;


public interface IWpriceRepository {

	List<WpriceVO> getWorldPrice();

	}
