package com.example.demo.bd.model;

import lombok.Data;

@Data
public class couponVO {

	int originPrice;

	int calculatePrice;
	                                                                                      
    /**
     쿠폰 고유번호
    */
    private int cpnNo;
    
    /**
     쿠폰 이름 
    */
    private String cpnName;
    /**
     쿠폰 할인율
    */
    private int discountRate;
    /**
     쿠폰 적용 최대 금액
    */
    private int discountMaxPrice;
    /**
     쿠폰 적용 시작일
    */
    private String applySrtDt;
    /**
    쿠폰 적용 종료일
    */
    private String applyEntDt;
    /**
     자동생성 여부
    */
    private String autoYn;
    /**
     사용 여부
    */
    private String useYn;
    /**
     사용 날짜
    */
    private String useDt;
    
 
}
