<%@ page language="java" contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE html>
<html>
<body>
	<%
			String mongon ="IDとパスワードを入力してください。";
	%>
	
	<%=mongon %><br>
	<br>
	
	<form action="Login" method="POST">
		ＩＤ　　　：<input type="text" name="id"> <br>
		パスワード：<input type="text" name="pass"><br>
		
		<br><input type="submit" value="submit">
	</form>

</body>
</html>