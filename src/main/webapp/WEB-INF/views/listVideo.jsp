<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png" type="image/x-icon">
    <title>Youtube</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
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
            margin-right: 10px;
            transition: color 0.3s;
        }

        td a.edit-icon i {
            color: #28a745; /* Edit 색상 (초록색) */
        }

        td a.delete-icon i {
            color: #dc3545; /* Delete 색상 (빨간색) */
        }

        td a.edit-icon:hover i {
            color: #218838; /* Edit hover 색상 */
        }

        td a.delete-icon:hover i {
            color: #c82333; /* Delete hover 색상 */
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
            <th>URL</th>
            <th>User</th>
            <th>Date</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${videos}" var="video">
            <tr>
                <td>${video.id}</td>
                <td>${video.title}</td>
                <td>${video.description}</td>
                <td><a href="${video.url}" target="_blank">${video.url}</a></td>
                <td>${video.user}</td>
                <td>${video.date}</td>
                <td>
                    <a href="videos/edit/${video.id}" class="edit-icon" title="Edit"><i class="fas fa-edit"></i></a>
                    <a href="videos/delete/${video.id}" class="delete-icon" title="Delete"><i class="fas fa-trash-alt"></i></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>