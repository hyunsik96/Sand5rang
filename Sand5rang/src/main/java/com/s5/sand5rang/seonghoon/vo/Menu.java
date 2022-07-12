package com.s5.sand5rang.seonghoon.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Menu {

private int menNo;//    MEN_NO NUMBER PRIMARY KEY NOT NULL,          -- 메뉴번호
private String menName;//    MEN_NAME VARCHAR2(50) NOT NULL,              -- 메뉴이름 
private int price;//    PRICE NUMBER NOT NULL,                       -- 메뉴가격
private String status;//    STATUS VARCHAR2(1) DEFAULT 'Y' NOT NULL      -- 상태(판매여부)
private String date;
private int count;
private int total;
private String storeId;
}
