<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-4">
		<div class="d-flex justify-content-between">
			<h2>Change ${person.name}</h2>
		</div>
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<form:form action="/process/${id}/edit" method="POST"
					modelAttribute="person">
					<form:hidden path="user"/>
					<input type="hidden" name="_method" value="PUT"/>
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
						<a href="/names/${id}/edit">Cancel</a>
					</button>
					
					
					<button type="submit" class="btn btn-primary mt-2">Submit</button>
				</form:form>
				<form action="/delete/${person.id}" method="post">
						<input type="hidden" name="_method" value="delete"> 
						<input type="submit" value="Delete">
					</form>
			</div>
		</div>
	</div>
</body>
</html>