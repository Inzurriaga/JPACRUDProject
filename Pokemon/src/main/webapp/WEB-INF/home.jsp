<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Pokedex</title>
		<jsp:include page="./topStyle.jsp"></jsp:include>
		<link rel="stylesheet" href="./css/homeStyle.css" />
	</head>
	<body>
		<jsp:include page="./header.jsp"></jsp:include>
		<main class="container">
			<a class="button intro-animation-button" onclick="changePage('/searchPokemon.do')">
				<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png" class="intro-animation-image">
				Search Pokemon
			</a>
			<a class="button intro-animation-button" onclick="changePage('/createPokemon.do')">
				<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png" class="intro-animation-image">
				create Pokemon
			</a>
			<a class="button intro-animation-button" onclick="changePage('/pokedex.do')">
				<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png" class="intro-animation-image">
				Pokedex
			</a>
		</main>
		<jsp:include page="./footer.jsp"></jsp:include>
		<jsp:include page="./bottomScript.js"></jsp:include>
	</body>
	<script type="text/javascript">
		let anchors = document.querySelectorAll(".button");
		function changePage(url) {
				anchors.forEach((a, i) => {
					console.log("hello world")
					a.classList.remove("intro-animation-button");
					a.classList.add("exit-animation-button");
				});
			setTimeout(() => {
				window.location = url
			}, 1000);
		} 
	</script>
</html>