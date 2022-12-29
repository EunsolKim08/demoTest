package com.example.demo.bd.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.bd.mapper.BdCpnManageMapper;
import com.example.demo.bd.model.couponVO;

@Service
public class BdCpnManageServiceImpl implements BdCpnManageService {
	
	@Autowired
	BdCpnManageMapper bdCpnManageMapper;

	
	@Override
	public couponVO selectCpnInfo(couponVO cpo) {
		return bdCpnManageMapper.selectCpnInfo(cpo);
	}



	public int calculateUseCpnPrice(couponVO cpo) {
		
		int result= -100;
		
		
		couponVO selectCpn = bdCpnManageMapper.selectCpnInfo(cpo);
		
		/*할인 쿠폰 적용전 원래의 총 가격을 가져온다.*/
		int orginPrice = cpo.getOriginPrice();
		/*선택한 쿠폰의 할인금액 최대 한도치를 가져온다.*/
		int maxDiscountPrice =selectCpn.getDiscountMaxPrice();
		/*선택한 쿠폰의 할인율을 가져와 할인금액을 계산한다*/
		int calculatePrice = orginPrice * selectCpn.getDiscountRate() /100;
		
		/*만약 할인금액이 최대 한도를 넘는다면, result는 maxDiscountPrice를 return*/
		if( calculatePrice  > maxDiscountPrice) {
			result = maxDiscountPrice;
		}
		/*아니라면 계산된 result는 calculatePrice를 return*/
		else {
			result = calculatePrice;
		}
		
		return result;
		
	}



	@Override
	public Map<String, Object> selectDiscount(couponVO cpo) {
		
		Map<String, Object> map = new HashMap<>();
		return map;
	}




}
