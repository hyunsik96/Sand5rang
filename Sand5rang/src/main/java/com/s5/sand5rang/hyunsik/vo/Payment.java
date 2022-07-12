package com.s5.sand5rang.hyunsik.vo;

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
public class Payment {
	
	private int payNo;
	private int deposit;
	private int withdraw;
	private int total;
	private String date;
	private String storeId;
	private String storeName;
	private String email;

}
