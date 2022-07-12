package com.s5.sand5rang.anna.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor 
@Data

public class Inquery {

	private int inqNo; 
	private String inqTitle; 
	private String inqDate; 
	private String inqQuery; 
	private String inqAnswer; 
	private String status;
	private String ansDate; 
	private String category;
	private String storeId;
	
	private String storeName; 

}
