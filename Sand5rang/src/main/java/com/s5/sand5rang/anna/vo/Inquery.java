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

	private int inqId; 
	private String inqTitle; 
	private Date idate; 
	private String inqQuery; 
	private String inqAnswer; 
	private String status;
	private Date ansDate; 
	private String category;
	private String storeId;

}
