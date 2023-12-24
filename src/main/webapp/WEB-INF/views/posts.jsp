<%@ page import="com.crud.dao.DiaryDAO" %>
<%@ page import="com.crud.bean.DiaryVO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>나만의 일기장</title>
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

    button {
      margin: 20px 0;
      padding: 10px 20px;
      background-color: #ff7f50; /* Coral color */
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    #list {
      width: 90%;
      margin-top: 20px;
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
    }

    .card {
      width: calc(33.333% - 20px);
      background-color: #fff;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease-in-out;
    }

    .card:hover {
      transform: scale(1.05);
    }

    .card-content {
      padding: 15px;
      text-align: center;
    }

    .card-title {
      font-size: 1.2em;
      color: #006bb3; /* Medium Blue */
      margin-bottom: 10px;
    }

    .card-details {
      color: #333; /* Dark Gray */
      margin-bottom: 10px;
    }

    .card-link {
      display: block;
      color: #006bb3; /* Medium Blue */
      text-decoration: none;
      font-weight: bold;
      transition: color 0.3s ease-in-out;
    }

    .card-link:hover {
      color: #004080; /* Darker Blue */
    }
  </style>
  <script>
    function delete_ok(id) {
      var a = confirm("정말로 삭제하겠습니까?");
      if (a) location.href = 'deleteok/' + id;
    }
  </script>
</head>
<body>
<h1>나만의 일기장</h1>
<button type="button" onclick="location.href='add'">오늘의 일기 쓰기</button>
<div id="list">
  <c:forEach items="${list}" var="u">
    <div class="card">
      <div class="card-content">
        <div class="card-title" onclick="location.href='view/${u.seq}'">${u.title}</div>
        <div class="card-details">${u.content}</div>
        <div class="card-details">${u.todayWeather}</div>
        <div class="card-details">${u.regdate}</div>
        <div class="card-link"><a href="editform/${u.seq}">일기 수정</a></div>
        <div class="card-link"><a href="javascript:delete_ok('${u.seq}')">일기 삭제</a></div>
      </div>
    </div>
  </c:forEach>
</div>
</body>
</html>
