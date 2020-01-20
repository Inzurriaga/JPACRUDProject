<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<jsp:include page="topStyle.jsp"></jsp:include>
		<link rel="stylesheet" href="./css/displayStyle.css" />
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<main>
			<img src="${pokemon.imageUrl}" class="img-intro"/>
			<section class="right info-intro">
				<section class="info">
					<div>
						<h2>${pokemon.name}</h2>
					</div>
					<article>
						<p>${pokemon.description}</p>
						<div class="type">
							<c:forEach var="type" items="${types}">
								<div class="${type}">
									<p>${type}</p>
								</div>
							</c:forEach>
						</div>
						<div class="meta">
							<p>Height: ${pokemon.heightInches}''</p> 
							<p>Weight: ${pokemon.weightPounds} lb</p> 
						</div>
					</article>
				</section>
				<section class="nav">
					<form action="pokemonUpdateForm.do" method="POST" id="update-pokemon">
						<input type="hidden" name="id" value="${pokemon.id}"/>
						<button type="button" id="update">update</button>
					</form>
					<form action="deletePokemonFromDB.do" method="POST" id="delete-pokemon">
						<input type="hidden" name="id" value="${pokemon.id}"/>
						<button type="button" id="delete">delete</button>
					</form>
				</section>
			</section>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="bottomScript.jsp"></jsp:include>
		<script type="text/javascript">
			setTimeout(() => {
				document.querySelector("img").classList.remove("img-intro");
				document.querySelector("img").classList.add("bounce");
			}, 500);
			document.querySelector("#update")
					.addEventListener("click", () => {
						exitAnimation();
						setTimeout(() => {
							document.querySelector("#update-pokemon").submit();
						}, 500);
					});
			document.querySelector("#delete")
					.addEventListener("click", () => {
						exitAnimation();
						setTimeout(() => {
							document.querySelector("#delete-pokemon").submit();
						}, 500);
					});
			function exitAnimation() {
				console.log("hehhefcec")
				document.querySelector("img").classList.remove("bounce");
				document.querySelector("img").classList.add("img-exit");
				document.querySelector(".right").classList.remove("info-intro");
				document.querySelector(".right").classList.add("info-exit");
			}
		</script>
	</body>
</html>