package com.example.demo.bd.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.demo.bd.mapper.BdFaqManageMapper;
import com.example.demo.bd.model.BdFaqManageVO;
import com.sorincorp.comm.filedoc.model.FileDocVO;
import com.sorincorp.comm.filedoc.service.FileDocService;
import com.sorincorp.comm.util.MessageUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BdFaqManageServiceImpl implements BdFaqManageService {


	@Autowired
	private BdFaqManageMapper BdFaqManageMapper;

	/*구매입찰 Faq 리스트를 조회한다 */
	@Override
	public List<BdFaqManageVO> selectList() {
		// TODO Auto-generated method stub
		return BdFaqManageMapper.selectList();
	}

	

}
