<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="data:image/jpeg;base64,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" type="image/x-icon">
    <title>Youtube</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            background-color: #ffffff;
            border-bottom: 1px solid #ddd;
        }

        .logo img {
            width: 80px;
        }

        .form-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        textarea {
            width: 95%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            margin-bottom: 20px;
        }

        button {
            display: inline-block;
            background-color: #ff0000;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #cc0000;
        }

        a {
            text-decoration: none;
            color: #555;
            margin-top: 20px;
            display: inline-block;
            transition: color 0.3s ease;
        }

        a:hover {
            text-decoration: underline;
            color: #333;
        }
    </style>
</head>
<body>
<header>
    <div class="logo">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png" alt="YouTube Logo">
    </div>
</header>
<div class="form-container">
    <h1>영상 수정</h1>
    <form action="${pageContext.request.contextPath}/videos/edit" method="post">
        <input type="hidden" name="id" value="${video.id}" />
        <label for="title">제목:</label>
        <input type="text" id="title" name="title" value="${video.title}" required />

        <label for="url">URL:</label>
        <input type="text" id="url" name="url" value="${video.url}" required />

        <label for="user">사용자:</label>
        <textarea id="user" name="user" required>${video.user}</textarea>

        <label for="date">날짜:</label>
        <textarea id="date" name="date" required>${video.date}</textarea>

        <label for="description">설명:</label>
        <textarea id="description" name="description" required>${video.description}</textarea>


        <button type="submit">영상 수정하기</button>
    </form>
    <a href="${pageContext.request.contextPath}/videos">Back to List</a>
</div>
</body>
</html>