<%@ page language="java" contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<br>
	<%
		request.setCharacterEncoding("Windows-31J");
		String id = (String) session.getAttribute("id");
		session.setAttribute("start","start");
	%>
	
	<script type="text/javascript">
	function set2fig(num) {
		   // Œ…”‚ª1Œ…‚¾‚Á‚½‚çæ“ª‚É0‚ğ‰Á‚¦‚Ä2Œ…‚É’²®‚·‚é
		   var ret;
		   if( num < 10 ) { ret = "0" + num; }
		   else { ret = num; }
		   return ret;}
	function showClock(){
		var nowTime = new Date();
		var nowYear = nowTime.getFullYear();
		var nowMonth = (nowTime.getMonth() + 1);
		var nowDate = nowTime.getDate();
		var nowHour = set2fig(nowTime.getHours());
		var nowMin  = set2fig(nowTime.getMinutes());
		var nowSec  = set2fig(nowTime.getSeconds());
		var msg = "Œ»İ‚ÍA" + nowYear + "/" + nowMonth + "/" + nowDate + "  " + nowHour + ":" + nowMin + ":" + nowSec + " ‚Å‚·B";
		document.getElementById("RealtimeClockArea").innerHTML = msg;
		}
		setInterval('showClock()',1000);
	</script>
	<p id="RealtimeClockArea"></p><br><br>
	
	
	‚±‚ñ‚É‚¿‚Í<%=id %>‚³‚ñ<br><br>
	<form action="Time" method="POST">
		<input type="submit" value="o‹Î" name="start">
	</form>
	
	<br>
	<br>
	
	<a href="Login.jsp">–ß‚é</a>

</body>
</html>