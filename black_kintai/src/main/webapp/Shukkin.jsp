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
		   // 桁数が1桁だったら先頭に0を加えて2桁に調整する
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
		var msg = "現在時刻は、" + nowYear + "/" + nowMonth + "/" + nowDate + "  " + nowHour + ":" + nowMin + ":" + nowSec + " です。";
		document.getElementById("RealtimeClockArea").innerHTML = msg;
		}
		setInterval('showClock()',1000);
	</script>
	<p id="RealtimeClockArea"></p><br><br>
	
	
	こんにちは<%=id %>さん<br><br>
	<form action="Time" method="POST">
		<input type="submit" value="出勤" name="start">
	</form>
	
	<br>
	<br>
	
	<a href="Login.jsp">戻る</a>

</body>
</html>