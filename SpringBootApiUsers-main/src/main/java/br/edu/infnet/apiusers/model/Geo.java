package br.edu.infnet.apiusers.model;

import com.fasterxml.jackson.annotation.JsonProperty;

class Geo {
 
	@JsonProperty("lat")
	private String lat;
	@JsonProperty("lng")
	private String lng;

	@JsonProperty("lat")
	public String getLat() {
		return lat;
	}

	@JsonProperty("lat")
	public void setLat(String lat) {
		this.lat = lat;
	}

	@JsonProperty("lng")
	public String getLng() {
		return lng;
	}

	@JsonProperty("lng")
	public void setLng(String lng) {
		this.lng = lng;
	}

	
}
