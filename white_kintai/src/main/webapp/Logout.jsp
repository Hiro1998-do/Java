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
	<br><%=id %>����B����ꂳ�܂ł����B<br>
	<br>�o�Γ����F<%=start_time %><br>
	<br>�ދΓ����F<%=end_time %><br>
	�Ɩ����Ԃ�<%= work_date%>��<%=work_time[0] %>����<%=work_time[1] %>��<%=work_time[2] %>�b�ł����B
	<br>
	
	<a href="Login.jsp">�ŏ��ɖ߂�</a>
	

</body>
</html>