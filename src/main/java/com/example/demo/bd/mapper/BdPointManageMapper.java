package com.example.demo.bd.mapper;

import java.util.List;

import com.example.demo.bd.model.pointVO;

public interface BdPointManageMapper {

	void resetDailyPoint();
	
	List<pointVO> selectHavePointList();
}
