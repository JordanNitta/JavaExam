<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container d-flex justify-content-between">
		<h3>Hello, <c:out value="${user.name}" /></h1>
		<a href="/logout">Log Out</a>
	</div>
	<div class="container d-flex justify-content-between mt-3">
		<h5>Baby Names:</h5>
	</div>
  <table class="table table-striped dark-table">
    <thead class="thead-dark">
        <tr>
            <th>Name</th>
            <th>Gender</th>
            <th>Origin</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="person" items="${allPerson}">
            <tr>
                <td><a href="/names/${person.id}"><c:out value="${person.name}"/></a></td>
                <td><c:out value="${person.gender}" /></td>
                <td><c:out value="${person.origin}" /></td>
            </tr>
        </c:forEach>
    </tbody>
  </table>
  <a href="/names/new">+New Name</a>
</body>
</html>