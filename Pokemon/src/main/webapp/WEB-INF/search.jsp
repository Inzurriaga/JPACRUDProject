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
			<form  action="javascript:;" onsubmit="changePage('searchByPokedex.do/?pokedex#=')" class="form-one-intro">
				<fieldset>
					<legend>
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
						Search by Pokedex Number
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
					</legend>
					<section>
						<input type="number" placeholder="Pokedex Number" class="form-control"/>
						<input type="submit" />
					</section>
				</fieldset>
			</form>
			<form  action="javascript:;" onsubmit="changePage('searchByName.do/?name=')" class="form-two-intro">
				<fieldset>
					<legend>
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
						Search by Pokemon name
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
					</legend>
					<section>
						<input type="text" placeholder="Pokemon Name" class="form-control"/>
						<input type="submit" />
					</section>
				</fieldset>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="./bottomScript.js"></jsp:include>
		<script type="text/javascript">
		let form = document.querySelectorAll("form");
		function changePage(url) {
					console.log(url)
					form[0].classList.remove("form-one-intro");
					form[0].classList.add("form-one-exit");
					form[1].classList.remove("form-two-intro");
					form[1].classList.add("form-two-exit");
			setTimeout(() => {
				window.location = url
			}, 500);
		} 
	</script>
	</body>
</html>