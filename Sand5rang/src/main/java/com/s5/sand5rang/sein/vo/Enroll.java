package com.s5.sand5rang.sein.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Enroll {
	private int enrNo;			
	private String storeName;	
	private String enrollAdd;	
	private String email;		
	private String phone;		
	private String title;		
	private String content;		
	private String status;		
}
