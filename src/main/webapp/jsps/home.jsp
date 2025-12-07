<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Siva • DevOps Engineer</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<style>
    :root {
        --bg-body: #f5f6f7;
        --bg-card: #ffffff;
        --bg-header: linear-gradient(135deg, #0059c9, #00a4db);
        --text-main: #1f2933;
        --text-muted: #6b7280;
        --border-soft: #e3e3e3;
        --accent: #0d6efd;
        --accent-soft: rgba(13, 110, 253, .08);
    }

    body.dark-mode {
        --bg-body: #0b1120;
        --bg-card: #0f172a;
        --bg-header: linear-gradient(135deg, #020617, #0f172a);
        --text-main: #e5e7eb;
        --text-muted: #9ca3af;
        --border-soft: #1f2937;
        --accent: #38bdf8;
        --accent-soft: rgba(56, 189, 248, .12);
    }

    body {
        background: var(--bg-body);
        font-family: Arial, sans-serif;
        color: var(--text-main);
        transition: background .3s ease, color .3s ease;
    }

    .page-wrapper {
        padding: 30px 15px 40px;
    }

    .profile-card,
    .info-card {
        background: var(--bg-card);
        border-radius: 16px;
        padding: 24px 22px;
        border: 1px solid var(--border-soft);
        box-shadow: 0 12px 30px rgba(15, 23, 42, 0.08);
        transition: background .3s ease, border-color .3s ease, transform .2s ease, box-shadow .2s ease;
    }

    .info-card:hover {
        transform: translateY(-2px);
        box-shadow: 0 18px 40px rgba(15, 23, 42, 0.16);
        border-color: var(--accent-soft);
    }

    header {
        background: var(--bg-header);
        color: white;
        padding: 16px 20px;
        border-radius: 16px;
        margin-bottom: 22px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 12px;
        box-shadow: 0 14px 35px rgba(15, 23, 42, 0.45);
        transition: background .3s ease;
    }

    .brand-title {
        display: flex;
        flex-direction: column;
    }

    .brand-title h1 {
        font-size: 26px;
        margin: 0;
        font-weight: 600;
    }

    .brand-title span {
        font-size: 13px;
        opacity: .9;
    }

    .theme-toggle-btn {
        border-radius: 999px;
        border: none;
        background: rgba(15, 23, 42, 0.15);
        color: #f9fafb;
        padding: 6px 12px;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        font-size: 13px;
        cursor: pointer;
        transition: background .2s ease, transform .1s ease;
    }

    .theme-toggle-btn:hover {
        background: rgba(15, 23, 42, 0.3);
        transform: translateY(-1px);
    }

    .theme-toggle-btn i {
        font-size: 16px;
    }

    .profile-name {
        font-size: 22px;
        font-weight: 600;
        margin-bottom: 4px;
    }

    .profile-role {
        font-size: 13px;
        text-transform: uppercase;
        letter-spacing: .08em;
        color: var(--text-muted);
        margin-bottom: 14px;
    }

    .chip {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        font-size: 12px;
        padding: 5px 10px;
        border-radius: 999px;
        background: var(--accent-soft);
        color: var(--accent);
        margin: 2px 4px 2px 0;
    }

    .chip i {
        font-size: 13px;
    }

    .section-title {
        font-size: 18px;
        font-weight: 600;
        margin-bottom: 12px;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .section-title i {
        font-size: 18px;
        color: var(--accent);
    }

    .skill-item {
        margin-bottom: 6px;
        font-size: 14px;
    }

    .skill-item b {
        font-weight: 600;
    }

    .contact-item {
        font-size: 14px;
        margin-bottom: 6px;
    }

    .contact-item i {
        margin-right: 6px;
        color: var(--accent);
    }

    .social-btn {
        border-radius: 999px;
        font-size: 13px;
        padding: 6px 12px;
        display: inline-flex;
        align-items: center;
        gap: 6px;
    }

    .social-btn i {
        font-size: 16px;
    }

    .btn-resume {
        border-radius: 999px;
        font-size: 13px;
        padding: 7px 14px;
    }

    .project-item {
        padding: 12px 0;
        border-bottom: 1px solid var(--border-soft);
    }

    .project-item:last-child {
        border-bottom: none;
    }

    .project-title {
        font-size: 15px;
        font-weight: 600;
        margin-bottom: 4px;
    }

    .project-meta {
        font-size: 12px;
        color: var(--text-muted);
        margin-bottom: 4px;
    }

    .project-tags span {
        display: inline-block;
        border-radius: 999px;
        border: 1px solid var(--border-soft);
        padding: 3px 8px;
        font-size: 11px;
        margin-right: 6px;
        margin-top: 4px;
    }

    footer {
        margin-top: 26px;
        background: transparent;
        color: var(--text-muted);
        text-align: center;
        font-size: 13px;
    }

    a {
        color: var(--accent);
    }

    a:hover {
        color: var(--accent);
        text-decoration: underline;
    }

    .fade-in {
        animation: fadeInUp .5s ease-out;
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(6px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @media (max-width: 991px) {
        .page-wrapper {
            padding-top: 16px;
        }
        header {
            flex-direction: column;
            align-items: flex-start;
        }
    }
</style>
</head>
<body>

<div class="container page-wrapper">
    <!-- Header with Dark Mode Toggle -->
    <header class="mb-4">
        <div class="brand-title">
            <h1>Siva</h1>
            <span>DevOps Engineer • Linux • AWS • Docker • Kubernetes • CI/CD • Git</span>
        </div>
        <button id="themeToggle" class="theme-toggle-btn">
            <i class="bi bi-moon-stars" id="themeIcon"></i>
            <span id="themeLabel">Dark mode</span>
        </button>
    </header>

    <div class="row justify-content-center g-4 fade-in">
        <div class="col-lg-10">
            <div class="row g-4">
                <!-- Left Sidebar / Profile -->
                <aside class="col-lg-4">
                    <div class="profile-card h-100">
                        <div class="profile-name">Siva</div>
                        <div class="profile-role">DevOps Engineer</div>

                        <div class="mb-2">
                            <span class="chip">
                                <i class="bi bi-gear"></i> CI/CD
                            </span>
                            <span class="chip">
                                <i class="bi bi-box-seam"></i> Docker
                            </span>
                            <span class="chip">
                                <i class="bi bi-cloud"></i> AWS
                            </span>
                            <span class="chip">
                                <i class="bi bi-terminal"></i> Linux
                            </span>
                        </div>

                        <hr class="my-3">

                        <div class="mb-2">
                            <div class="contact-item">
                                <i class="bi bi-telephone-forward"></i>
                                <b>Phone:</b> +91-xxxxxxxxxx
                            </div>
                            <div class="contact-item">
                                <i class="bi bi-envelope"></i>
                                <b>Email:</b>
                                <a href="mailto:kkeducationblr@gmail.com">sivathereticent@gmail.com</a>
                            </div>
                        </div>

                        <div class="mt-3 mb-3 d-flex flex-wrap gap-2">
                            <!-- Replace href with your real profiles -->
                            <a href="https://github.com/" target="_blank" class="btn btn-outline-dark social-btn">
                                <i class="bi bi-github"></i> GitHub
                            </a>
                            <a href="https://www.linkedin.com/" target="_blank" class="btn btn-outline-primary social-btn">
                                <i class="bi bi-linkedin"></i> LinkedIn
                            </a>
                        </div>

                        <div class="mt-1">
                            <!-- Replace resume.pdf with your actual file -->
                            <a href="resume.pdf" class="btn btn-primary btn-resume" target="_blank">
                                <i class="bi bi-file-earmark-arrow-down"></i> Download Resume
                            </a>
                        </div>
                    </div>
                </aside>

                <!-- Main Content -->
                <main class="col-lg-8">
                    <!-- Professional Summary -->
                    <div class="info-card mb-3">
                        <div class="section-title">
                            <i class="bi bi-person-badge"></i>
                            <span>Professional Summary</span>
                        </div>
                        <p>
                            DevOps Engineer with hands-on experience in Linux administration, CI/CD pipeline design,
                            containerization, automation scripting, Git-based workflows, and cloud fundamentals.
                        </p>
                        <p>
                            Skilled in configuring Jenkins pipelines, deploying applications using Docker, managing
                            Git/GitHub workflows, and automating repetitive tasks to streamline software delivery.
                            Comfortable supporting both development and production environments.
                        </p>
                    </div>

                    <!-- Technical Skills -->
                    <div class="info-card mb-3">
                        <div class="section-title">
                            <i class="bi bi-tools"></i>
                            <span>Technical Skills</span>
                        </div>

                        <p class="skill-item">
                            <b><i class="bi bi-lightning-charge"></i> CI/CD:</b>
                            Jenkins, GitHub Actions, basic pipeline-as-code
                        </p>
                        <p class="skill-item">
                            <b><i class="bi bi-git"></i> Version Control:</b>
                            Git, GitHub, branching strategies, pull requests, code reviews
                        </p>
                        <p class="skill-item">
                            <b><i class="bi bi-box-seam"></i> Containers:</b>
                            Docker (images, containers, volumes, networks), basic Docker Compose
                        </p>
                        <p class="skill-item">
                            <b><i class="bi bi-terminal"></i> Operating Systems:</b>
                            Linux (user & permission management, services, shell scripting), Windows
                        </p>
                        <p class="skill-item">
                            <b><i class="bi bi-cloud"></i> Cloud:</b>
                            AWS EC2, S3, security groups, basic IAM, deployment fundamentals
                        </p>
                        <p class="skill-item">
                            <b><i class="bi bi-diagram-3"></i> Tooling & Others:</b>
                            Basic networking concepts, monitoring/logging exposure, troubleshooting mindset
                        </p>
                    </div>

                    <!-- Projects -->
                    <div class="info-card">
                        <div class="section-title">
                            <i class="bi bi-kanban"></i>
                            <span>Selected Projects</span>
                        </div>

                        <div class="project-item">
                            <div class="project-title">
                                <i class="bi bi-diagram-3-fill"></i> CI/CD Pipeline for Java Web Application
                            </div>
                            <div class="project-meta">
                                Jenkins • GitHub • Maven • Tomcat • Linux
                            </div>
                            <p class="mb-1">
                                Designed and implemented a Jenkins pipeline for building, testing, and deploying
                                a Java web application to Tomcat on a Linux server, with automatic triggers on
                                GitHub commits.
                            </p>
                            <div class="project-tags">
                                <span>Jenkins</span>
                                <span>GitHub</span>
                                <span>Tomcat</span>
                                <span>Linux</span>
                            </div>
                        </div>

                        <div class="project-item">
                            <div class="project-title">
                                <i class="bi bi-box-seam-fill"></i> Dockerized Application Stack
                            </div>
                            <div class="project-meta">
                                Docker • Images • Volumes • Networks
                            </div>
                            <p class="mb-1">
                                Containerized a sample multi-tier application using Docker, managing custom images,
                                volumes for data persistence, and Docker networks for secure service communication.
                            </p>
                            <div class="project-tags">
                                <span>Docker</span>
                                <span>Images</span>
                                <span>Volumes</span>
                                <span>Networking</span>
                            </div>
                        </div>

                        <div class="project-item">
                            <div class="project-title">
                                <i class="bi bi-cloud-check-fill"></i> AWS EC2 Hosting & Automation
                            </div>
                            <div class="project-meta">
                                AWS EC2 • Shell scripting • Security Groups
                            </div>
                            <p class="mb-1">
                                Deployed applications on AWS EC2 instances, configured security groups, and used
                                shell scripts to automate routine maintenance tasks and deployments.
                            </p>
                            <div class="project-tags">
                                <span>AWS EC2</span>
                                <span>Shell Script</span>
                                <span>Automation</span>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </div>

    <footer class="mt-3">
        &copy; <%= java.time.Year.now() %> Siva • DevOps Portfolio
    </footer>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    (function () {
        const body = document.body;
        const toggleBtn = document.getElementById('themeToggle');
        const themeIcon = document.getElementById('themeIcon');
        const themeLabel = document.getElementById('themeLabel');

        toggleBtn.addEventListener('click', function () {
            body.classList.toggle('dark-mode');
            const isDark = body.classList.contains('dark-mode');

            if (isDark) {
                themeIcon.classList.remove('bi-moon-stars');
                themeIcon.classList.add('bi-sun');
                themeLabel.textContent = 'Light mode';
            } else {
                themeIcon.classList.remove('bi-sun');
                themeIcon.classList.add('bi-moon-stars');
                themeLabel.textContent = 'Dark mode';
            }
        });
    })();
</script>

</body>
</html>
