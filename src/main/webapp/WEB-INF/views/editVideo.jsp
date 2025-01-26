<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
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