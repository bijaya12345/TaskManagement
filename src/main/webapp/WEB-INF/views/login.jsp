<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>Welcome to our page</h1>
		${SPRING_SECURITY_LAST_EXCEPTION.message}
		<form action="welcome" method='POST'>
                        <fieldset style= "height:200px">
                               <legend>Login Page:</legend>
                                     Username:
                                     <input type="text" name="username"><br><br>
                                     password:
                                     <input type="password" name="password"><br><br>
                                     <td><input name="submit" type="submit" value="login"></td>
                                     </fieldset>
                                     </form>
                                     </br></br></br><br/>
                New user ? <a href="/register">Sign-up</a>
            	</div>
</body>
</html>
