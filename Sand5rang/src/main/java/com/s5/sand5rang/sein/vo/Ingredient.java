package com.s5.sand5rang.sein.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Ingredient {
	
	private int ingNo;	//원재료번호
	private String ingName;	//원재료명
	private int price;		//원재료가격
	private int expiration; //유통기한
	private String ingType;	//원재료종류
}
