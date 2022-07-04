package com.s5.sand5rang.seonghoon.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Stock {

	private int stockNo;//    STOCK_NO NUMBER PRIMARY KEY NOT NULL,
	private Date sDate;//    SDATE DATE DEFAULT SYSDATE NOT NULL,
	private int count;//    COUNT NUMBER NOT NULL,
	private String status;//    STATUS VARCHAR2(1) DEFAULT 'O' NOT NULL ,	
	private String storeId;//    STORE_ID VARCHAR2(15) NOT NULL,
	private int gNo;//    G_NO NUMBER NOT NULL,
}
