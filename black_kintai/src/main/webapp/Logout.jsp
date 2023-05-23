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
		String start_time = (String) session.getAttribute("start_time");
		String end_time = (String)session.getAttribute("end_time");
		int work_date = (int)request.getAttribute("work_date");
		int[] work_time = new int[3];
		work_time[0] = (int)request.getAttribute("work_hour");
		work_time[1] = (int)request.getAttribute("work_min");
		work_time[2] = (int)request.getAttribute("work_sec");
		
	%>
	
	<br>
	<br><%=id %>さん。お疲れさまでした。<br>
	<br>出勤日時：<%=start_time %><br>
	<br>退勤日時：<%=end_time %><br>
	業務時間は<%= work_date%>日<%=work_time[0] %>時間<%=work_time[1] %>分<%=work_time[2] %>秒でした。
	<br>
	
	<a href="Login.jsp">最初に戻る</a>
	

</body>
</html>