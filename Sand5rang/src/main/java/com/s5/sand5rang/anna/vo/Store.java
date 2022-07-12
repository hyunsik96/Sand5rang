package com.s5.sand5rang.anna.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor 
@Data

public class Store {
	
	private String storeId;
	private String StorePwd;
	private String StoreName; 
	private String Address; 
	private String Status; 
	private int enrNo; 

}
