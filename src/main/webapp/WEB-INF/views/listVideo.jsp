<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" href="data:image/jpeg;base64,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" type="image/x-icon">
    <title>Youtube</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .header {
            background-color: #ffffff;
            border-bottom: 1px solid #ddd;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header .logo {
            font-size: 24px;
            font-weight: bold;
            color: #ff0000;
            display: flex;
            align-items: center;
        }

        .header .logo img {
            height: 24px;
            margin-right: 8px;
        }

        .header .search-bar {
            flex: 1;
            display: flex;
            align-items: center;
            margin: 0 20px;
        }

        .header .search-bar input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 20px 0 0 20px;
            outline: none;
        }

        .header .search-bar button {
            padding: 8px 12px;
            background-color: #f1f1f1;
            border: 1px solid #ddd;
            border-left: none;
            border-radius: 0 20px 20px 0;
            cursor: pointer;
        }

        .header .user-menu {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .header .user-menu a {
            text-decoration: none;
            color: #333;
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #f9f9f9;
            transition: background-color 0.3s;
        }

        .header .user-menu a:hover {
            background-color: #e1e1e1;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            font-size: 24px;
            color: #333;
        }

        .add-video {
            text-align: right;
            margin-bottom: 20px;
        }

        .add-video a {
            text-decoration: none;
            background-color: #ff0000;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .add-video a:hover {
            background-color: #cc0000;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            word-wrap: break-word;
        }

        th {
            background-color: #f1f1f1;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        th:nth-child(1), td:nth-child(1) {
            width: 5%;
        }

        th:nth-child(2), td:nth-child(2) {
            width: 20%;
        }

        th:nth-child(3), td:nth-child(3) {
            width: 25%;
        }

        th:nth-child(4), td:nth-child(4) {
            width: 20%;
        }

        th:nth-child(5), td:nth-child(5) {
            width: 10%;
        }

        th:nth-child(6), td:nth-child(6) {
            width: 10%;
        }

        th:nth-child(7), td:nth-child(7) {
            width: 10%;
        }

        td a {
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 14px;
            margin-right: 5px;
            display: inline-block;
        }

        td a.edit {
            background-color: #73c187;
            color: #ffffff;
        }

        td a.edit:hover {
            background-color: #218838;
        }

        td a.delete {
            background-color: #d8747b;
            color: #ffffff;
        }

        td a.delete:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="logo">
        <img src="data:image/png;base64,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" alt="Youtube Logo">
    </div>
    <div class="search-bar">
        <input type="text" placeholder="검색">
        <button>🔍</button>
    </div>
    <div class="user-menu">
        <a>사용자</a>
    </div>
</div>
<div class="container">
    <h1>다시 보고 싶은 영상 목록</h1>
    <div class="add-video">
        <a href="${pageContext.request.contextPath}/videos/add">영상 업로드</a>
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
                    <a href="${pageContext.request.contextPath}/videos/edit/${video.id}" class="edit">📝</a>
                    <a href="${pageContext.request.contextPath}/videos/delete/${video.id}" class="delete">🗑️</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
