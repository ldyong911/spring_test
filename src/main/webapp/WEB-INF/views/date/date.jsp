<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	//날짜를 문자형으로 변환 함수
	function dateFomatting(date){
		var year = date.getFullYear();
		var month = date.getMonth()+1;
		var day = date.getDate();
		
		if(month < 10){
			month = "0" + month;
		}
		if(day < 10){
			day = "0" + day;
		}
		
		return year + "" + month + "" + day;
	}

	$(document).ready(function() {
		//날짜 구하기
		var now = new Date();
		
		//첫날과 막날
		var firstDay = new Date(now.getFullYear(), now.getMonth(), 1);
		var lastDay = new Date(now.getFullYear(), now.getMonth()+1, 0);
		console.log("첫날: " + firstDay + ", 막날: " + lastDay);
		
		console.log(dateFomatting(now));
		console.log("첫날: " + dateFomatting(firstDay) + ", 막날: " + dateFomatting(lastDay));
	});
</script>

</html>