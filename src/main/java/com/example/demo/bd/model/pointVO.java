package com.example.demo.bd.model;

import lombok.Data;

@Data
public class pointVO {

    /**
     사용자 아이디 번호
    */
    private String memberNo;
    /**
     보유포인트 
    */
    private int havePoint;
    /**
     마지막 사용 날짜
    */
    private String lastUseDt;
}
