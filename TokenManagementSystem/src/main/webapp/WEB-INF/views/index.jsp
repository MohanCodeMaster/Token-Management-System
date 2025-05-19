<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Healthcare Portal</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 0;
        }
        .card {
            transition: transform 0.3s;
            max-width: 90%; /* Reduced card width */
        }
        .card:hover {
            transform: translateY(-10px);
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
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
        <div class="container-fluid mb-0">
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
                        <a class="nav-link" href="#about">About</a>
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
    <div class="container my-5">
        <h1 class="text-center text-primary mb-4">Welcome to Healthcare Portal</h1><br><br>
        <div class="row justify-content-center">
            <!-- Hospital Registration Card -->
            <div class="col-md-6 mb-4 d-flex justify-content-center">
                <div class="card shadow">
                    <img src="https://images.unsplash.com/photo-1512678080530-7760d81faba6?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" class="card-img-top" alt="Hospital">
                    <div class="card-body">
                        <h5 class="card-title">Hospital Registration</h5>
                        <p class="card-text">Register your hospital to provide top-notch healthcare services and manage patient care efficiently.</p>
                        <a href="Hospital.jsp" class="btn btn-primary">Register Now</a>
                    </div>
                </div>
            </div>
            <!-- Patient Registration Card -->
            <div class="col-md-6 mb-4 d-flex justify-content-center">
                <div class="card shadow">
                    <img src="https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" class="card-img-top" alt="Patient">
                    <div class="card-body">
                        <h5 class="card-title">Patient Registration</h5>
                        <p class="card-text">Join as a patient to access quality healthcare services and manage your medical records seamlessly.</p>
                        <a href="patient.jsp" class="btn btn-primary">Register Now</a>
                    </div>
                </div>
            </div>
        </div><br><br><br><br>
<!-- About -->
 <section class="content-section" >
        <div class="container" id="about" >
            <div class="row justify-content-center ">
                <div class="col-12">
                    <div class="card shadow">
                        <div class="card-body">
                            <h2 class="card-title text-primary">ABOUT</h2><BR>
                            <h4>Our Mission</h4>
                            <p>At Healthcare Portal, our mission is to streamline access to quality healthcare by providing a seamless platform for hospitals and patients. We aim to empower healthcare providers with efficient tools and enable patients to manage their health with ease.</p>
                            <h4>Our Vision</h4>
                            <p>We envision a world where healthcare is accessible, transparent, and patient-centered. By leveraging technology, we strive to bridge the gap between healthcare providers and patients, ensuring better outcomes for all.</p> <BR></BR></BR>
                            <h4>Why Choose Us?</h4>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="bi bi-check-circle-fill text-primary me-2"></i>User-friendly platform for hospital and patient registration.</li>
                                <li class="list-group-item"><i class="bi bi-check-circle-fill text-primary me-2"></i>Secure and confidential management of medical records.</li>
                                <li class="list-group-item"><i class="bi bi-check-circle-fill text-primary me-2"></i>Dedicated support for healthcare providers and patients.</li>
                                <li class="list-group-item"><i class="bi bi-check-circle-fill text-primary me-2"></i>Continuous innovation to enhance healthcare delivery.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>

    <!-- Footer -->
    <footer class="footer text-center ">
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