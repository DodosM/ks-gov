import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.konantech.ksearch.constants.SearchConstant;
import com.konantech.ksearch.module.RestModule;
import com.konantech.ksearch.util.CommonUtil;
import com.konantech.ksearch.web.vo.RestResultVo;
import com.konantech.ksearch.web.vo.SearchParamVo;
import com.konantech.ksearch.web.vo.SearchRestVo;

public class Test {

	   //디버그
	   Logger logger = LoggerFactory.getLogger(this.getClass().getName());
	   
	try{
	    String listName = "sampleList"; //listName변수에 sampleList라는 문자열을 담음
	    String totalName="sampleTotal"; //totalName변수에 sampleTotal이라는 문자열을 담음


	    SearchParamVo paramvo = (SearchParamVo)request.getAttribute("params"); 
	    //특정요소 노드 내에 특정 한 속성값을 가져오는 메소드 //반환유형이 Object
	    //이전에 다른 jsp또는 serlvet페이지에 설정된 매개 변수를 가져오는데 사용 --> 이전의 setAttribute() 속성을 통한 설정이 있어야 함. 그렇지 않다면 null값 가져옴
	    //controller , servlet등에서 view로 전달할 때 사용
	    String kwd = paramvo.getKwd(); 

	     //검색어 없을 경우
	     if(kwd.isEmpty()){
	    	 request.setAttribute(totalName, 0 );
	    	 return;
	     }

	     //검색어 있을 경우
	    SearchRestVo restvo = new SearchRestVo();
	    RestModule module = new RestModule();

	     CommonUtil comUtil = new CommonUtil();
	     StringBuffer sbquery = new StringBuffer();
	     StringBuffer sbcustom = new StringBuffer();
	     String strNmFd = paramvo.getFields().isEmpty()? "text_idx": paramvo.getFields();
	     //상세검색
	     if(paramvo.isDetail() ){
	    	 sbquery.append(	 comUtil.makeDetailQuery(paramvo, strNmFd));
	     }else{  //일반검색
	    	 sbquery.append(strNmFd);
	    	 sbquery.append(" = '").append(kwd).append("' allword "); //.append("' allword synonym ");
	     }

	     //결과내재검색
	    if(paramvo.isResrch()){
	    	if(sbquery.length() > 0) sbquery.append(" and ");
	    	sbquery.append(  comUtil.makeReSearchQuery(paramvo, strNmFd));
	    }

	    //범위검색
	    if( !paramvo.getStartDate().isEmpty()){
	        sbquery.append(" and created_ymd >= '").append(paramvo.getStartDate()).append("' ");
	    }
	    if( !paramvo.getEndDate().isEmpty()){
	        sbquery.append(" and created_ymd <= '").append(paramvo.getEndDate()).append("' ");
	    }


	    //정렬조건 d:최신순, r: 정확도순, c: 클릭순
	    switch(paramvo.getSort()){
	    case "d":
	    	sbquery.append(" order by created_ymd desc ");
	    	break;
	    case "r":
	        sbquery.append(" order by $relevance desc ");
	        break;
	    case "c":
	        String docids = module.getKeywordDocidRank(kwd, "sample", "w");
	        if(!docids.isEmpty()){
	            sbquery.append(" order by post_id (").append(docids).append(") ");
	        }
	        break;
	    default:
	    	sbquery.append(" order by created_ymd desc ");
	        break;
	    }

	     restvo.setSelectFields("post_id,user_id,post_url,created_ymd,category,title,message");
	     restvo.setFrom("sample.post");
	     restvo.setWhere( sbquery.toString() );
	     restvo.setOffset( paramvo.getOffset() );
	     restvo.setPagelength(paramvo.getPageSize() );
	     restvo.setHilightFields("{'title':{'length':250,'begin':'<strong>','end':'</strong>'}},{'message':{'length':200,'begin':'<strong>','end':'</strong>'}}");
	     restvo.setCustomLog(comUtil.getCustomLog(paramvo)  );

	     RestResultVo resultvo = module.restSearchPost(restvo);



	     logger.debug(">>>>>>>>>>>>>  query-sample "+paramvo);
	     logger.debug(">>>>>>>>>>>>>  resultvo list "+resultvo.getResult() );
	     logger.debug(">>>>>>>>>>>>>  resultvo total "+resultvo.getTotal());

	     request.setAttribute(listName, resultvo.getResult() );
	     request.setAttribute(totalName,resultvo.getTotal() );

	 }catch (Exception e){
		 e.printStackTrace();
		 logger.error(" sample error - "+e.toString());
		 request.setAttribute("error", SearchConstant.MSG_SEARCH_ERROR);
	 }
	
}
