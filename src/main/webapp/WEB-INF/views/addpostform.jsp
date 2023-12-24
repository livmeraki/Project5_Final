<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add New Post</title>
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

    h1 {
      color: #006bb3; /* Medium Blue */
      text-align: center;
    }

    form {
      width: 50%;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    tr, td {
      border: 1px solid #ddd;
      padding: 15px;
      text-align: left;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    input[type="text"],
    textarea {
      width: calc(100% - 20px);
      padding: 10px;
      margin: 5px 0;
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
      margin-top: 10px;
    }

    button:hover {
      background-color: #004080; /* Darker Blue */
    }

    button[type="button"] {
      background-color: #d9534f; /* Red */
    }
  </style>
</head>
<body>
<h1>오늘의 일기 쓰기</h1>
<form action="addok" method="post">
  <table>
    <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>오늘의 날씨:</td><td><input type="text" name="todayWeather"/></td></tr>
    <tr><td>오늘의 일기:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><td>오늘 잘한 점:</td><td><input type="text" name="todayGood"/></td></tr>
    <tr><td>오늘 아쉬운 점:</td><td><input type="text" name="todayBad"/></td></tr>
    <tr><td>내일의 다짐:</td><td><input type="text" name="tomorrowPlan"/></td></tr>
  </table>
  <button type="button" onclick="location.href='posts'">일기장으로 돌아가기</button>
  <button type="submit">일기 쓰기</button>
</form>
</body>
</html>
