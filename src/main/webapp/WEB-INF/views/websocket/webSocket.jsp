<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<!-- Web socket CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.3.0/sockjs.js"></script>
</head>
<body>
	<input type="text" id="message"/>

	<input type="button" id="sendBtn" value="전송" />

	<div id="data"></div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#sendBtn").click(function() {
				sendMessage();
				$('#message').val('')
			});

			$("#message").keydown(function(key) {
				if (key.keyCode == 13) {// 엔터
					sendMessage();
					$('#message').val('')
				}
			});

		});

		// 웹소켓을 지정한 url로 연결한다.
		var sock = new SockJS("<c:url value="/webSocketTest"/>"); //handshake를 한다

		sock.onmessage = onMessage; //handshake가 완료되고 connection이 맺어지면 실행된다
		sock.onclose = onClose;

		// 메시지 전송
		function sendMessage() {
			sock.send($("#message").val()); //socket을 대상으로 문자열을 전송한다
		}

		// 서버로부터 메시지를 받았을 때
		function onMessage(msg) { //socket에서 정보를 수신했을 때 실행된다. msg.data로 정보가 들어온다.
			var data = msg.data;

			$("#data").append(data + "<br/>");
		}

		// 서버와 연결을 끊었을 때
		function onClose(evt) {
			$("#data").append("연결 끊김");
		}
	</script>

</body>
</html>