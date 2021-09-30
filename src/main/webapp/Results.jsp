<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Результат вычислений</title>
</head>
<body>
<body bgcolor="#FFEBCD">
<h1>Результат вычислений</h1>
<p><strong> Первая сторона (мм):</strong> ${first_result}</p>
<p><strong> Вторая сторона (мм):</strong> ${second_result}</p>
<p><strong> Третья сторона (мм):</strong> ${third_result}</p>
<p><strong> Четвертая сторона (мм):</strong> ${fourth_result}</p>
<p><strong>Периметр трапеции (мм):</strong> ${perimetr}</p>
<form action="${pageContext.request.contextPath}/Form.jsp"> <input type="submit" name="sign" value="Назад"></form>
</body>
</html>
