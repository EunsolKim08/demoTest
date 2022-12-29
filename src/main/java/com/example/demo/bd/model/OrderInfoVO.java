package com.example.demo.bd.model;

import java.text.DecimalFormat;

import lombok.Data;

@Data
public class OrderInfoVO {
	private DecimalFormat formatter;
	 /**
    * 결제 방식 코드
   */
   private String setleMthdCode;
	/**
	 * 회원 번호
	 */
	private String mberNo;
	/**
	 * 주문 업체 명
	 */
	private String orderEntrpsNm;
	/**
	 * 주문자명
	 */
	private String ordrrNm;
	/**
	 * 주문자 휴대폰 번호
	 */
	private String ordrrMoblphonNo;
	/**
	 * 주문 일자
	 */
	private String orderDe;
	/**
	 * 주문 번호
	 */
	private String orderNo;
	/**
	 * 금속명
	 */
	private String metalNm;
	/**
	 * 상품명
	 */
	private String goodsNm;
	/**
	 * 상품 단가
	 */
	private String goodsUntpc;
	/**
	 * 총 실제 주문 중량
	 */
	private String totRealOrderWt;
	/**
	 * 주문 상품가격
	 */
	private String goodsPc;
	/**
	 * 총 확정 중량
	 */
	private String totDcsnWt;
	/**
	 * 총 확정 주문 가격
	 */
	private String totDcsnOrderPc;
	/**
	 * 정산 중량
	 */
	private String excclcWt;
	/**
	 * 정산 주문 가격
	 */
	private String excclcPc;
	/**
	 * 중량변동금
	 */
	private String wtChangegld;
	/**
	 * 예상 배송비
	 */
	private String expectDlvrf;
	/**
	 * 정산 배송비
	 */
	private String excclcDlvyCt;
	/**
	 * 공급가
	 */
	private String splpc;
	/**
	 * 부가세
	 */
	private String vat;
	/**
	 * 판매가
	 */
	private String slepc;
	/**
	 * 주문자 이메일
	 */
	private String ordrrEmail;
	/**
	 * 정산 공급가
	 */
	private String excclcSplpc;
	/**
	 * 정산 부가세
	 */
	private String excclcVat;
	/**
	 * 정산 금액
	 */
	private String excclcAmount;
	/**
	 * 회원 구분 코드
	 */
	private String mberSeCode;
	/**
    * 최초 결제 금액
   */
   private String frstSetleAmount;
  /**
    * 미 결제 금액
   */
   private String unSetleAmount;
   /**
    * 결제일
   */
   private String payDate;
   /**
    * 결제 예정일 
    */
   private String setlePrearngeDe;
   /**
    * 최초 결제예정일
    */
   private String frstSetlePrearngeDe;
   
   ///추가 Start
   
   /**
    * (담보) 거래일시
    */
	String mrtggDelngDt; 
	/**
	* 거래유형 코드: 계약(01), 주문(02), 상환(03), 정산(04)
	*/
	String mrtggDelngTyCode; 
	/**
	* 사용 금액
	*/
	String useAmt; 
	/**
	* 충전 금액
	*/
	String chargeAmt; 
	/**
	* 사용 가능액
	*/
	String mrtggBlce;
	/**
	* 담보적요
	*/
	String mrtggSumry;
	
	//추가 End
   
 

}
