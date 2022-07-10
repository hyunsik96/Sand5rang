package com.s5.sand5rang.sein.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.sein.service.SeinService;
import com.s5.sand5rang.sein.vo.Ingredient;

@Controller
public class SeinController {

	@Autowired
	private SeinService seinService;
	
	@RequestMapping(value="menu.ma")
    public String menuController()
    {
        return "main/menu";
    }
	
	@RequestMapping(value="aboutSand.ma")
    public String aboutController()
    {
        return "main/aboutSand";
    }
	
	@RequestMapping(value="branch.ma")
    public String branchController()
    {
        return "main/branch";
    }
	
	@RequestMapping(value="orderList.se")
    public String orderListController()
    {
        return "sein/orderlist";
    }
	
	/*발주 신청 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollForm.se")
    public String orderEnrollFormController()
    {
        return "sein/order_enroll";
    }
	
	/*발주 신청 insert용 */
	@RequestMapping(value="orderEnroll.se")
	public String orderEnrollController(int b_p, int b_w, Model m, HttpSession session) 
	{

		/*private int ingNo;	//원재료번호
		private String ingName;	//원재료명
		private int price;		//원재료가격
		private int expiration; //유통기한
		private String ingType;	//원재료종류*/
		
		/*IND_NO NUMBER PRIMARY KEY NOT NULL,                   --발주번호
		COUNT NUMBER  NOT NULL,                                 --발주갯수
		IND_DATE DATE DEFAULT SYSDATE NOT NULL,                 --발주날짜
		TOTAL NUMBER NOT NULL,                                  --발주총가격
		STATUS VARCHAR2(1) DEFAULT 'B' NOT NULL,                --발주상태(B > Y or N, AB > AY or N)
		STORE_ID VARCHAR2(15),                                  --가맹점아이디
		FOREIGN KEY (STORE_ID) REFERENCES STORE(STORE_ID) ON DELETE CASCADE,
		ING_NO NUMBER,                                          --원재료번호
		FOREIGN KEY (ING_NO) REFERENCES INGREDIENT(ING_NO) ON DELETE CASCADE*/

		HashMap<String, Integer> map = new HashMap<>();
		
		
		
		
		//1. 원재료 테이블에서 모든 값들을 조회해온다 
		//2. 조회된 값들을 ArrayList담에서 순차적으로 비교해준다. 
		//3. 일치된 값들은 수량, 발주총 가격만 뽑아온다 
		//4. 기존에 원재료 테이블에서 원재료 번호를 뽑아서 발주 상태, 발주날짜, 가맹점아이디(임시아이디), 발주번호(시퀀스)로 insert해주면 끝 ?
		
		ArrayList<Ingredient> ingreList= seinService.selectIngredient();
		
		for(int i=1; i<ingreList.size(); i++) {
			
		}
		
		System.out.println(ingreList);
		
		return "sein/order_enroll_result";
	}
	
	
	@RequestMapping(value="deposit.se")
    public String depositController()
    {
        return "sein/deposit";
    }
	
	@RequestMapping(value="depositList.se")
    public String depositListController()
    {
        return "sein/depositList";
    }
	
	
	
	
	
	
	
}
