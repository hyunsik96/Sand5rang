package com.s5.sand5rang.hyunsik.vo;

import java.sql.Date;

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
public class Indent {
	
	private int indNo;
	private int count;
	private String date;
	private int total;
	private String status; // 발주상태(B > Y or N, AB > AY or N)
	private String storeId;
	private int ingNo;
	private String storeName;


}
