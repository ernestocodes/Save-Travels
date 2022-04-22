<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body class="container bg-dark text-warning w-50 p-3">
	<h1>Save Travels</h1>
	<table class="table table-bordered">
		<tbody>
			<tr class="text-warning">
				<th scope="col">ID</th>
				<th scope="col">Expense</th>
				<th scope="col">Vendor</th>
				<th scope="col">Amount</th>
				<th scope="col">Actions</th>
			</tr>
			<c:forEach var="expense" items="${expenses}">
				<tr class="text-warning">
					<td><c:out value="${expense.id}"></c:out></td>
					<td><a href="/expenses/${expense.id}/show" class="text-warning"><c:out value="${expense.name}"></c:out></a></td>
					<td><c:out value="${expense.vendor}"></c:out></td>
					<td><c:out value="${expense.amount}"></c:out></td>
					<td class="d-flex flex-nowrap"><a href="/expenses/${expense.id}/edit" class="text-warning mt-2">Edit</a>
					<form action="/expenses/${expense.id}/delete" method="post">
							<input type="hidden" name="_method" value="delete">
							<button class="btn btn-link text-warning text-center">Delete</button>
						</form></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/expenses/new" class="link-warning">Add an Expense</a>
</body>
</html>
