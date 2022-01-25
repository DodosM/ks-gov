package com.konantech.ksearch.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static com.konantech.ksearch.constants.SearchConstant.DEFAULT_PAGE_SIZE;
import static com.konantech.ksearch.constants.SearchConstant.TOTAL_PAGE_SIZE;
import com.konantech.ksearch.util.CommonUtil;
import com.konantech.ksearch.web.vo.SearchParamVo;
/**
 * Class Name : SearchController.java
 * Description : 통합검색 조회를 위한 컨트롤러
 *
 * Modification Information
 *
 * 수정일                        수정자           수정내용
 * --------------------  -----------  ---------------------------------------
 *                                 @author ksh  최초작성
 * konan
 */

/*
 * searchController로 요청이 들어오기 전에는 handlerMapping에서 dispatcherServlet에서 해당 컨트롤러 있는지 검색해서 들어온다
 * @requestMapping : 요청 url을 어떤 메서드가 처리할지 여부를 결정하는 것 (여러경로로 지정하고 싶다면 {}사용)
 * 				   : http전송 방식 지정 --> 로그인 데이터나 게시글 데이터를 존성해야 할 경우 <form>태그에서 method속성값을 "post"로 지정하는 것이 일반적.
 *  								 --> @requestMapping은 method속성을 이용해서 메서드에서 처리할 전송방식을 지정할 수 있음.
 *  								 --> 동일한 경로를 값으로 갖고 method속성만 다를 수 있음
 *  @ModelAttribute : @ModelAttribute("받을 값") 사용할 변수;
 *  				: controller에서 view로 데이터 전송요청.
 *  				: 필요한 것은 TestVo클래스가 존재하여야 함. 다음 url에서 던져주는 id,pw값의 getter&setter가 존재하여야 정상적으로 주입되어 받아 올수 있음.
 *  				  http://localhost:8080/spring/test?id=1234&pw=321  --> 다음과 같은 urㅣ로 접근하게 되면 http로 넘어 온 값들을 자동으로 바인딩.
 *  				: @ModelAttribute어노테이션이 붙은 객체(VO)가 자동으로 model객체에 add되고 view단으로 전달되어 호출하여 사용할 수 있게 됨.
 *  				: <input type="text" name="id" value="${test.id}" />
 *  				  <input type="text" name="id" value="${test.pw}" />
 *  Model model : model타입을 메서드로 파라미터로 주입하게 되면, view로 전달하는 데이터를 담아서 보낼 수 있음
 */

@Controller
public class SearchController {

	@Autowired
	CommonUtil comUtil;

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class); //private static final : 절대 해당 값을 바꾸지 않겠다는 표현과 유사

	@RequestMapping(value = "/searchgo", method = RequestMethod.GET) //클라이언트가 url로 요청한 정보를 **매핑** //클라 요청 : get방식의 /searchgo에서 요청
	// /searchgo에서 클라이언트가 하는 작업은 아래 구현해놓은 대로 시행한다
	public String searchGet(@ModelAttribute("params") SearchParamVo paramvo , Model model) {

		//기본파라미터 설정
		setDefaultParam(paramvo);
		logger.info(">>>>>>>>>>>>>> get params!! "+ paramvo);
		return "search"; //search.jsp로 이동하라는 의미
	}

	@RequestMapping(value = "/searchpo", method = {RequestMethod.GET, RequestMethod.POST}) //클라이언트가 url로 요청한 정보를 **매핑** //클라 요청 : get,post방식의 /searchpo에서 요청
	public String searchPost(@ModelAttribute("params") SearchParamVo paramvo , Model model) {
		//기본파라미터 설정
		setDefaultParam(paramvo);
		logger.info(">>>>>>>>>>>>>> post params!! "+ paramvo);
		return "search";
	}

	/**
	 * 조회기간을 이용하여 조회기간을 설정한다.
	 * @param paramvo
	 */
	private void setDefaultParam(SearchParamVo paramvo) {

		//페이지 사이즈
		if("total".equals(paramvo.getCategory())) {
			paramvo.setPageSize(TOTAL_PAGE_SIZE);
			paramvo.setOffset(0);
		}else {
			paramvo.setPageSize(DEFAULT_PAGE_SIZE);
			paramvo.setOffset( (paramvo.getPage()-1 )*paramvo.getPageSize() );
		}
/*
		//정렬
		if("r".equals(paramvo.getSort())) {
			paramvo.setSortNm("정확도순");
		}else if("c".equals(paramvo.getSort())) {
			paramvo.setSortNm("클릭순");
		}else {
			paramvo.setSortNm("최신순");
		}
*/
		if(null == paramvo.getDate() || "".equals(paramvo.getDate()) || "input".equals(paramvo.getDate())) {
			paramvo.setStartDate("");
			paramvo.setEndDate("");
			return;
		}

		int datenum =1;
		if("3m".equals(paramvo.getDate())) {
			datenum = 3;
		}

		paramvo.setStartDate(comUtil.getDateMinusFormat(paramvo.getDate(), "yyyyMMdd", datenum));
		paramvo.setEndDate(comUtil.getDateFormat("yyyyMMdd"));

	}
}
