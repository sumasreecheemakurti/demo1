<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
	function validation() {
		var name = document.getElementById("name").value;
		var pswd = document.getElementById("pswd").value;
		var cnt = document.getElementById("cnt").value;
		var num = /^[0-9]+$/;

		if ((name == null) || (name == "")) {
			alert("Please Enter Name");
			return false;
		}

		else if ((pswd == null) || (pswd == "")) {
			alert("Please Enter Password");
			return false;
		}

		else if ((cnt == null) || (cnt == "")) {
			alert("Please Enter Contact");
			return false;
		}

		else if (!(cnt.match(num))) {
			alert("Please Enter Numbers only in Contact");
			return false;
		}

		else if (!(cnt.length == 10)) {
			alert("Please Enter Valid Number");
			return false;
		}
	}
</script>

</head>
<body>

	<form action="/AccountProject/AccountController" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="pswd" id="pswd"></td>
			</tr>

			<tr>
				<td>Contact:</td>
				<td><input type="text" name="cnt" id="cnt"></td>
			</tr>
		</table>

		<input type="submit" name="action" value="Add" onclick="return validation()">
		<input type="submit" name="action" value="Cancel">
		
	</form>

</body>
</html>