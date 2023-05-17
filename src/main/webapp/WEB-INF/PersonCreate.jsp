<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-4">
		<div class="d-flex justify-content-between">
			<h2>Add a Name!</h2>
		</div>
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<form:form action="/process/person/create" method="POST"
					modelAttribute="newPerson">
					<form:input type="hidden" path="user" value="${user_id}" />
					<div class="form-group">
						<form:label path="name">Name:</form:label>
						<form:input type="text" class="form-control" path="name" />
						<form:errors path="name" class="text-danger" />
					</div>
					<div class="form-group">
						<form:select path="gender">
							<form:option value="neutral" label="Neutral" />
							<form:option value="male" label="male" />
							<form:option value="female" label="female" />
						</form:select>
					</div>
					<div class="form-group">
						<form:label path="origin">Origin:</form:label>
						<form:input type="text" class="form-control" path="origin" />
						<form:errors path="origin" class="text-danger" />
					</div>
					<div class="form-group">
						<form:label path="meaning">Meaning:</form:label>
						<form:input type="text" class="form-control" path="meaning" />
						<form:errors path="meaning" class="text-danger" />
					</div>
					<button type="submit" class="btn mt-2">
						<a href="/names/new">Cancel</a>
					</button>
					<button type="submit" class="btn btn-primary mt-2">Submit</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>