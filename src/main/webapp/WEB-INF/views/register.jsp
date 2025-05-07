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
    <title>수강 신청</title>
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

        .form-card {
            background-color: white;
            margin-top: 40px;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 400px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input[type="submit"] {
            background-color: #6a0dad;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.2s, transform 0.1s;
        }

        input[type="submit"]:hover {
            background-color: #5500aa;
            transform: scale(1.03);
        }

        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
    </style>
</head>
<body>

<h1>2025년 2학기 수강 신청</h1>

<form action="${pageContext.request.contextPath}/registerCourses" method="post" class="form-card">

    <input type="hidden" name="year" value="2025" />
    <input type="hidden" name="semester" value="2" />

    <label>과목 코드</label>
    <input
            type="text"
            name="courseCode"
            placeholder="예: CSE0051"
            maxlength="7"
            pattern=".{7}"
            title="과목 코드는 정확히 7자리여야 합니다."
            required
    />
    <label>과목명</label>
    <input type="text" name="courseName" placeholder="예: 클라우드" required />

    <label>이수 구분</label>
    <input type="text" name="category" placeholder="예: 전필 / 전선 / 교양" required />

    <label>담당 교수</label>
    <input type="text" name="professor" placeholder="예: 김성동" required />

    <label>학점</label>
    <input type="number" name="credit" placeholder="예: 3" min="1" max="5" required />

    <input type="submit" value="수강 신청하기" />
</form>

</body>
</html>