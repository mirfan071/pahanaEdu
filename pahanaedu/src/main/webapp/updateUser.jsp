<%@ page import="model.user" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    user u = (user) request.getAttribute("user");
%>
<html>
<head>
    <title>Update User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Update User</h2>
    <form action="updateUsers" method="post">
        <input type="hidden" name="id" value="<%= u.getId() %>">

        <div class="mb-3">
            <label>Full Name</label>
            <input type="text" name="fullname" class="form-control" value="<%= u.getFullname() %>" required>
        </div>

        <div class="mb-3">
            <label>Username</label>
            <input type="text" name="username" class="form-control" value="<%= u.getUsername() %>" required>
        </div>

        <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="<%= u.getEmail() %>" required>
        </div>

        <div class="mb-3">
            <label>Role</label>
            <select name="role" class="form-select" required>
                <option value="Cashier" <%= u.getRole().equals("Cashier") ? "selected" : "" %>>Cashier</option>
                <option value="Manager" <%= u.getRole().equals("Manager") ? "selected" : "" %>>Manager</option>
            </select>
        </div>

        <div class="mb-3">
            <label>New Password (Leave blank to keep existing password)</label>
            <input type="password" name="password" class="form-control" minlength="6">
        </div>

        <button type="submit" class="btn btn-success">Update</button>
        <a href="allUsers" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
