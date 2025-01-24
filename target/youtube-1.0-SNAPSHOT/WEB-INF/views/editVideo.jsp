<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect(request.getContextPath() + "/login");
        return;
    }
%>
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
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        textarea {
            width: 100%;
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
        }

        button:hover {
            background-color: #cc0000;
        }

        a {
            text-decoration: none;
            color: #555;
            margin-top: 20px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
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
    <h1>Edit Video</h1>
    <form action="/videos/edit" method="post">
        <input type="hidden" name="id" value="${video.id}" />

        <label for="title">Title:</label>
        <input type="text" name="title" id="title" value="${video.title}" required />

        <label for="description">Description:</label>
        <textarea name="description" id="description" rows="5" required>${video.description}</textarea>

        <button type="submit">Update Video</button>
    </form>
    <a href="/videos">Back to list</a>
</div>
</body>
</html>