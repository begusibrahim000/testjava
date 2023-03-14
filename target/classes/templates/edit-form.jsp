<!DOCTYPE html>
<html>
<head>
  <title>Edit Consumer Data</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <h1>Edit Consumer Data</h1>
    <form method="post" action="update_consumer.jsp">
      <div class="form-group">
        <label for="id">ID:</label>
        <input type="text" class="form-control" id="id" name="id" value="<%=request.getParameter("id")%>" readonly>
      </div>
      <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" class="form-control" id="name" name="name" value="<%=request.getParameter("name")%>" required>
      </div>
      <div class="form-group">
        <label for="address">Address:</label>
        <textarea class="form-control" id="address" name="address" required><%=request.getParameter("address")%></textarea>
      </div>
      <div class="form-group">
        <label for="city">City:</label>
        <input type="text" class="form-control" id="city" name="city" value="<%=request.getParameter("city")%>" required>
      </div>
      <div class="form-group">
        <label for="province">Province:</label>
        <input type="text" class="form-control" id="province" name="province" value="<%=request.getParameter("province")%>" required>
      </div>
      <div class="form-group">
        <label for="tgl_registrasi">Registration Date:</label>
        <input type="date" class="form-control" id="tgl_registrasi" name="tgl_registrasi" value="<%=request.getParameter("tgl_registrasi")%>" required>
      </div>
      <div class="form-group">
        <label for="state">State:</label>
        <select class="form-control" id="state" name="state" required>
          <option value="on" <%=request.getParameter("state").equals("on") ? "selected" : ""%>>On</option>
          <option value="off" <%=request.getParameter("state").equals("off") ? "selected" : ""%>>Off</option>
        </select>
      </div>
      <button type="submit" class="btn btn-primary">Update</button>
    </form>
  </div>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>
