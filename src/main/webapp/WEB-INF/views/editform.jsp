<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.DiaryDAO, com.crud.bean.DiaryVO"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Form</title>
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

    #edit {
      margin: 20px 0;
      background-color: #fff;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 50vw;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    td {
      padding: 15px;
      text-align: left;
    }

    input[type="text"],
    input[type="submit"],
    input[type="button"] {
      padding: 10px;
      margin: 5px 0;
      border: none;
      border-radius: 5px;
    }

    input[type="submit"] {
      background-color: #ff7f50; /* Coral color */
      color: white;
      cursor: pointer;
    }

    input[type="button"] {
      background-color: #006bb3; /* Medium Blue */
      color: white;
      cursor: pointer;
    }

    textarea {
      width: calc(100% - 20px);
      padding: 10px;
      margin: 5px 0;
      border: 1px solid #ddd;
      border-radius: 5px;
    }
  </style>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="diaryVO" method="POST" action="../editok">
  <form:hidden path="seq" />
  <div id="edit">
    <table>
      <tr><td>제목</td><td><form:input path="title"/></td></tr>
      <tr><td>오늘의 날씨</td><td><form:input path="todayWeather"/></td></tr>
      <tr><td>오늘의 일기</td><td><form:textarea cols="50" rows="50" path="content"/></td></tr>
      <tr><td>오늘 잘한 점</td><td><form:input path="todayGood"/></td></tr>
      <tr><td>오늘 아쉬운 점</td><td><form:input path="todayBad"/></td></tr>
      <tr><td>내일의 다짐</td><td><form:input path="tomorrowPlan"/></td></tr>
    </table>
    <input type="button" value="작성 취소하기" onclick="history.back()">
    <input type="submit" value="일기 수정하기" />
  </div>
</form:form>

</body>
</html>
