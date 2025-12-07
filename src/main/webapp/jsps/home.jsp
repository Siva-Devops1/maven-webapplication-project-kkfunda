<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: #f9f9f9;
        font-family: Arial, sans-serif;
    }
    header {
        background: linear-gradient(90deg, #007bff, #00c6ff);
        color: white;
        padding: 20px;
        text-align: center;
    }
    h1, h3 {
        margin: 10px 0;
    }
    .info-card {
        background: white;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
        padding: 20px;
        margin: 20px auto;
        max-width: 700px;
    }
    footer {
        margin-top: 30px;
        background: #222;
        color: white;
        padding: 15px;
        text-align: center;
    }
    footer a {
        color: #00c6ff;
        text-decoration: none;
    }
</style>
</head>
<body>

<header>
    <h1> Welcome to Siva DEVOPS Portfolio </h1>
    <h3> DevOps Engineer || Linux • AWS • Docker • Kubernetes • CI/CD • Git </h3>
</header>

<div class="container">

    <!-- Server Info -->
    <div class="info-card">
        <h3>🌐 PROFESSIONAL SUMMARY </h3>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
            out.println("<p><b>DevOps Engineer with strong hands-on experience in Linux administration, CI/CD pipelines, containerization, infrastructure automation, Git-based workflows, and cloud fundamentals.</b> " + Skilled in configuring Jenkins pipelines, deploying applications using Docker, managing version control with Git/GitHub + "</p>");
            out.println("<p><b> and automating repetitive tasks. </b> " + Capable of supporting both development and production environments  + "</p>");
        %>
    </div>

    <!-- Client Info -->
    <div class="info-card">
        <h3>💻 TECHNICAL SKILLS </h3>
        <hr>
        <p><b> CI/CD Tools: Jenkins, </b> <%= GitHub Actions %></p>
        <p><b>Version Control: Git, GitHub, Branching & Merge Strategies</b> <%= Containers: Docker (Images, Volumes, Networks) %></p>
    </div>

    <!-- Contact Info -->
    <div class="info-card text-center">
        <p><b>Phone:</b> +91-xxxxxxxxx</p>
        <p><b>Email:</b> <a href="mailto:sivathereticent@gmail.com">kkeducationblr@gmail.com</a></p>
        <a href="mailto:sivathereticent@gmail.com" class="btn btn-primary mt-2">📧 Mail to KK FUNDA</a>
    </div>

    <!-- Service Links -->
    <div class="info-card text-center">
    </div>

</div>

<footer>
    
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
