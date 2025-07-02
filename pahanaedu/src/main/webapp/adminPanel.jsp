<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<%
    String admin = (String) session.getAttribute("admin");
    if (admin == null) {
        response.sendRedirect("userLogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Admin Panel - Pahana Edu Book Shop</title>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .panel-container {
      max-width: 600px;
      margin: 80px auto;
      padding: 40px;
      background-color: #ffffff;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }
    .panel-title {
      text-align: center;
      margin-bottom: 30px;
      font-size: 24px;
      font-weight: bold;
      color: #343a40;
    }
    .btn-lg {
      padding: 15px 30px;
      font-size: 20px;
      width: 100%;
      margin-bottom: 20px;
    }
    .navbar-brand img {
      height: 40px;
      margin-right: 10px;
    }
    .username {
      color: #fff;
      margin-right: 15px;
    }
  </style>
</head>
<body>

<!-- Navbar with logo and logout -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="#">
      <img src="images/logo.png" alt="Logo">
      Pahana Edu Book Shop
    </a>
    <div class="ms-auto d-flex align-items-center">
      <span class="username"><i class="fa fa-user-circle"></i> <%= admin %></span>
      <a href="logOut.jsp" class="btn btn-outline-light btn-sm">
        <i class="fas fa-sign-out-alt"></i> Logout
      </a>
    </div>
  </div>
</nav>

<!-- Admin Panel Buttons -->
<div class="panel-container">
  <div class="panel-title">Admin Control Panel</div>

  <form action="allUsers" method="get">
    <button type="submit" class="btn btn-primary btn-lg">
      👥 View All Staff
    </button>
  </form>

  <form action="salesReport" method="get">
    <button type="submit" class="btn btn-success btn-lg">
      📊 Sales Reports
    </button>
  </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
