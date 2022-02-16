package com.farmporter.myapp.model;


public class WpriceVO {

	private String indicator;
	private String weekEnded;
	private String unit;
	private String latestPrice;
	private String previousWeek;
	private String weeklyChange;
	private String priceYearAgo;
	private String annualChange;
	
	public String getIndicator() {
		return indicator;
	}
	public void setIndicator(String indicator) {
		this.indicator = indicator;
	}
	public String getWeekEnded() {
		return weekEnded;
	}
	public void setWeekEnded(String weekEnded) {
		this.weekEnded = weekEnded;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getLatestPrice() {
		return latestPrice;
	}
	public void setLatestPrice(String latestPrice) {
		this.latestPrice = latestPrice;
	}
	public String getPreviousWeek() {
		return previousWeek;
	}
	public void setPreviousWeek(String previousWeek) {
		this.previousWeek = previousWeek;
	}
	public String getWeeklyChange() {
		return weeklyChange;
	}
	public void setWeeklyChange(String weeklyChange) {
		this.weeklyChange = weeklyChange;
	}
	public String getPriceYearAgo() {
		return priceYearAgo;
	}
	public void setPriceYearAgo(String priceYearAgo) {
		this.priceYearAgo = priceYearAgo;
	}
	public String getAnnualChange() {
		return annualChange;
	}
	public void setAnnualChange(String annualChange) {
		this.annualChange = annualChange;
	}
	
	@Override
	public String toString() {
		return "WorldPriceVO [indicator=" + indicator + ", weekEnded=" + weekEnded + ", unit=" + unit + ", latestPrice="
				+ latestPrice + ", previousWeek=" + previousWeek + ", weeklyChange=" + weeklyChange + ", priceYearAgo="
				+ priceYearAgo + ", annualChange=" + annualChange + "]";
	}
	
}
