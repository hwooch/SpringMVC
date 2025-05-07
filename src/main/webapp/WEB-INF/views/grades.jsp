<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hwooc
  Date: 25. 4. 15.
  Time: 오후 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학기별 이수 학점 조회</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background: linear-gradient(120deg, #f0f8ff, #dbeeff);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            margin-top: 40px;
            background-color: #ffe14d;
            padding: 10px 20px;
            border-radius: 12px;
            font-size: 28px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .grade-card {
            background-color: white;
            margin-top: 40px;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 800px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
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

        .total {
            background-color: #ffff66;
            font-weight: bold;
        }

        .link-button {
            background-color: #6a0dad;
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .link-button:hover {
            background-color: #5500aa;
        }

    </style>
</head>
<body>

<h1>학기별 이수 학점 조회</h1>

<div class="grade-card">
    <table>
        <thead>
        <tr>
            <th>년도</th>
            <th>학기</th>
            <th>취득 학점</th>
            <th>상세보기</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="row" items="${summary}">
            <tr>
                <td>${row[0]}</td>
                <td>${row[1]}</td>
                <td>${row[2]}</td>
                <td>
                    <a class="link-button"
                       href="${pageContext.request.contextPath}/viewDetails?year=${row[0]}&semester=${row[1]}">링크</a>
                </td>
            </tr>
        </c:forEach>
        <tr class="total">
            <td colspan="2">총계</td>
            <td>${totalCredits}</td>
            <td>-</td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>