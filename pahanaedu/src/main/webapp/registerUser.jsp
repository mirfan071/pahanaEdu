<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>User Registration - Pahana Edu</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow-lg">
          <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Staff User Registration</h4>
          </div>
          <div class="card-body">
          
            <form action="registerUser" method="post">
            
              <div class="mb-3">
                <label for="fullname" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="fullname" name="fullname" required>
              </div>
              <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" required>
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required minlength="6">
              </div>
               <div class="mb-3">
                <label for="confirm" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="confirm" name="confirm" required minlength="6">
              </div> 
              <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select class="form-select" id="role" name="role">
                  
                  <option value="Cashier">Cashier</option>
                  <option value="Manager">Manager</option>
             
                </select>
              </div>
              
              <button type="submit" class="btn btn-success w-100">Register</button>
              
            </form>
            </div>
							            
			<% if (request.getAttribute("error") != null) { %>
			  <div class="d-flex justify-content-center">
			    <div class="alert alert-danger w-50 text-center">
			      <%= request.getAttribute("error") %>
			    </div>
			  </div>
			<% } %>
			
          <div class="card-footer text-center">
            <small>Already registered? <a href="userLogin.jsp">Login here</a></small>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
    