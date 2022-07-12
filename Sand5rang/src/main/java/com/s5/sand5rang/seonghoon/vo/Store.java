package com.s5.sand5rang.seonghoon.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Store {
private String storeId;//	STORE_ID	VARCHAR2(15 BYTE)
private String storePwd;//	STORE_PWD	VARCHAR2(15 BYTE)
private String storeName;//	STORE_NAME	VARCHAR2(30 BYTE)
private String address;//	ADDRESS	VARCHAR2(200 BYTE)
private String status;//	STATUS	VARCHAR2(1 BYTE)
private int enrNo;//	ENR_NO	NUMBER
}
