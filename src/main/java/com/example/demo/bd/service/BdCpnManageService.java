package com.example.demo.bd.service;

import java.util.Map;

import com.example.demo.bd.model.couponVO;

public interface BdCpnManageService {
	
	couponVO selectCpnInfo(couponVO cpo);



	Map<String, Object> selectDiscount(couponVO cpo);
}
