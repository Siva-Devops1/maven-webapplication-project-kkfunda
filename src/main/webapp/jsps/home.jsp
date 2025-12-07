<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Siva DevOps Portfolio</title>

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
    <h1>Welcome to Siva DEVOPS Portfolio</h1>
    <h3>DevOps Engineer || Linux • AWS • Docker • Kubernetes • CI/CD • Git</h3>
</header>

<div class="container">

    <!-- PROFESSIONAL SUMMARY -->
    <div class="info-card">
        <h3>🌐 PROFESSIONAL SUMMARY</h3>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
        %>
        <p>
            <b>DevOps Engineer with hands-on experience in Linux administration, CI/CD pipelines,
            containerization, automation scripting, Git-based workflows, and cloud fundamentals.</b>
        </p>
        <p>
            Skilled in configuring Jenkins pipelines, deploying applications using Docker, managing
            Git/GitHub workflows, and automating repetitive tasks. Capable of supporting both development
            and production environments efficiently.
        </p>
        <p><b>Server IP:</b> <%= ip %></p>
    </div>

    <!-- TECHNICAL SKILLS -->
    <div class="info-card">
        <h3>💻 TECHNICAL SKILLS</h3>
        <hr>
        <p><b>CI/CD Tools:</b> Jenkins, GitHub Actions</p>
        <p><b>Version Control:</b> Git, GitHub (Branching & Merge Strategies)</p>
        <p><b>Containers:</b> Docker (Images, Volumes, Networks)</p>
        <
