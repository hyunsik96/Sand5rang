package com.s5.sand5rang.seonghoon.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Expiration {
	
	private int ingNo; // 재료번호
	private int count; // 몇개 까줄지 (업데이트할지)
	private int expiration; // 유통기한 몇일인지
	private int day0; // 오늘입고된 해당재료 재고
	private int day1; // 어제 입고된 해당재료 재고
	private int day2;
	private int day3;
	private int day4;
	private int day5;
	private int day6;
	private int day7;
	private int day8;
	private int day9;
	private int day10;
	private int day11;
	private int day12;
	private int day13;


}
