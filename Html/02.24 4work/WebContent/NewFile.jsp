<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
// html(client) + java(server) >> jsp
//html 안에 자바코드

// html(client) + java(server) >> servlet
//자바 안에 html코드

//이름 input text
String name= request.getParameter("name");
System.out.println("name = "+name);

//영어 radio
String answer = request.getParameter("answer");	//request라는 클래스
System.out.println("answer = "+answer);

//관심 언어 check(다수)
String lang[] = request.getParameterValues("language");	//여러개 받을 때 사용
if(lang != null && lang.length>0){	 //lang이 비어있지 않고 1개이상 되어있을 때 null이 아닐때도 잡아야 오류가 안난다.
	for(int i=0; i<lang.length; i++){
		System.out.println("외국어 = "+lang[i]);
	}
}

// 의견 textarea
String opinion= request.getParameter("opinion");
System.out.println("opinion = "+opinion);

// 연령대 select
String age = request.getParameter("age");
//int age1 = Integer.parseInt(age);	//숫자로 넘겨받을 수 있다.
System.out.println("age = "+age);
//System.out.println("age = "+age1);


//추가된 사항 어디로 들어가나요??
//깃허브너무어려워ㅠㅠㅠ



%>
</body>
</html>