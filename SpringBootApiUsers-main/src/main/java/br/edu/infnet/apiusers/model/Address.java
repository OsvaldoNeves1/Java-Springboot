package br.edu.infnet.apiusers.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
class Address {
 
        @JsonProperty("street")
        private String street;
        @JsonProperty("suite")
        private String suite;
        @JsonProperty("city")
        private String city;
        @JsonProperty("zipcode")
        private String zipcode;
        @JsonProperty("geo")
        private Geo geo;
        
        
}
	

