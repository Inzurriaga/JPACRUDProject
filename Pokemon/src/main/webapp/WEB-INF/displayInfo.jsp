<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<jsp:include page="topStyle.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<main>
			<img src="${pokemon.imageUrl}" />
			<section>
				<div>
					<h2>${pokemon.name}</h2>
				</div>
				<article>
					<p>${pokemon.description}</p>
					<p>${pokemon.type}</p>
				</article>
			</section>
			<section>
				<form action="" method="POST">
					<input type="hidden" name="id" value="${pokemon.id}" id="update-form"/>
					<button type="button" id="update">update</button>
				</form>
				<form action="deletePokemonFromDB.do" method="POST">
					<input type="hidden" name="id" value="${pokemon.id}" id="delete-form"/>
					<button type="button" id="delete">delete</button>
				</form>
			</section>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="bottomScript.jsp"></jsp:include>
		<script type="text/javascript">
			document.querySelector("#update")
					.addEventListener("click", () => {
						setTimeout(() => {
							document.querySelector("#update-pokemon").submit();
						}, 500);
					});
			document.querySelector("#delete")
					.addEventListener("click", () => {
						setTimeout(() => {
							document.querySelector("#delete-pokemon").submit();
						}, 500);
					});
		</script>
	</body>
</html>