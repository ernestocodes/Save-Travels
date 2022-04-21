<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<div class="d-flex align-items-center flex-column">
		<h1>Save Travels: Create an Expense</h1>
		<div class="rounded bg-dark text-warning border w-50 border-warning ps-5 pb-2 pt-4 mt-4">
			<form:form action="/expenses/new" method="post"
				modelAttribute="expense">
				<p>
					<form:label path="name">Expense Name:</form:label>
					<form:input path="name" />
					<form:errors path="name" />
				</p>
				<p>
					<form:label path="vendor">Vendor Name:</form:label>
					<form:input path="vendor" />
					<form:errors path="vendor" />
				</p>
				<p>
					<form:label path="amount">Expense Amount:</form:label>
					<form:input path="amount" />
					<form:errors path="amount" />
				</p>
				<button class="btn btn-warning mt-1 mb-3">Create</button>
			</form:form>
		</div>
	<a href="/expenses" class="link-warning">Back to Dashboard</a>
	</div>
</body>
</html>