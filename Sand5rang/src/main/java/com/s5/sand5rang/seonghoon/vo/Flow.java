package com.s5.sand5rang.seonghoon.vo;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Flow {
	
private int floNo;//	FLO_NO	NUMBER
private int count;//	COUNT	NUMBER
private Date floDate;//	FLO_DATE	DATE
private String status;//	STATUS	VARCHAR2(1 BYTE)
private String storeId;//	STORE_ID	VARCHAR2(15 BYTE)
private int ingNo;//	ING_NO	NUMBER
private String ingType;
}

