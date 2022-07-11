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
	/*
	 * 매뉴를 추가 수정 삭제할 일이 생길 수 있기 때문에
	 * 원재료는 24개의 객체를, 메뉴는 15개의 객체를 만들어서 사용할 것.
	 * 
	 * */
	private int stockNo;//    STOCK_NO NUMBER PRIMARY KEY NOT NULL,
	private Date stoDate;//    SDATE DATE DEFAULT SYSDATE NOT NULL,
	private int count;//    COUNT NUMBER NOT NULL,
	private String status;//    STATUS VARCHAR2(1) DEFAULT 'O' NOT NULL ,	
	private String storeId;//    STORE_ID VARCHAR2(15) NOT NULL,
	private int ingNo;//    G_NO NUMBER NOT NULL,
	private String ingType;
}
