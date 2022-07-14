package com.s5.sand5rang.seonghoon.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Ingredient {

	private int ingNo;//	ING_NO	NUMBER
	private String ingName;//	ING_NAME	VARCHAR2(30 BYTE)
	private int price;//	PRICE	NUMBER
	private int expiration;//	EXPIRATION	NUMBER
	private String ingType;//	ING_TYPE	VARCHAR2(10 BYTE)
	private int count;
	private int index;
	private int use; // 까줄개수를 재고에서 빼서 업데이트시켜줄 뭐시기
	private String storeId;
}
