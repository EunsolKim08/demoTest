package com.example.demo.bd.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.bd.model.BdFaqManageVO;
import com.sorincorp.comm.filedoc.model.FileDocVO;

public interface BdFaqManageMapper {

	/*구매입찰 Faq 리스트를 조회하는 매퍼 */
	List<BdFaqManageVO> selectList();

}
