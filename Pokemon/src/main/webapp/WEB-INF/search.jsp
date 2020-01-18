<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<jsp:include page="./topStyle.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<main class="container">
			<form action="searchByPokedex.do">
				<fieldset>
					<legend>Search by Pokedex Number</legend>
					<input type="number"/>
				</fieldset>
			</form>
			<form action="searchByName.do">
				<fieldset>
					<legend>Search by Pokemon name</legend>
					<input type="text"/>
					<input type="submit" />
				</fieldset>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="./bottomScript.js"></jsp:include>
	</body>
</html>