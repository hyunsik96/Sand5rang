package com.s5.sand5rang.sein.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//생성자가 만들어지는 것이 아니라 눈속임 하는것 !! 
@NoArgsConstructor	//기본생성자
@AllArgsConstructor	//모든 필드를 매개변수로 갖는 생성자 
@Setter				//모든 필드들의 setter메소드들 생성
@Getter				//모든 필드들의 getter메소드들 생성
@ToString			//toString 메소드 생성
public class Order {

	private int indNo;			//발주번호
	private int count;			//발주갯수
	private Date indDate;		//발주날짜
	private String inDate;		//setter를 위한 inDate
	private int total;			//발주총가격
	private String status;		//발주상태
	private String storeId;		//가맹점아이디
	private int ingNo;			//원재료번호
	private String ingName;		//원재료이름
	private String ingType;		//원재료종류
	private String rowNo;		//발주select rowNum
	private int price;			//원재료가격
	private String indD;		//발주날짜(시/분/초)
	private int bal;			//잔액
	private int b;
	private int v;
	private int c;
	private int m;
	private int s;
	
}
