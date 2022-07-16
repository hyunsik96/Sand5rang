package com.s5.sand5rang.sein.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Payment {

	private int payNo;			//	PAY_NO	
	private int deposit;		//	입금액
	private int withdraw;		//	출금액
	private int bal;			// 	현재잔액
	private Date payDate;		//	입출금날짜
	private String storeId;		//	가맹점id

}
