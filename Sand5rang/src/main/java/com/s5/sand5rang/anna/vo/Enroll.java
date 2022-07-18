package com.s5.sand5rang.anna.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data

public class Enroll {

	private int enrNo; //문의번호 
	private String name; //이름
	private String address; //주소
	private String email; //이메일
	private String phone; //연락처
	private String title; //문의제목
	private String content; //문의내용
	private String status; //승인상태
}
