package com.konantech.ksearch.web.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import static com.konantech.ksearch.constants.SearchConstant.TOTAL_PAGE_SIZE;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 다음 애노테이션은 lombok 라이브러리에서 제공하는 어노테이션들이다
 * @EqualsAndHashCode : (자동생성)equals - 두 객체 내용이 같은지, 동등성을 비교하는 연산자
 * 					  : (자동생성)hashCode - 두 객체가 같은 객체인지, 동일성을 비교하는 연산자
 * 					  : callSuper속성을 통해 
 * 						(true->부모클래스 필드 값들도 동일한지 체크)
 * 						(false->자신클래스 필드 값들만 고려)
 * @Data : getter/setter/RequiredArgsConstructor/ToString/EqualsAndHashCode를 한 번에 설정해주는 어노테이션임
 *		 : 모든 필드를 대상으로 접근자, 설정자가 자동 생성되고, final 또는 NonNull 필드값을 파라미터로 받는 생성자가 만들어지고, toString, equals, hashCode 메소드가 자동으로 만들어짐
 * @JsonInclude : (JsonInclude.Include.NON_NULL)
 * 				: 위 속성값을 적용하면 API서버를 개발할 때 응답 결과 데이터가 null인 데이터는 json결과에 나타나지 않음
 *
 *
 *
 */

@EqualsAndHashCode(callSuper=false) //callSuper=false은 기본값
@JsonInclude(JsonInclude.Include.NON_NULL) //null인 데이터는 json결과에 나타나지 않음
@Data 
public class SearchParamVo{
	//private static final long serialVersionUID =1L;
	//getter setter toString을 만들지 않아도 되는 이유 -> lombok라이브러리인 @Data가 모든 필드에 대한 자동 생성을 해주기 때문

	//카테고리
	private String category = "total";
	//페이징
	private int page = 1;
	//페이징건수
	private int  pageSize = TOTAL_PAGE_SIZE;
	//
	private int offset=0;
	//정렬
	private String sort="d";
	//키워드
	private String kwd = "";
	//검색기간
	private String date="";
	//검색기간-시작일
	private String startDate="";
	//검색기간-종료일
	private String endDate="";
	 //이전키워드
	private String preKwds="";
	//결과내재검색
	private boolean resrch=false;
	//검색필드 또는 인덱스명
	private String fields="";
	//
	private String group="";
	//
	private boolean detail=false;
	//키워드 검색 상세
	private String basickwd="";
	private String exactkwd="";
	private String inkwd="";
	private String notkwd="";
	//오타교정
	private String autospc="";
	private String tr_code="";
	//검색옵션
	private String srch_opt="";
	//오늘일자
    private String todayDate="";

    //customlog
    private String sortNm="최신순";
    private String userid="";
    private String gender="";
}
