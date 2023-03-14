<form method="POST" action="save_consumer.jsp">
  <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" id="name" name="name" value="<%= request.getParameter("name") %>">
  </div>
  <div class="form-group">
    <label for="address">Address:</label>
    <textarea class="form-control" id="address" name="address"><%= request.getParameter("address") %></textarea>
  </div>
  <div class="form-group">
    <label for="city">City:</label>
    <input type="text" class="form-control" id="city" name="city" value="<%= request.getParameter("city") %>">
  </div>
  <div class="form-group">
    <label for="province">Province:</label>
    <input type="text" class="form-control" id="province" name="province" value="<%= request.getParameter("province") %>">
  </div>
  <div class="form-group">
    <label for="tgl_registrasi">Registration Date:</label>
    <input type="date" class="form-control" id="tgl_registrasi" name="tgl_registrasi" value="<%= request.getParameter("tgl_registrasi") %>">
  </div>
  <div class="form-group">
    <label for="state">State:</label>
    <select class="form-control" id="state" name="state">
      <option value="on" <%= request.getParameter("state").equals("on") ? "selected" : "" %>>On</option>
      <option value="off" <%= request.getParameter("state").equals("off") ? "selected" : "" %>>Off</option>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Save</button>
</form>
