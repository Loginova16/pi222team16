<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор - периметр трапеции</title>
</head>
	<body>
        <body bgcolor="#FFE4E1">
	<h1>Калькулятор - периметр трапеции</h1>
	<form action="${pageContext.request.contextPath }/JavaCalc" method="post">
	<label for="first"> Первая сторона (мм): </label>
	<input type="text" name="first" id="first" value="${first}"> <br>
	
	<label for="second"> Вторая сторона (мм):</label>
	<input type="text" name="second" id="second" value="${second}"> <br>
	
	<label for="third"> Третья сторона (мм):</label>
	<input type="text" name="third" id="third" value="${third}"> <br>
	
	<label for="fourth"> Четвертая сторона (мм):</label>
	<input type="text" name="fourth" id="fourth" value="${fourth}"> <br>
	
		<input type="submit" name="sign" value="Calculate"> 
	</form>
	</body>
</html>
