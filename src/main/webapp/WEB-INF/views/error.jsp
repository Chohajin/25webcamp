<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
<h1>오류가 발생했습니다.</h1>
<p>요청을 처리하는 중 문제가 발생했습니다.</p>
<p>${ex.message}</p> <!-- 예외 메시지 출력 -->
<a href="<%= request.getContextPath() %>/videos">홈으로 돌아가기</a>
</body>
</html>