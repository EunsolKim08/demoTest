package com.example.demo.bd.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.bd.model.BdFaqManageVO;
import com.example.demo.bd.model.OrderInfoVO;
import com.example.demo.bd.model.couponVO;
import com.example.demo.bd.service.BdCpnManageService;
import com.example.demo.bd.service.BdFaqManageService;
import com.example.demo.bd.mapper.CdtlnMessageMapper2;

@Controller
public class BdController {

	@Autowired
	BdFaqManageService bdFaqManageService;
	
	@Autowired
	BdCpnManageService bdCpnManageService;
	
	@RequestMapping("/")
	public String selectFaqListView(ModelMap model) throws Exception {
	
		List<BdFaqManageVO> dataList = bdFaqManageService.selectList();
		
		model.addAttribute("dataList", dataList);
		return "bd/home";
	}
	
	@RequestMapping("/calendarTest")
	public String calendarTest(ModelMap model) throws Exception {

		return "bd/calendarTest";
	}
	
	@RequestMapping("/cartList")
	public String cartList(ModelMap model) throws Exception {
	
		List<String> data = new ArrayList<String>();
		
		data.add("100");
		data.add("200");
		data.add("300");
		data.add("400");
		data.add("500");
		
		model.addAttribute("dataList", data);
	
		
		return "bd/cartList";
	}
	
	@RequestMapping("/modalPage")
	public String modalPage(ModelMap model) {
		
		return "bd/modalPage";
	}
	
	@RequestMapping("/secondModal")
	public String secondModal(ModelMap model) {
		
		return "bd/secondModal";
	}
	
	@PostMapping("/csrf/ajax")
	public @ResponseBody BdFaqManageVO csrfAJAXSubmit(@RequestBody BdFaqManageVO csrfVO) {
		System.out.println("1111111111111 : "+ csrfVO);
			
		return csrfVO;
	}
	
	@RequestMapping("/directLoad")
	public String directLoad(ModelMap model) {
		
		return "bd/directLoad";
	}
	@RequestMapping("/login")
	public String login(ModelMap model) {
		
		return "bd/login";
	}
	@RequestMapping("/loginProcess")
	public String loginProcess() {
		System.out.println("로그인 url 도입");
		String result = "";
		result="-1";
		return result;
	}
	
	@RequestMapping("/validation")
	public String chartTest(ModelMap model) {
		
		return "bd/validation";
	}
	@RequestMapping("/discount")
	public String discount(ModelMap model) {
		
		couponVO cpo = new couponVO();
		
		Map<String, Object> selectDiscount = bdCpnManageService.selectDiscount(cpo);
		model.addAttribute("selectDiscount",selectDiscount);
		CollectionTest();
		
		return "bd/discount";
	}
	
	
	@RequestMapping(value = "/applyCoupon")
	@ResponseBody 
	public Map<String,Object> applyCoupon(@RequestBody couponVO cvo) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		
		//couponVO selectCpn = bdCpnManageService.selectCpnInfo(cvo);
		/*
		 * int disCountPrice =bdCpnManageService.calculateUseCpnPrice(cvo);
		 */
		/* map.put("disCountPrice", disCountPrice); */
		map.put("result", 1);
		
		return map;
	}
	
	@RequestMapping("/stream")
	public String stream(ModelMap model) {
		
		couponVO cvo = new couponVO();
		
		cvo.setCpnName("testCpnName");
		List<String> list = Arrays.asList("c","b","d","a"); 
		Stream<String> stream = list.stream();
		
		
		/*
		 stream은 한번 사용하면 재사용이 불가능
		 stream을 sort하여 내부의 요소만큼 forEach가 계산되어 elements를 프린트한다. 
		 */
		stream.sorted().forEach(System.out::println);
	
		List<couponVO> list2= null;
		
		list2.stream().sorted().forEach(vo -> {
		/* 
		 	vo의 속성은 가변적임. stream처리로 받을 리스트의 returnType이 어떤 것이냐에 따라
			vo.get 할 수 있는 속성이 달라진다.
			 	
			ex) list2의 return 타입이 couponVO이라
			list의 갯수만큼 couponVo의 String or int변수등을 얻을 수 있다.
			vo.getApplyEntDt();
		*/
		
		});
		
		//CollectionTest();
		return "bd/streamTest";
	}
	
	@RequestMapping("/CollectionTest")
	@ResponseBody
	public Map<String, Object> CollectionTest(){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("test1", "test1");
		map.put("test2", "test2");
		map.put("test4", "d");
		map.put("t3", "1");
		
		
		 Map<String, Object> filterMap = map.entrySet().stream() .filter(x ->
		  !x.getKey().equals("test1")) .collect(Collectors.toMap(x -> x.getKey(), x ->
		  x.getValue()));
		 
		
		
		return map;
	}
	
	@RequestMapping("/testDataList")
	@ResponseBody
	public Map<String, Map<String, Object>> testDataList() {
		Map<String, Map<String, Object>> map =  new TreeMap<>();
		
		Map<String, Object> submap = new HashMap<>();
		Map<String, Object> submap2 = new HashMap<>();
		List<Integer> numList = new ArrayList<>();

		submap.put("test1", "1");
		submap.put("test2", "2");
		submap.put("test3", "3");
		submap.put("test4", "4");
		
		numList.add(5);
		numList.add(6);
		numList.add(7);
		numList.add(8);
		
		submap2.put("allTestMap2", numList);
		
		map.put("allSubMap", submap);
		map.put("allSubMap2", submap2);
		
		//true와 false로 나누어서 return
		if(map.get("allSubMap").containsKey("test1")) { //allSubMap의 value를 얻어와 하위에 test1라는 key를 가지고 있다면
			map.get("allSubMap").put("test1", "6"); // allSubMap의 key test1의 value를 6으로 바꾸어 put한다. 
			map.get("allSubMap").put("test5", "5"); // allSubMap의 key가 test5인 값이 존재하지 않으므로, 새로 allSubMap에 allSubMap.put("test5", "5");
		}
		
		map.get("allSubMap2"); // map의 allSubMap2를 가져온다. 
		
		return map;
		
	}
	
	@RequestMapping("/admin/manageMainPage")
	public String manageMainPage(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return "admin/main";
	}
	
	@Autowired
	private CdtlnMessageMapper2 cdtlnMessageMapper;
	
	@RequestMapping("/buyTestEmail")
	public String testEmail(ModelMap model) {
		
		Map<String,String> orderInfoMap = new HashMap<>();
		Map<String,Object> orderInfoListMap = new HashMap<>();
		
		
		//실제로 사용할 코드
		String titleMsg="";
		String sendGroup="고객";
		sendGroup="운영";
		String mrtggDelngDt =""; // (담보) 거래일시
		String mrtggDelngTyCode; //거래유형 코드 :주문(02), 상환(03), 정산(04), 계약(01)
		String useAmt; //사용
		String chargeAmt; //충전
		String mrtggBlce;//사용가능액
		String orderNo ="20221201-S01231";//주문번호 , 확인용으로 하나 ㄱ
		String mrtggSumry;//담보적요
		String setlePrearngeDe; //결제 예정일
		String setleMthdCode ="40";
		String templateNo="15";
		
		OrderInfoVO ovo = new OrderInfoVO();
		
		List<OrderInfoVO> selectSorinCredtList = null;
		
		
		if(templateNo.equals("15") && sendGroup.equals("고객")) {
			titleMsg = "주문/결제가 완료";
		}else if(templateNo.equals("15") && sendGroup.equals("운영")) {
			titleMsg = "서린크레딧 주문이 발생";
		}else if(templateNo.equals("57") && sendGroup.equals("고객")) {
			titleMsg = "XXX 회원님, ~주문의 잔금결제가 완료";
		}else if(templateNo.equals("57") && sendGroup.equals("운영")) {
			titleMsg = "XXX 업체의 상환이 완료 되었습니다.";
		}
		
		orderInfoMap.put("titleMsg", titleMsg);
		
		//화면제대로 출력되는지 확인용
		model.addAttribute("titleMsg", titleMsg);
		
		if("40".equals(setleMthdCode)) {
			ovo.setOrderNo(orderNo); //이걸 뒤에서 가져오는 매퍼로 수정.
			selectSorinCredtList =cdtlnMessageMapper.selectSorinCredtInfo(ovo);
			/* orderInfoListMap.put("selectSorinCredtList", selectSorinCredtList); */
	
			//model.addAttribute("sorinCreditTableInfo", "test");
		}
		
		return "bd/buyTestEmail";
	}
	
	@RequestMapping("/returnTestEmail")
	public String returnTestEmail(ModelMap model) {
		
		
		
		return "bd/returnTestEmail";
	}
	
	@RequestMapping("/clousreTest")
	public String clousreTest(ModelMap model) {
		
		
		
		return "bd/clousreTest";
	}

		
	
	
}
