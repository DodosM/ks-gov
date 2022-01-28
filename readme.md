## 코난 화면 개발 순서
1. /src/main/webapp/resources/css, html, js, images, font 위치 시키기
2. (퍼블리싱 파일 중에서 해당 html 찾아서)search.jsp 위치 시키기
3. search.jsp에서 css적용 되는 지 확인
4. spring이라면 konan-context.xml 위치 시키기 (properties로 기본 값들을 기본적으로 설정해야하기 때문에)
5. 




### 공부 진행 사항
1. 퍼블리싱 파일 위치 시키기 (css, html, js, images, font등)
2. 검색화면 ==> search.html을 ==> search.jsp로 변환하기 (아마도 html이 있는 자리에서 하거나, 원하는 곳에 따로 경로를??)
3. tomcat실행해보기
4. search.jsp에서 css적용 되는 지 확인하기 (/resources의 css파일이 어디에 지정되어 있는지 확인. 그리고 servlet-context.xml에 
resources가 어디로 mapping이 되어 있는지 확인 --> /resources/라면, 뒤의 /까지 설정이 되있는것이다!! 그래서 바로 resources/css/common.css로 
지정한다)
5. servlet-context.xml에서 base-package 등록 (com.konantech.ksearch)
6. WEB-INF/spring/appServlet/ksearch-context.xml 내 util:properties id=searchConfig 생성
7. SearchConstConfigurer.java 클래스 생성 
8. 위 클래스에서 구현한 init print 메소드는 servlet-context.xml에서 객체생성 시 실행되는 함수로 사용된다

9. searchController.java 위치 시키기
		--> CommonUtil / ParamVO / search.jsp 위치 필수
10. @RequestMapping value값 정하기 (/search5 로 정해야하나? 그래야 쿼리 /search5?로 접근할 수 있으니까? -> properties에 이미 정해져있음)

11. search.jsp에 search.js경로 추가 해주기 
12. search.jsp historyform구현 추가 (jstl prefix="c" 없으면 위에 추가)
13. topSearch.jsp -> header부분을 가져와서 나눔 (jsp include page="")
14. 각 카테고리 보여줄 jsp 생성하기
    
    
** 지금 훑어본 결과 lombok라이브러리 사용 중요 **
** jsp의 class,id로 등록된것은 수정 금지 (표준소스를 수정해야함. 이유는 css에서 해당 클래스들을 이미 사용하고 적용되었기 때문) **



### home.jsp의 구동 과정 -> notion 참조 하길


### 4. css적용 확인 ==> 프로젝트 내부에 위치한 정적 리소스에 접근
1) web.xml내 spring의 초기 default설정에 의해 모든 접근은 servlet요청으로 판단됨.

그래서.... 두 가지 방법 중 하나 선택
2) web.xml에서 [*.js의 요청은 servlet이 아닌 default로 처리]
<servlet-mapping>
        <servlet-name>default</servlet-name>
        <url-pattern>*.js</url-pattern>
</servlet-mapping>

3) servlet-context.xml에서 [resource 설정 추가]
<resources mapping="/js/**" location="/resources/js/" />
<resources mapping="/resources/**" location="/resources/" /> //default config

### 이클립스에서 삭제된 파일 복구
1. package Exploer에서
2. 삭제한 패키지 폴더 선택 > 마우스 우클릭 > Restore from local History.. 
