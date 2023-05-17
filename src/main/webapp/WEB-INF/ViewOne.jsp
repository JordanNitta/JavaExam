<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>View One</title>
</head>
<body>
	<div class="container block">
		<h5>
			<c:out value="${person.name}" />
		</h5>
		<h5>
			(added by <c:out value="${person.user.name}" />)
		</h5>
		<h5>
			Gender: <c:out value="${person.gender}" />
		</h5>
		<h5>
			Origin: <c:out value="${person.origin}" />
		</h5>
		<h5>
			Meaning: <c:out value="${person.meaning}" />
		</h5>
		<hr>
		<a href="/names/${id}/edit"> < Edit </a>
	</div>
	

</body>
</html>