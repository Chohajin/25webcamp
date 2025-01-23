<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            width: 80px;
            margin-right: 10px;
        }

        .search-bar {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .search-bar input {
            width: 60%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 3px 0 0 3px;
        }

        .search-bar button {
            padding: 8px 16px;
            background-color: #f1f1f1;
            border: 1px solid #ddd;
            border-radius: 0 3px 3px 0;
            cursor: pointer;
        }

        .user-options {
            display: flex;
            align-items: center;
        }

        .user-options button {
            background: none;
            border: none;
            margin-left: 10px;
            cursor: pointer;
        }

        .container {
            display: flex;
            padding: 20px;
        }

        .main-video {
            flex: 2;
            margin-right: 20px;
        }

        .main-video video {
            width: 100%;
            border-radius: 5px;
        }

        .video-details {
            margin-top: 10px;
        }

        .video-details h3 {
            margin: 10px 0;
        }

        .video-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        .video-actions button {
            background: none;
            border: none;
            cursor: pointer;
            margin-right: 10px;
        }

        .suggestions {
            flex: 1;
        }

        .suggestions .suggestion {
            display: flex;
            margin-bottom: 10px;
        }

        .suggestions .suggestion img {
            width: 120px;
            height: 70px;
            margin-right: 10px;
            border-radius: 3px;
        }

        .suggestions .suggestion div {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .suggestions .suggestion h4 {
            margin: 0;
            font-size: 14px;
        }

        .suggestions .suggestion span {
            color: #555;
            font-size: 12px;
        }
    </style>
</head>
<body>
<header>
    <div class="logo">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png" alt="YouTube Logo">
    </div>
    <div class="search-bar">
        <input type="text" placeholder="검색">
        <button>검색</button>
    </div>
    <div class="user-options">
        <button>🔔</button>
        <button>💼</button>
    </div>
</header>
<div class="container">
    <div class="main-video">
        <video controls>
            <source src="video.mp4" type="video/mp4">
            동영상 지원되지 않음.
        </video>
        <div class="video-details">
            <h3><%= "동영상 제목" %></h3>
            <p><%= "조회수 278만회 • 4년 전" %></p>
            <div class="video-actions">
                <button>👍 1.7만</button>
                <button>👎</button>
                <button>공유</button>
                <button>저장</button>
            </div>
        </div>
    </div>
    <div class="suggestions">
        <div class="suggestion">
            <img src="thumbnail1.jpg" alt="Thumbnail">
            <div>
                <h4>추천 동영상 1</h4>
                <span>조회수 10만회 • 1년 전</span>
            </div>
        </div>
        <div class="suggestion">
            <img src="thumbnail2.jpg" alt="Thumbnail">
            <div>
                <h4>추천 동영상 2</h4>
                <span>조회수 200만회 • 2년 전</span>
            </div>
        </div>
        <!-- 추가 추천 동영상 -->
    </div>
</div>
</body>
</html>