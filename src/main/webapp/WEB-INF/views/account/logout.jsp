<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<body>
	<script>
var message = '${msg}';

		var returnUrl = '${url}';

		alert(message);

		document.location.href = returnUrl;
	</script>
</body> 
</html>
