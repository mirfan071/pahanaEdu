<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Customer</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<body class="bg-light">
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow-lg">
        
         <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Add New Customer</h4>
          </div>
          
           <div class="card-body">
           
          	 	<%
				    String message = (String) session.getAttribute("message");
				    if (message != null) {
				%>
				    <div class="alert alert-success text-center"><%= message %></div>
				<%
				        session.removeAttribute("message"); // Clear it
				    } 
				    
				    String error = (String) request.getAttribute("error");
				    if (error != null) {
				%>
				   <div class="alert alert-danger text-center w-50 mx-auto"><%= error %></div>
				<%
				    }
				%>
				
			<form action="addCustomer" method="post">
			  <div class="mb-3">
			    <label for="name">Customer Name</label>
			    <input type="text" name="name" class="form-control" required>
			  </div>
			  <div class="mb-3">
			    <label for="address">Address</label>
			    <input type="text" name="address" class="form-control" required>
			  </div>
			  <div class="mb-3">
			    <label for="telephone">Telephone</label>
			    <input type="text" name="telephone" class="form-control" required pattern="\d{10}" title="Please enter exactly 10 digits">
			  </div>
			  <div class="mb-3">
			    <label for="email">Email</label>
			    <input type="email" name="email" class="form-control" required>
			  </div>
			  <button type="submit" class="btn btn-primary">Add Customer</button>
			</form>
			</div>
			
		</div>
	</div>
</div>
		</div>
			

</body>
</html>