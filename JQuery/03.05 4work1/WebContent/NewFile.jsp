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

String name = request.getParameter("name");
String postNum1 = request.getParameter("posNum1");
String postNum2 = request.getParameter("posNum2");
String adress = request.getParameter("adress");
String phoneNum[] = request.getParameterValues("phoneNum");
String time[] = request.getParameterValues("time");
String receipt = request.getParameter("receipt");
String magazin = request.getParameter("magazin");

System.out.println("이름 : "+ name);
System.out.println("우편번호 : "+postNum1+"-"+postNum2);
System.out.println("주소 : "+ adress);
if(phoneNum != null && phoneNum.length > 0){
	System.out.println("전화번호 : "+phoneNum[0]+"-"+phoneNum[1]+"-"+phoneNum[2]);
}
if(time != null && time.length>0){
	for(int i=0;i<time.length; i++){
		System.out.println("배달시간 : "+ time[i]);
	}
}
System.out.println("영수증 요청 : "+ receipt);
System.out.println("매거진 수신 : "+ magazin);

%>
</body>
</html>