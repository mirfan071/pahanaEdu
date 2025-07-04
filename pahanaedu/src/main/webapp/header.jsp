
<%@ page session="true" %>
<%@ page import="model.user" %>

<%
    model.user u = (model.user) session.getAttribute("user");

if (u == null) {
    response.sendRedirect("userLogin.jsp");
    return;
}
    String username = u.getUsername();
    String role = u.getRole();
	  
    
  %>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

<!-- Header Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
  <a class="navbar-brand d-flex align-items-center" href="#">
      <img src="images/logo.png" alt="Logo" style="height: 60px; width: auto;" class="me-2">
      Pahana Edu Book Shop
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarMenu">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <!-- Customer Maintain Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="customerDropdown" role="button" data-bs-toggle="dropdown">
            Customer Maintain
          </a>
          <ul class="dropdown-menu" aria-labelledby="customerDropdown">
            <li><a class="dropdown-item" href="addCustomer.jsp">Add Customer</a></li>
            <% if (!"Cashier".equalsIgnoreCase(role)) { %>
              <li><a class="dropdown-item" href="allCustomers">View All Customers</a></li>
            <% } %>
          </ul>
        </li>

        <!-- Other Menus -->
        <li class="nav-item">
          <a class="nav-link" href="billing.jsp">Billing</a>
        </li>

      </ul>

      <!-- Right Side: Username + Logout -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <div class="nav-link"><i class="fa fa-user-circle"></i> Logged User : <%= username %> </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logOut.jsp">
            <i class="fas fa-sign-out-alt"></i> Logout
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
