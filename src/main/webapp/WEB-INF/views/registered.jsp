<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hwooc
  Date: 25. 4. 15.
  Time: 오후 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>수강 신청 결과</title>
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
      font-size: 28px;
      background-color: #ffe14d;
      padding: 10px 20px;
      border-radius: 12px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .grade-card {
      background-color: white;
      margin-top: 40px;
      padding: 30px;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      width: 90%;
      max-width: 900px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }

    th, td {
      padding: 12px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #6a0dad;
      color: white;
    }

    tr:hover {
      background-color: #f4f4f4;
    }
  </style>
</head>
<body>

<h1>2025년 2학기 수강 신청 조회</h1>

<div class="grade-card">
  <table>
    <thead>
    <tr>
      <th>년도</th>
      <th>학기</th>
      <th>교과목명</th>
      <th>교과 구분</th>
      <th>담당 교수</th>
      <th>학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${registeredCourses}">
      <tr>
        <td>${course.year}</td>
        <td>${course.semester}</td>
        <td>${course.courseName}</td>
        <td>${course.category}</td>
        <td>${course.professor}</td>
        <td>${course.credit}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>