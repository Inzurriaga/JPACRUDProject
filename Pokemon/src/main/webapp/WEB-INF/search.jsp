<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Pokedex</title>
		<jsp:include page="./topStyle.jsp"></jsp:include>
		<link rel="stylesheet" href="./css/searchStyle.css" />
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<main class="container">
			<form  action="/searchPokemonById.do" id="search-dex-form" class="form-one-intro" method="GET">
				<fieldset>
					<legend>
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
						Search by Pokedex Number
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
					</legend>
					<section>
						<input type="number" placeholder="Pokedex Number" name="dexNumber" class="form-control"/>
						<button type="button" id="submit-dex">Submit</button>
					</section>
				</fieldset>
			</form>
			<form  action="/searchPokemonByName.do" id="search-name-form" class="form-two-intro" method="GET">
				<fieldset>
					<legend>
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
						Search by Pokemon name
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
					</legend>
					<section>
						<input type="text" placeholder="Pokemon Name" name="pokeName"class="form-control"/>
						<button type="button" id="submit-name">Submit</button>
					</section>
				</fieldset>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="./bottomScript.js"></jsp:include>
		<script type="text/javascript">
		let form = document.querySelectorAll("form");
		document.querySelector("#submit-dex")
				.addEventListener("click", () => {
					PageAnimation();
					setTimeout(() => {
						document.querySelector("#search-dex-form").submit();
					}, 500);
				});
		document.querySelector("#submit-name")
				.addEventListener("click", () => {
					PageAnimation();
					setTimeout(() => {
						document.querySelector("#search-name-form").submit();
					}, 500);
				s});
		function PageAnimation() {
					form[0].classList.remove("form-one-intro");
					form[0].classList.add("form-one-exit");
					form[1].classList.remove("form-two-intro");
					form[1].classList.add("form-two-exit");
		};
	</script>
	</body>
</html>