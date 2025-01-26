<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>영상 추가</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            background-color: #ff0000;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
        }

        button:hover {
            background-color: #cc0000;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>영상 추가</h1>
    <form action="add" method="post">
        <label for="title">제목</label>
        <input type="text" id="title" name="title" placeholder="영상 제목 입력" required />

        <label for="description">설명</label>
        <textarea id="description" name="description" placeholder="영상 설명 입력" required></textarea>

        <button type="submit">추가하기</button>
    </form>
    <a href="videos">목록으로 돌아가기</a>
</div>
</body>
</html>