package com.konantech.ksearch.module;

import static com.konantech.ksearch.constants.ExceptionConstant.SEARCH5_EXCEPTION;
import static com.konantech.ksearch.constants.SearchConstant.SEARCH_WARNING;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.konantech.ksearch.util.CommonUtil;
import com.konantech.ksearch.util.HttpUtil;
import com.konantech.ksearch.web.service.KlaService;
import com.konantech.ksearch.web.service.impl.KlaServiceImpl;
import com.konantech.ksearch.web.vo.KlaParamVo;
import com.konantech.ksearch.web.vo.RestResultVo;
import com.konantech.ksearch.web.vo.SearchRestVo;

@Component
public class RestModule {

	private static final Logger logger = LoggerFactory.getLogger(RestModule.class);


	/**
	 * 검색 호출시 클릭순으로 정렬하기 위한 데이터 조회
	 * @param paramvo
	 * @param duration
	 * @param datenum
	 * @return
	 */
	public String getKeywordDocidRank(String kwd, String category, String duration) {
		KlaParamVo paramvo = new KlaParamVo();
		CommonUtil comUtil = new CommonUtil();

		paramvo.setKeyword(kwd);
		paramvo.setCategory(category);
		paramvo.setFromDate(comUtil.getDateMinusFormat(duration, "yyyy-MM-dd", paramvo.getDatenum() ));
		paramvo.setToDate(comUtil.getDateFormat("yyyy-MM-dd"));

		KlaService klaService = new KlaServiceImpl();
		return klaService.getKeywordDocidRank(paramvo);
	}

	/**
	 * restFull API이용하여 검색엔진  리턴결과를 gson을통해 파싱하여 객체로 전달한다.
	 * @param restUrl 호출 URL
	 * @param restVO	입력vo
	 * @param selectField 조회필드명
	 * @return
	 */
	public RestResultVo restSearchPost(SearchRestVo restVo) {

		logger.debug(restVo.toString());
		HttpUtil httpUtil = new HttpUtil();

		StringBuffer sb = httpUtil.getUrlDataPost(restVo);
		RestResultVo resultVo = new RestResultVo();

		// 결과 파싱
		try{
			Gson gson = new Gson();

			JsonObject jsonObject = gson.fromJson( sb.toString(), JsonObject.class);
			JsonObject rsObject = jsonObject.get("result").getAsJsonObject() ;

			//결과 set
			resultVo.setStatus( jsonObject.get("status").getAsString() );
			resultVo.setTotal(rsObject.get("total_count").getAsLong() );

			JsonArray arr = rsObject.get("rows").getAsJsonArray();

			List<Map<String, String>> list = new ArrayList<> ();
			String[] fields = restVo.getSelectFields().split(",");
			Map<String, String> map;
			JsonObject fieldobj;
			String data;
			for(JsonElement element : arr){
				map = new HashMap<>();
				fieldobj = (element.getAsJsonObject()).get("fields").getAsJsonObject();

				for(String field:fields){
					data =  fieldobj.get(field).getAsString();
					map.put(field,data.replaceAll(SEARCH_WARNING, ""));
				}

				//rowid
				fieldobj = (element.getAsJsonObject()).get("location").getAsJsonObject();
				map.put("rowid", fieldobj.get("rowid").toString());

				list.add(map);
				map = null;
			}

			resultVo.setResult(list);

		} catch (JsonParseException e){
			logger.error(SEARCH5_EXCEPTION, e);
			return null;
		}

		logger.debug(resultVo.toString());

		return resultVo;

	}

}
