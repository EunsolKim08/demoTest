package com.example.demo.bd.mapper;

import java.util.List;

import com.example.demo.bd.model.couponVO;

public interface BdCpnManageMapper {

	couponVO selectCpnInfo(couponVO cvo);

	List<couponVO> selectDiscount(couponVO cpo);

}
