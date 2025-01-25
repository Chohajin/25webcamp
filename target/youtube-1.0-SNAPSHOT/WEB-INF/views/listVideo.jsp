<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" href="data:image/jpeg;base64,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"/>
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
            width: 100px;
        }

        .container {
            max-width: 1000px;
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

        .add-video {
            display: block;
            text-align: right;
            margin-bottom: 20px;
        }

        .add-video a {
            text-decoration: none;
            background-color: #ff0000;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .add-video a:hover {
            background-color: #cc0000;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f1f1f1;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        td a {
            text-decoration: none;
            color: #007BFF;
            margin-right: 10px;
            transition: color 0.3s;
        }

        td a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
<header>
    <div class="logo">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png" alt="YouTube Logo">
    </div>
</header>
<div class="container">
    <h1>Video List</h1>
    <div class="add-video">
        <a href="videos/add" class="upload-button">영상 업로드</a>
    </div>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${videos}" var="video">
            <tr>
                <td>${video.id}</td>
                <td>${video.title}</td>
                <td>${video.description}</td>
                <td>
                    <a href="videos/edit/${video.id}">Edit</a>
                    <a href="videos/delete/${video.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>