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
			<form>
				<fieldset>
					<legend>
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
						create a Pokemon
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
					</legend>
				</fieldset>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="./bottomScript.js"></jsp:include>
	</body>
</html>