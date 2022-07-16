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

public class Store {
	
	private String storeId; 	//가맹점아이디
	private String storePwd;	//가맹점비밀번호
	private String storeName;	//가맹점이름
	private String address;		//가맹점주소
	private String status;		//가맹점상태(폐업 : N/영업 : Y)
	private int enrNo;			//가맹점번호
	
	private String phone; //상미-새로추가
    private String email;//상미- 새로추가
    private String message;//상미- 새로추가
}
 