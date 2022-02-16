package com.farmporter.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.farmporter.myapp.model.UserVO;
import com.farmporter.myapp.model.WpriceVO;


@Repository
public class WpriceRepository implements IWpriceRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class WpriceMapper implements RowMapper<WpriceVO>{
		@Override
		public WpriceVO mapRow(ResultSet rs, int count) throws SQLException{
			WpriceVO wPrice = new WpriceVO();
			wPrice.setIndicator(rs.getString("indicator"));
			wPrice.setWeekEnded(rs.getString("weekended"));
			wPrice.setUnit(rs.getString("unit"));
			wPrice.setLatestPrice(rs.getString("latestprice"));
			wPrice.setPreviousWeek(rs.getString("previouseweek"));
			wPrice.setWeeklyChange(rs.getString("weeklychange"));
			wPrice.setPriceYearAgo(rs.getString("priceyearago"));
			wPrice.setAnnualChange(rs.getString("annualchange"));
			return wPrice;
		}
	}


	@Override
	public List<WpriceVO> getWorldPrice() {
		String sql = "select * from world_price";
		return jdbcTemplate.query(sql, new RowMapper<WpriceVO>() {
			@Override
			public WpriceVO mapRow(ResultSet rs, int count) throws SQLException{
				WpriceVO wPrice = new WpriceVO();
				wPrice.setIndicator(rs.getString("indicator"));
				wPrice.setWeekEnded(rs.getString("weekended"));
				wPrice.setUnit(rs.getString("unit"));
				wPrice.setLatestPrice(rs.getString("latestprice"));
				wPrice.setPreviousWeek(rs.getString("previouseweek"));
				wPrice.setWeeklyChange(rs.getString("weeklychange"));
				wPrice.setPriceYearAgo(rs.getString("priceyearago"));
				wPrice.setAnnualChange(rs.getString("annualchange"));
				return wPrice;
			}
		});
	}

}
