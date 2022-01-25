<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<!-- 변수 ${serverTime}은 homeController단에서 model.addAttribute에서 적어 놓은 (받을 값 : "serverTime")으로 받는다  -->
<!-- model.addAttribute에 담겨온 값은 controll단에서 구현한 formattedDate가 나타난다 -->
<P>  The time on the server is ${serverTime}. </P> 

<p>  검색화면으로 이동하시려면 /searchgo를 입력하세요	  </p>
</body>
</html>
