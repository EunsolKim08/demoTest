package com.example.demo.bd.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.demo.bd.model.BdFaqManageVO;
import com.sorincorp.comm.filedoc.model.FileDocVO;

public interface BdFaqManageService {
	
	/*구매입찰 Faq 리스트를 조회한다 */
	List<BdFaqManageVO> selectList();
	
}
