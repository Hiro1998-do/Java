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
		String start = (String) session.getAttribute("start_time");
	%>
	
	<script type="text/javascript">
	function set2fig(num) {
		   // ������1����������擪��0��������2���ɒ�������
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
		var msg = "���ݎ����́A" + nowYear + "/" + nowMonth + "/" + nowDate + "  " + nowHour + ":" + nowMin + ":" + nowSec + " �ł��B";
		document.getElementById("RealtimeClockArea").innerHTML = msg;
		}
		setInterval('showClock()',1000);
	</script>
	<p id="RealtimeClockArea"></p><br><br>
	
	
	<%=id %>�����<br>
	<%=start %>�ɏo�΍ςł��B<br>
	�ދ΂����ꍇ�́A�ދ΃{�^�����������Ă��������B
	
	<form action="Time" method="POST">
		<input type="submit" value="�ދ�" name="end">
	</form>
	
	<br>
	<br>
</body>
</html>