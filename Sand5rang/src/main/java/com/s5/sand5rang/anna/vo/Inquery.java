package com.s5.sand5rang.anna.vo;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString

public class Inquery {

	private int inqId; //INQ_NO
	private String inqTitle; //INQ_TITLE
	private Date idate; //IDATE
	private String inqQuery; //INQ_QUERY
	private String inqAnswer; //INQ_ANSWER
	private String status; //STATUS
	private Date ansDate; // ANS_DATE
	private String category; //CATEGORY
	private String storeId; //STORE_ID

}
