### 페이지 개발하기
1. 퍼블리싱 파일 받기 (css, html, js, images, font등)
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
10. @RequestMapping value값 정하기 (/search5 로 정해야하나? 그래야 쿼리 /search5?로 접근할 수 있으니까?)
11.


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


