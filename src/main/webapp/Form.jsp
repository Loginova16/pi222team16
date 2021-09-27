<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор - периметр трапеции</title>
</head>
	<body>
	<h1>Калькулятор - периметр трапеции</h1>
	<form action="${pageContext.request.contextPath }/JavaCalc" method="post">
	<label for="first"> Первая сторона: </label>
	<input type="text" name="first" id="first" value="${first}">
	
	<label for="second"> Вторая сторона:</label>
	<input type="text" name="second" id="second" value="${second}">
	
	<label for="third"> Третья сторона:</label>
	<input type="text" name="third" id="third" value="${third}">
	
	<label for="fourth"> Четвертая сторона:</label>
	<input type="text" name="fourth" id="fourth" value="${fourth}">
	
		<input type="submit" name="sign" value="Calculate"> 
	</form>
	</body>
</html>