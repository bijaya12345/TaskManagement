<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User.</title>
</head>
<body>
	<div align="center">
	<h3> ${msg} </h3>
	
	<h4> Select from following options </h4>

		<a href="/create"> CreateTask </a> &nbsp;
		<a href="/delete">DeleteTask </a> &nbsp;
		<a href="/display">DisplayTasks </a> &nbsp;
		<a href="/updateFromWelcome">UpdateTasks </a>&nbsp;
		<a href="/logout">
			<button>logout</button>
		</a>

	</div>

</body>
</html>