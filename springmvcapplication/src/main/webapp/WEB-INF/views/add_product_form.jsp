<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-5 ">
		<form action="processform" method="post">

			<h1 class="text-center">Product Registration</h1>
			<div class="form-group">
				<label for="productname">Product Name</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="productName" placeholder="Enter Product Name"
					name="name">

			</div>

			<div class="form-group">
				<label for="description">Product Description</label>
				<textarea class="form-control" id="description"
					rows=5 placeholder="Enter the Product Description"
					name="description"> </textarea>
			</div>

			<div class="form-group">
				<label for="price">Product Price</label> <input
					type="text" class="form-control" id="productPrice"
					aria-describedby="productPrice" placeholder="Price"
					name="price">
			</div>
			
			<div class="container text-center">
				<a href="${pageContext.request.contextPath }/"
					class="btn btn-outline-success m-3">Back</a>
			
				<button type="submit" class=" btn btn-outline-success">Add</button>
			</div>

		</form>
	</div>
</body>
</html>