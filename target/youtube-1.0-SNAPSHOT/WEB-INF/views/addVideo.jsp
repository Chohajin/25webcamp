<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Youtube</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .form-container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            font-size: 24px;
            color: #555;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            font-size: 14px;
            color: #666;
        }

        input[type="text"],
        textarea {
            width: 98%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        textarea:focus {
            border-color: #007BFF;
            outline: none;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.2);
        }

        button {
            background-color: #e50000;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #930303;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #007BFF;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>영상 추가</h1>
    <form action="${pageContext.request.contextPath}/videos/add" method="post">
        <label for="title">제목</label>
        <input type="text" id="title" name="title" placeholder="영상 제목 입력" required />

        <label for="url">URL</label>
        <input type="text" id="url" name="url" placeholder="영상 URL 입력" />

        <label for="user">사용자</label>
        <input type="text" id="user" name="user" placeholder="사용자 이름 입력" />

        <label for="date">날짜</label>
        <input type="text" id="date" name="date" placeholder="업로드 날짜 입력" />

        <label for="description">설명</label>
        <textarea id="description" name="description" placeholder="영상 설명 입력" required></textarea>

        <button type="submit">추가하기</button>
    </form>
    <a href="${pageContext.request.contextPath}/videos">목록으로 돌아가기</a>
</div>
</body>
</html>