<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Token Registration</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 0;
        }
        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .card {
            width: 100%;
            max-width: 400px;
            border-radius: 15px;
            padding: 2.5rem 1.875rem;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .btn-primary {
            transition: background 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056d2;
        }
        .link a {
            color: #007bff;
            text-decoration: none;
        }
        .link a:hover {
            text-decoration: underline;
        }
        .footer {
            background-color: #0d6efd;
            color: white;
            padding: 20px 0;
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Healthcare Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link active" href="Hospital.jsp"><i class="bi bi-person-plus me-1"></i>Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="patient.jsp"><i class="bi bi-box-arrow-in-right me-1"></i>Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="main-content">
        <div class="card bg-white">
            <h2 class="text-center mb-4">Token Registration</h2>
            <form action="GetTokenServlet" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your name" required>
                </div>
                <div class="mb-3">
                    <label for="mobile" class="form-label">Mobile Number</label>
                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="10-digit number" pattern="[0-9]{10}" required>
                </div>
                <div class="mb-3">
                    <label for="slot" class="form-label">Select Time Slot</label>
                    <select class="form-select" id="slot" name="slot" required>
                        <option value="">-- Select Time Slot --</option>
                        <option value="9-10am">9:00 AM - 10:00 AM</option>
                        <option value="10-11am">10:00 AM - 11:00 AM</option>
                        <option value="11-12pm">11:00 AM - 12:00 PM</option>
                        <option value="2-3pm">2:00 PM - 3:00 PM</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary w-100">Get Token</button>
            </form>
            <div class="link text-center mt-3">
                <a href="Hospital.jsp">Go to Hospital Login</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p class="mb-0">© 2025 Healthcare Portal. All Rights Reserved.</p>
            <p>Contact us: <a href="mailto:info@healthcareportal.com" class="text-white">info@healthcareportal.com</a></p>
        </div>
    </footer>

    <!-- Bootstrap 5 JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>