<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<jsp:include page="./topStyle.jsp"></jsp:include>
		<link rel="stylesheet" href="./css/createStyle.css" />
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<main class="container">
			<form action="addPokemonToDB.do" class="form-intro" method="Post">
				<fieldset>
					<legend>
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
						create a Pokemon
						<img alt="pokeball" src="http://pngimg.com/uploads/pokeball/pokeball_PNG19.png">
					</legend>
					<section>
						<input type="number" placeholder="Pokedex #" name="pokedexNumber" class="form-control"/>
						<input type="text" placeholder="name" name="name" class="form-control"/>
						<textarea placeholder="description" name="description" class="form-control"></textarea>
						<input type="number" placeholder="height in inches" name="heightInches" class="form-control"/>
						<input type="number" placeholder="weight in pounds" name="weightPounds" class="form-control"/>
						<input type="text" placeholder="image url" name="imageUrl" class="form-control"/>
						<div>
							<h4>Type</h4>
							<label>
								Normal
								<input type="checkbox" name="type" value="normal">
							</label>
							<label>
								Fire
								<input type="checkbox" name="type" value="fire">
							</label>
							<label>
								Water
								<input type="checkbox" name="type"value="water">
							</label>
							<label>
								Electric
								<input type="checkbox" name="type" value="electric">
							</label>
							<label>
								Grass
								<input type="checkbox" name="type" value="grass">
							</label>
							<label>
								Ice
								<input type="checkbox" name="type" value="ice">
							</label>
							<label>
								Fighting
								<input type="checkbox" name="type" value="fighting">
							</label>
							<label>
								Poison
								<input type="checkbox" name="type" value="poison">
							</label>
							<label>
								Ground
								<input type="checkbox" name="type" value="ground">
							</label>
							<label>
								Flying
								<input type="checkbox" name="type"value="flying">
							</label>
							<label>
								Psychic
								<input type="checkbox" name="type" value="Psychic">
							</label>
							<label>
								Bug
								<input type="checkbox" name="type" value="bug">
							</label>
							<label>
								Rock
								<input type="checkbox" name="type" value="rock">
							</label>
							<label>
								Ghost
								<input type="checkbox" name="type" value="ghost">
							</label>
							<label>
								Dragon
								<input type="checkbox" name="type" value="dragon">
							</label>
						</div>
						<button type="button">Create</button>
					</section>
				</fieldset>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="./bottomScript.js"></jsp:include>
		<script type="text/javascript">
			document.querySelector("button")
					.addEventListener("click", () => {
						document.querySelector("form").classList.remove("form-intro");;
						document.querySelector("form").classList.add("form-exit");
						setTimeout(() => {
							document.querySelector("form").submit();
						}, 500);
					});
		</script>
	</body>
</html>