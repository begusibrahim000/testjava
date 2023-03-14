<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Add Consumer</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />
</head>
<body>
	<div class="container mt-5">
		<h1>Add Consumer</h1>
		<form action="save-consumer.jsp" method="POST">
			<div class="form-group">
				<label for="name">Name:</label>
				<input type="text" class="form-control" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="address">Address:</label>
				<textarea class="form-control" id="address" name="address" rows="3"></textarea>
			</div>
			<div class="form-group">
				<label for="city">City:</label>
				<input type="text" class="form-control" id="city" name="city" required>
			</div>
			<div class="form-group">
				<label for="province">Province:</label>
				<input type="text" class="form-control" id="province" name="province" required>
			</div>
			<div class="form-group">
				<label for="tgl_registrasi">Registration Date:</label>
				<input type="datetime-local" class="form-control" id="tgl_registrasi" name="tgl_registrasi" required>
			</div>
			<div class="form-group">
				<label for="state">State:</label>
				<select class="form-control" id="state" name="state" required>
					<option value="on">On</option>
					<option value="off">Off</option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<!-- Bootstrap JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
