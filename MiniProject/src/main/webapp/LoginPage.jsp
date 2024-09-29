<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        form {
            width: 300px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
             }
        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
         header {
            background-color: #333;
            color: #fff;
            padding: 7px;
            text-align: center;
        }
        h2{
        text-align:center;
        }
    </style>
</head>
<body>
<header>
        <h1>Chromakey Technology</h1>
    </header><br><br><br>
    <h2>Login Form</h2><br>
<form action="Login" method="post">
<table>
<tr><td>User Name: </td><td><input type="text" name="uname"></td></tr>
<tr><td>Password: </td><td><input type="password" name="password"></td></tr>
<tr><td></td><td><input type="submit" value="Login"></td></tr>
</table>

</form>
</body>
</html>