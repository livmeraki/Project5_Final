<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    form {
      width: 300px;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    h3 {
      color: #006bb3; /* Medium Blue */
    }

    label {
      display: block;
      margin-top: 10px;
      font-size: 14px;
      color: #333; /* Dark Gray */
    }

    input {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      margin-bottom: 15px;
      box-sizing: border-box;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 14px;
    }

    button {
      width: 100%;
      padding: 10px;
      background-color: #006bb3; /* Medium Blue */
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 15px;
      cursor: pointer;
    }

    button:hover {
      background-color: #004080; /* Darker Blue */
    }
  </style>
</head>
<body>
<form method="post" action="loginOk">
  <div>
    <h3>유저 아이디: mydiary</h3>
    <h3>유저 비밀번호: 1234</h3>
  </div>
  <div>
    <label>User ID:</label>
    <input type='text' name='userid' />
  </div>
  <div>
    <label>Password:</label>
    <input type='password' name='userpassword' />
  </div>
  <button type='submit'>Login</button>
</form>
</body>
</html>
