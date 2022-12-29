package com.example.demo.bd.model;

import java.util.List;

import org.springframework.validation.annotation.Validated;

import com.sorincorp.comm.filedoc.model.FileDocVO;
import com.sorincorp.comm.model.CommonVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
@Validated
public class BdFaqManageVO extends CommonVO{
	
	private static final long serialVersionUID = -8676528934516756580L;

	/** FAQ 번호 */
    private int faqNo;

	/** FAQ 문서 번호 */
	private int docNo;

    /** FAQ 업무 구분 코드 */
	private String faqJobSeCode;

	/** FAQ 업무 구분 코드명 */
	private String faqJobSeCodeNm;

	/** FAQ 세부 업무 구분 코드 */
	private String faqDetailJobSeCode;

	/** FAQ 세부 업무 구분 코드명 */
	private String faqDetailJobSeCodeNm;

    /** FAQ 질문 */
    private String faqQestn;

    /** FAQ 답변 */
    private String faqAnswer;

    /** FAQ 노출 여부 */
    private String faqExpsrAt;

    /** FAQ 순서 */
    private int faqOrdr;

    /** 삭제 여부 */
    private String deleteAt;

    /** 삭제 일시 */
    private String deleteDt;

    /** 최초 등록자 아이디 */
    private String frstRegisterId;

    /** 최초 등록 일시 */
    private String frstRegistDt;

    /** 최종 변경자 아이디 */
    private String lastChangerId;

    /** 최종 변경 일시 */
    private String lastChangeDt;

    /** FAQ 기본 이력 순번 */
    private String faqBassHistSn;

//  //Grid Data 리스트
//  	List<FaqManageVO> gridDatList = new ArrayList<FaqManageVO> ();


	/** Grid 상태 */
	private String gridRowStatus;

	/** modalPageStatus 상태 */
	private String modalPageStatus;

	/** 등록자 */
	private String regUser;

	/** 검색조건 */
	private String searchCondition1;
	private String searchCondition2;
	private String searchCondition3;
	private String searchCondition4;

	/** 검색Keyword */
	private String searchKeyword1;
	private String searchKeyword2;
	private String excelYn;

	private List<FileDocVO> attachFiles;
	
	private String name;
	
}
