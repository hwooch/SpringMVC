<%--
  Created by IntelliJ IDEA.
  User: nykim
  Date: 2022/12/13
  Time: 12:55 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>학사 정보 시스템</title>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Noto Sans KR', sans-serif;
      background: linear-gradient(120deg, #f0f8ff, #dbeeff);
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    h1 {
      margin-top: 40px;
      font-size: 32px;
      background-color: #ffe14d;
      padding: 10px 25px;
      border-radius: 12px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .container {
      display: flex;
      flex-direction: row; /* 가로 정렬 유지 */
      justify-content: center;
      margin: 50px auto;
      gap: 30px;
    }

    .card {
      background-color: white;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      width: 260px;
      height: 180px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      transition: transform 0.2s;
    }

    .card:hover {
      transform: translateY(-5px);
    }

    .card h2 {
      font-size: 18px;
      margin-bottom: 20px;
    }

    .card button {
      background-color: #6a0dad;
      color: white;
      padding: 10px 25px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.2s, transform 0.1s;
    }

    .card button:hover {
      background-color: #5500aa;
      transform: scale(1.05);
    }
  </style>
</head>
<body>
<h1>학사 정보 시스템</h1>

<div class="container">
  <div class="card">
    <h2>학년별 이수 학점 조회</h2>
    <button onclick="location.href='${pageContext.request.contextPath}/checkGradesByYear'">submit</button>
  </div>
  <div class="card">
    <h2>수강 신청하기</h2>
    <button onclick="location.href='${pageContext.request.contextPath}/registerCourses'">submit</button>
  </div>
  <div class="card">
    <h2>수강 신청 조회</h2>
    <button onclick="location.href='${pageContext.request.contextPath}/viewRegisteredCourses'">submit</button>
  </div>
</div>
</body>
</html>