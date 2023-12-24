<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>View Page</title>
  <style>
    body {
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    h1 {
      color: #ff7f50; /* Coral color */
    }

    table {
      width: 50%;
      margin-top: 20px;
      background-color: #fff;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    tr, td {
      border: 1px solid #ddd;
      padding: 15px;
      text-align: left;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    input[type="button"] {
      padding: 10px;
      margin-top: 20px;
      background-color: #006bb3; /* Medium Blue */
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="button"]:hover {
      background-color: #004080; /* Darker Blue */
    }
  </style>
</head>
<body>
<h1>View page</h1>
<table>
  <tr><td>일기 제목</td><td>${u.title}</td></tr>
  <tr><td>날짜</td><td>${u.regdate}</td></tr>
  <tr><td>오늘의 날씨</td><td>${u.todayWeather}</td></tr>
  <tr><td>오늘의 일기</td><td>${u.content}</td></tr>
  <tr><td>오늘 잘한 점</td><td>${u.todayGood}</td></tr>
  <tr><td>오늘의 아쉬운 점</td><td>${u.todayBad}</td></tr>
  <tr><td>내일의 다짐</td><td>${u.tomorrowPlan}</td></tr>
</table>
<input type="button" value="일기장으로 돌아가기" onclick="history.back()">
</body>
</html>
