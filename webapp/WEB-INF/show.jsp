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
<body class="container bg-dark text-warning w-50 p-3 d-flex justify-content-center">
	<div>
	<h1>Expense Details:</h1>
	<div class="card bg-dark text-warning border-warning w-auto">
		<div class="card-header border-warning"><c:out value="${expense.name}"></c:out></div>
		<div class="card-body ">
			<h5 class="card-title"><c:out value="${expense.amount}"></c:out></h5>
			<p>Purchased at:
				<c:out value="${expense.vendor}"></c:out>
			</p>
			<p>Description:
				<c:out value="${expense.description}"></c:out>
			</p>
			<a href="https://www.${expense.vendor}.com/" class="btn btn-warning">Go buy more!</a>
		</div>
		<div class="card-footer text-warning border-warning">Added on: ${expense.createdAt}</div>
	</div>
	<a href="/expenses" class="link-warning">Back to Dashboard</a>
	</div>
</body>
</html>
