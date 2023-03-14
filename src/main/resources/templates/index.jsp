<!DOCTYPE html>
<html>
<head>
	<title>List of Consumers</title>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>List of Consumers</h1>
		<hr>
		<div class="row">
			<div class="col-md-6">
				<form action="" method="GET">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Search by name" name="name">
						<div class="input-group-append">
							<button class="btn btn-primary" type="submit">Search</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-6 text-right">
				<a href="add-consumer.jsp" class="btn btn-success">Add New Consumer</a>
			</div>
		</div>
		<table class="table table-striped table-bordered" id="consumerTable">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Address</th>
					<th>City</th>
					<th>Province</th>
					<th>Registration Date</th>
					<th>State</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="consumer" items="${consumers}">
					<tr>
						<td>${consumer.id}</td>
						<td>${consumer.name}</td>
						<td>${consumer.address}</td>
						<td>${consumer.city}</td>
						<td>${consumer.province}</td>
						<td>${consumer.tgl_registrasi}</td>
						<td>${consumer.state}</td>
						<td>
							<a href="edit-consumer.jsp?id=${consumer.id}" class="btn btn-sm btn-primary">Edit</a>
							<a href="delete-consumer.jsp?id=${consumer.id}" class="btn btn-sm btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#consumerTable').DataTable();
		} );
	</script>
</body>
</html>