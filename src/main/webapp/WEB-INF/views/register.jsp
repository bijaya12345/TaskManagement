    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="ISO-8859-1">
    <title>Registration</title>
    <style>
    
    </style>
    </head>
    <body>
    <form action="register" method='POST'>
        <h2>Registration Page</h2>
        <fieldset style = "width:400px">
        			Firstname <input type="text" name="firstname" /></br>
        			Lastname<input type="text" name="lastname" /></br>
        			Email <input type="text" name="email" /></br>
                    Choose Username<input type="text" name="username"> </br>
                    Choose Password <input type="password" name="password" /></br>
                    
                    
                    
                    <label for="role">User- Role:</label>
                      <select name="role">
                        <option value="Admin">admin</option>
                        <option value="User">user</option>
                      </select>
                    </br>
                    </br>
                    </fieldset>
                    </br>
                    </br>
                     </br>
                        <input name="submit" type="submit" value="submit">

            </form>
    </body>
    </html>