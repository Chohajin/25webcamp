<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>Youtube</title>
    <meta charset="UTF-8">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
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
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 14px;
        }

        td a.edit {
            background-color: #73c187; /* Edit 버튼 색상 */
            color: #ffffff;

        }

        td a.edit:hover {
            background-color: #218838;
        }

        td a.delete {
            background-color: #d8747b; /* Delete 버튼 색상 */
            color: #ffffff;
        }

        td a.delete:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>다시보고싶은 영상 목록</h1>
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