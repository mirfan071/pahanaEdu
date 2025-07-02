<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Staff Log In</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow-lg">
          <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Staff Login</h4>
          </div>
          <div class="card-body">
          
            <form action="loginUser" method="post">
            
             
              <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
              </div>
             
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required minlength="6">
             
              </div>
              <button type="submit" class="btn btn-success w-100">Log In</button>
              
            </form>
          </div>
          
          <% if (request.getAttribute("error") != null) { %>
			  <div class="d-flex justify-content-center">	
			    <div class="alert alert-danger w-50 text-center">
			      <%= request.getAttribute("error") %>
			    </div>
			  </div>
		 <% } %>
			
          
        </div>
      </div>
    </div>
  </div>
</body>
</html>
    