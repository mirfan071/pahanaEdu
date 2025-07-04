<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white text-center">
            <h4 class="mb-0">Add New Book</h4>
        </div>
        <div class="card-body">
            <form action="addBook" method="post">
                <div class="mb-3">
                    <label for="title">Book Title</label>
                    <input type="text" name="title" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="category">Category</label>
                    <input type="text" name="category" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="author">Author</label>
                    <input type="text" name="author" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="language">Language</label>
                    <select name="language" class="form-select" required>
                        <option value="English">English</option>
                        <option value="Sinhala">Sinhala</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="price">Price (LKR)</label>
                    <input type="number" step="0.01" name="price" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-success w-100">Add Book</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
