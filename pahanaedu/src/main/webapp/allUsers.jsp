<%@ page import="java.util.List" %>
<%@ page import="model.user" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container mt-5">
    <h2 class="mb-4">User List</h2>
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Full Name</th>
                <th>User Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        
			<%
			    List<user> users = (List<user>) request.getAttribute("users");
			    if (users != null && !users.isEmpty()) {
			        int count = 1; // Declare before loop
			        for (user u : users) {
			%>
			<tr>
			    <td><%= count %></td> <!-- display current count -->
			    <td><%= u.getFullname() %></td>
			    <td><%= u.getUsername() %></td>
			    <td><%= u.getEmail() %></td>
			    <td><%= u.getRole() %></td>
			    <td>
			        <a href="editUser?id=<%= u.getId() %>" class="btn btn-warning btn-sm">Edit</a>
			        <a href="deleteUser?id=<%= u.getId() %>" class="btn btn-danger btn-sm"
			           onclick="return confirm('Are you sure you want to delete this user?');">
			            Delete
			        </a>
			    </td>
			</tr>
			<%
			            count++; // increment AFTER displaying
			        }
			    } else {
			%>
			<tr>
			    <td colspan="6" class="text-center">No users found.</td>
			</tr>
			<%
			    }
			%>

        </tbody>
    </table>
    
    <div><a href=adminPanel.jsp><button class="btn btn-primary btn-lg"> Back to Admin Panel	</button></a></div>
</div>
</body>
</html>
