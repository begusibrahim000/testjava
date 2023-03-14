<!DOCTYPE html>
<html>
<head>
	<title>Delete Consumer Confirmation</title>
	<!-- Include Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>Delete Consumer Confirmation</h1>
		<p>Are you sure you want to delete this consumer?</p>
		<form action="delete_consumer.jsp" method="POST">
			<input type="hidden" name="consumer_id" value="123"> <!-- Replace with actual consumer ID -->
			<button type="submit" class="btn btn-danger">Yes, Delete</button>
			<a href="index.jsp" class="btn btn-secondary">Cancel</a>
		</form>
	</div>
	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
