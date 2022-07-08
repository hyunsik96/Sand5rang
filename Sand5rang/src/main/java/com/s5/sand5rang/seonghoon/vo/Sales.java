package com.s5.sand5rang.seonghoon.vo;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Sales {

private int salNo; //    SAL_NO NUMBER NOT NULL PRIMARY KEY,         --판매번호
private Date salDate;//    SAL_DATE DATE DEFAULT SYSDATE NOT NULL,     --판매날짜
private int count;//    COUNT NUMBER NOT NULL,                      --판매갯수
private int total;//    TOTAL NUMBER NOT NULL,                      --총판매액
private String storeId;
private int menNo;
//    -- 외래키
//    STORE_ID VARCHAR2(15) NOT NULL,             --가맹점아이디
//    FOREIGN KEY (STORE_ID) REFERENCES STORE(STORE_ID) ON DELETE CASCADE,
//    MEN_NO NUMBER NOT NULL,                     --메뉴번호
//    FOREIGN KEY (MEN_NO) REFERENCES MENU(MEN_NO)
}
