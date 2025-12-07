<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Siva | DevOps Engineer</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />

<style>
    :root {
        --bg-body: #f5f5f7;
        --bg-elevated: rgba(255, 255, 255, 0.82);
        --bg-hero: linear-gradient(135deg, #f5f5f7, #e5e7eb);
        --border-soft: rgba(148, 163, 184, 0.35);
        --text-main: #111827;
        --text-muted: #6b7280;
        --accent: #0f62fe;
        --accent-soft: rgba(15, 98, 254, 0.12);
        --shadow-soft: 0 18px 45px rgba(15, 23, 42, 0.18);
    }

    body.dark-mode {
        --bg-body: #020617;
        --bg-elevated: rgba(15, 23, 42, 0.96);
        --bg-hero: radial-gradient(circle at top, #0f172a, #020617);
        --border-soft: rgba(30, 64, 175, 0.8);
        --text-main: #e5e7eb;
        --text-muted: #9ca3af;
        --accent: #38bdf8;
        --accent-soft: rgba(56, 189, 248, 0.18);
        --shadow-soft: 0 22px 55px rgba(15, 23, 42, 0.9);
    }

    * {
        box-sizing: border-box;
    }

    body {
        background: var(--bg-body);
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        color: var(--text-main);
        margin: 0;
        transition: background 0.3s ease, color 0.3s ease;
        scroll-behavior: smooth;
    }

    /* Sticky Nav */
    .nav-shell {
        position: sticky;
        top: 0;
        z-index: 50;
        backdrop-filter: blur(18px);
        background: linear-gradient(to bottom,
                    rgba(248, 250, 252, 0.92),
                    rgba(248, 250, 252, 0.85),
                    transparent);
    }
    body.dark-mode .nav-shell {
        background: linear-gradient(to bottom,
                    rgba(15, 23, 42, 0.96),
                    rgba(15, 23, 42, 0.9),
                    transparent);
    }

    .nav-inner {
        max-width: 1120px;
        margin: 0 auto;
        padding: 10px 18px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        column-gap: 24px;
    }

    .brand-block {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .avatar-circle {
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background: radial-gradient(circle at 30% 20%, #ffffff, var(--accent));
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 700;
        color: #ffffff;
        box-shadow: 0 8px 20px rgba(15, 23, 42, 0.4);
        font-size: 18px;
    }

    .brand-text {
        display: flex;
        flex-direction: column;
        line-height: 1.1;
    }
    .brand-text span:first-child {
        font-weight: 600;
        font-size: 15px;
    }
    .brand-text span:last-child {
        font-size: 11px;
        color: var(--text-muted);
    }

    .nav-links {
        display: flex;
        flex-wrap: wrap;
        gap: 14px;
        font-size: 13px;
    }

    .nav-links a {
        text-decoration: none;
        color: var(--text-muted);
        padding: 5px 10px;
        border-radius: 999px;
        transition: background 0.2s ease, color 0.2s ease;
    }

    .nav-links a:hover {
        background: var(--accent-soft);
        color: var(--accent);
    }

    .theme-toggle-btn {
        border-radius: 999px;
        border: 1px solid rgba(148, 163, 184, 0.6);
        background: rgba(148, 163, 184, 0.12);
        color: var(--text-main);
        padding: 5px 10px;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        font-size: 11px;
        cursor: pointer;
        transition: background 0.2s ease, transform 0.1s ease, border-color 0.2s ease;
    }

    .theme-toggle-btn:hover {
        background: rgba(148, 163, 184, 0.2);
        transform: translateY(-1px);
        border-color: var(--accent);
    }
    .theme-toggle-btn i {
        font-size: 14px;
    }

    /* Hero */
    .hero {
        background: var(--bg-hero);
        padding: 38px 16px 30px;
    }

    .hero-inner {
        max-width: 1120px;
        margin: 0 auto;
        display: grid;
        grid-template-columns: 1.1fr 1fr;
        gap: 26px;
        align-items: center;
    }

    .hero-title {
        font-size: 32px;
        font-weight: 650;
        letter-spacing: -0.04em;
        margin-bottom: 10px;
    }

    .hero-subtitle {
        font-size: 14px;
        color: var(--text-muted);
        margin-bottom: 16px;
        max-width: 480px;
    }

    .hero-pill-row {
        display: flex;
        flex-wrap: wrap;
        gap: 8px;
        margin-bottom: 18px;
    }

    .pill {
        font-size: 11px;
        padding: 5px 12px;
        border-radius: 999px;
        background: var(--accent-soft);
        color: var(--accent);
        display: inline-flex;
        align-items: center;
        gap: 6px;
    }

    .pill i {
        font-size: 13px;
    }

    .hero-cta-row {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin-bottom: 8px;
    }

    .hero-note {
        font-size: 11px;
        color: var(--text-muted);
    }

    .btn-primary,
    .btn-outline-secondary {
        border-radius: 999px;
        font-size: 13px;
        padding: 7px 16px;
    }

    .btn-primary i,
    .btn-outline-secondary i {
        font-size: 15px;
        margin-right: 5px;
    }

    .hero-card {
        background: var(--bg-elevated);
        border-radius: 20px;
        padding: 18px 18px 16px;
        border: 1px solid var(--border-soft);
        box-shadow: var(--shadow-soft);
        backdrop-filter: blur(20px);
    }

    .hero-card h6 {
        font-size: 13px;
        margin-bottom: 8px;
        font-weight: 600;
    }

    .hero-card p {
        font-size: 12px;
        margin-bottom: 4px;
    }

    .hero-meta {
        display: flex;
        justify-content: space-between;
        gap: 10px;
        margin-top: 10px;
        font-size: 11px;
        color: var(--text-muted);
    }

    .hero-meta span {
        display: flex;
        align-items: center;
        gap: 4px;
    }

    /* Main layout */
    .page-shell {
        max-width: 1120px;
        margin: 0 auto;
        padding: 20px 16px 40px;
    }

    .main-grid {
        display: grid;
        grid-template-columns: minmax(0, 1.1fr) minmax(0, 1.25fr);
        gap: 20px;
    }

    @media (max-width: 992px) {
        .hero-inner {
            grid-template-columns: 1fr;
        }
        .main-grid {
            grid-template-columns: 1fr;
        }
    }

    /* Cards / Sections */
    .card-shell {
        background: var(--bg-elevated);
        border-radius: 18px;
        padding: 18px 18px 16px;
        border: 1px solid var(--border-soft);
        box-shadow: 0 12px 35px rgba(15, 23, 42, 0.12);
        margin-bottom: 18px;
        backdrop-filter: blur(18px);
        transition: transform 0.2s ease, box-shadow 0.2s ease, border-color 0.2s ease, background 0.3s ease;
    }

    .card-shell:hover {
        transform: translateY(-2px);
        box-shadow: 0 18px 45px rgba(15, 23, 42, 0.2);
        border-color: var(--accent-soft);
    }

    .card-title-row {
        display: flex;
        align-items: center;
        gap: 8px;
        margin-bottom: 10px;
    }

    .card-title-row i {
        font-size: 18px;
        color: var(--accent);
    }

    .card-title-row h5 {
        font-size: 16px;
        margin: 0;
        font-weight: 600;
    }

    .card-body-text {
        font-size: 13px;
        color: var(--text-main);
    }

    .card-body-text p {
        margin-bottom: 8px;
    }

    /* Skills / bars */
    .skill-row {
        margin-bottom: 8px;
    }

    .skill-label {
        display: flex;
        justify-content: space-between;
        font-size: 12px;
        margin-bottom: 3px;
    }

    .skill-bar-track {
        height: 7px;
        border-radius: 999px;
        background: rgba(148, 163, 184, 0.3);
        overflow: hidden;
    }

    .skill-bar-fill {
        height: 100%;
        width: 0;
        border-radius: inherit;
        background: linear-gradient(90deg, var(--accent), #34d399);
        transition: width 1s ease-out;
    }

    .meta-line {
        font-size: 12px;
        color: var(--text-muted);
        margin-bottom: 3px;
    }

    .project-block,
    .timeline-item,
    .cert-item {
        padding: 10px 0;
        border-bottom: 1px solid rgba(148, 163, 184, 0.35);
    }
    .project-block:last-child,
    .timeline-item:last-child,
    .cert-item:last-child {
        border-bottom: none;
    }

    .item-title {
        font-size: 14px;
        font-weight: 600;
        margin-bottom: 3px;
    }

    .item-sub {
        font-size: 12px;
        color: var(--text-muted);
        margin-bottom: 4px;
    }

    .tag-row span {
        display: inline-block;
        border-radius: 999px;
        border: 1px solid rgba(148, 163, 184, 0.7);
        padding: 2px 8px;
        font-size: 11px;
        margin-right: 6px;
        margin-top: 4px;
    }

    /* Contact */
    .contact-line {
        font-size: 13px;
        margin-bottom: 6px;
        display: flex;
        align-items: center;
        gap: 6px;
    }

    .contact-line i {
        color: var(--accent);
    }

    footer {
        text-align: center;
        font-size: 11px;
        color: var(--text-muted);
        padding: 8px 0 18px;
    }
</style>
</head>
<body>

<!-- NAV -->
<div class="nav-shell">
    <div class="nav-inner">
        <div class="brand-block">
            <div class="avatar-circle">S</div>
            <div class="brand-text">
                <span>Siva | DevOps Engineer</span>
                <span>Linux • AWS • Docker • Kubernetes • CI/CD • Git</span>
            </div>
        </div>
        <div class="d-flex align-items-center gap-2">
            <nav class="nav-links d-none d-md-flex">
                <a href="#home">Home</a>
                <a href="#skills">Skills</a>
                <a href="#projects">Projects</a>
                <a href="#experience">Experience</a>
                <a href="#education">Education</a>
                <a href="#certifications">Certifications</a>
                <a href="#contact">Contact</a>
            </nav>
            <button id="themeToggle" class="theme-toggle-btn">
                <i class="bi bi-moon-stars" id="themeIcon"></i>
                <span id="themeLabel">Dark mode</span>
            </button>
        </div>
    </div>
</div>

<!-- HERO -->
<section id="home" class="hero">
    <div class="hero-inner">
        <div>
            <div class="hero-title">Building reliable, automated delivery pipelines.</div>
            <div class="hero-subtitle">
                I’m a DevOps Engineer focused on making software delivery predictable and repeatable
                using Linux, CI/CD, Docker, Git, and AWS fundamentals.
            </div>

            <div class="hero-pill-row">
                <span class="pill"><i class="bi bi-gear"></i> Jenkins & GitHub Actions</span>
                <span class="pill"><i class="bi bi-box-seam"></i> Docker-based deployments</span>
                <span class="pill"><i class="bi bi-cloud"></i> AWS EC2 hosting</span>
            </div>

            <div class="hero-cta-row">
                <a href="#contact" class="btn btn-primary">
                    <i class="bi bi-send-check"></i> Contact Me
                </a>
                <!-- Replace with your actual resume link -->
                <a href="resume.pdf" target="_blank" class="btn btn-outline-secondary">
                    <i class="bi bi-file-earmark-arrow-down"></i> Download Resume
                </a>
            </div>
            <div class="hero-note">
                Available for DevOps / Cloud / Build & Release roles.
            </div>
        </div>

        <div>
            <div class="hero-card">
                <h6>Snapshot</h6>
                <p><b>Role:</b> DevOps Engineer (hands-on, individual contributor)</p>
                <p><b>Focus:</b> Linux, Jenkins, Git/GitHub, Docker, AWS EC2</p>
                <div class="hero-meta">
                    <span><i class="bi bi-diagram-3"></i> CI/CD pipelines</span>
                    <span><i class="bi bi-box"></i> Containers</span>
                    <span><i class="bi bi-cloud-check"></i> Cloud-ready</span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- MAIN -->
<main class="page-shell">
    <div class="main-grid">
        <!-- LEFT COLUMN: Summary, Skills, Certifications -->
        <div>
            <!-- SUMMARY -->
            <section class="card-shell" id="summary">
                <div class="card-title-row">
                    <i class="bi bi-person-badge"></i>
                    <h5>Professional Summary</h5>
                </div>
                <div class="card-body-text">
                    <p>
                        DevOps Engineer with practical experience in Linux administration, CI/CD pipeline creation,
                        containerization, version control, and cloud fundamentals. Skilled at automating build and
                        deployment workflows, improving release reliability, and reducing manual effort using
                        Jenkins, Docker, Git, and scripting.
                    </p>
                    <p>
                        Strong understanding of how applications move from development to production, with a hands-on
                        approach to troubleshooting, environment setup, and configuration. Focused on clean processes,
                        reproducible environments, and continuous improvement.
                    </p>
                </div>
            </section>

            <!-- SKILLS -->
            <section class="card-shell" id="skills">
                <div class="card-title-row">
                    <i class="bi bi-tools"></i>
                    <h5>Technical Skills</h5>
                </div>
                <div class="card-body-text">
                    <!-- Skill Bars -->
                    <div class="skill-row">
                        <div class="skill-label">
                            <span>CI/CD (Jenkins, GitHub Actions)</span>
                            <span>80%</span>
                        </div>
                        <div class="skill-bar-track">
                            <div class="skill-bar-fill" data-level="80"></div>
                        </div>
                    </div>

                    <div class="skill-row">
                        <div class="skill-label">
                            <span>Git & GitHub (branching, PRs)</span>
                            <span>85%</span>
                        </div>
                        <div class="skill-bar-track">
                            <div class="skill-bar-fill" data-level="85"></div>
                        </div>
                    </div>

                    <div class="skill-row">
                        <div class="skill-label">
                            <span>Linux (admin, shell)</span>
                            <span>80%</span>
                        </div>
                        <div class="skill-bar-track">
                            <div class="skill-bar-fill" data-level="80"></div>
                        </div>
                    </div>

                    <div class="skill-row">
                        <div class="skill-label">
                            <span>Docker (images, containers, volumes)</span>
                            <span>75%</span>
                        </div>
                        <div class="skill-bar-track">
                            <div class="skill-bar-fill" data-level="75"></div>
                        </div>
                    </div>

                    <div class="skill-row">
                        <div class="skill-label">
                            <span>AWS (EC2, S3, basics)</span>
                            <span>65%</span>
                        </div>
                        <div class="skill-bar-track">
                            <div class="skill-bar-fill" data-level="65"></div>
                        </div>
                    </div>

                    <hr class="mt-3 mb-2" />

                    <!-- Core Skills wording -->
                    <p><b>Core Skills:</b></p>
                    <ul style="padding-left: 18px; font-size: 13px;">
                        <li><b>CI/CD:</b> Designing and maintaining basic pipelines using Jenkins and GitHub Actions for build, test, and deployment automation.</li>
                        <li><b>Version Control:</b> Git and GitHub for branching, pull requests, code review, and repository management.</li>
                        <li><b>Linux:</b> User and permission management, services, packages, and shell scripting for automation.</li>
                        <li><b>Containers:</b> Building and running Docker images/containers, working with volumes and networks for reproducible environments.</li>
                        <li><b>Cloud (AWS):</b> Launching and managing EC2 instances, configuring security groups, deploying applications.</li>
                        <li><b>Automation & Troubleshooting:</b> Automating repetitive tasks, reading logs, and debugging build/deploy failures.</li>
                    </ul>
                </div>
            </section>

            <!-- CERTIFICATIONS -->
            <section class="card-shell" id="certifications">
                <div class="card-title-row">
                    <i class="bi bi-award"></i>
                    <h5>Certifications</h5>
                </div>
                <div class="card-body-text">
                    <div class="cert-item">
                        <div class="item-title">
                            <i class="bi bi-patch-check"></i> AWS Cloud Certification (Planned / In-progress)
                        </div>
                        <div class="item-sub">
                            Focus on core AWS services, IAM, networking basics, and security to support cloud-hosted workloads.
                        </div>
                    </div>

                    <div class="cert-item">
                        <div class="item-title">
                            <i class="bi bi-patch-check"></i> Linux / DevOps Online Courses
                        </div>
                        <div class="item-sub">
                            Hands-on labs in Linux, shell scripting, Git, CI/CD concepts, and introductory cloud tooling.
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- RIGHT COLUMN: Projects, Experience, Education, Contact -->
        <div>
            <!-- PROJECTS -->
            <section class="card-shell" id="projects">
                <div class="card-title-row">
                    <i class="bi bi-kanban"></i>
                    <h5>Projects</h5>
                </div>
                <div class="card-body-text">
                    <div class="project-block">
                        <div class="item-title">
                            <i class="bi bi-diagram-3-fill"></i> CI/CD Pipeline for Java Web Application
                        </div>
                        <div class="meta-line">
                            Jenkins • GitHub • Maven • Tomcat • Linux
                        </div>
                        <p>
                            Built an end-to-end CI/CD pipeline using Jenkins. Automated code pull from GitHub,
                            triggered Maven build, archived artifacts, and deployed the WAR to a Tomcat server on Linux.
                            Added basic notifications and optional parameters for flexible builds.
                            Improved deployment consistency and removed manual steps.
                        </p>
                        <div class="tag-row">
                            <span>Jenkins</span><span>GitHub</span><span>Maven</span><span>Tomcat</span>
                        </div>
                    </div>

                    <div class="project-block">
                        <div class="item-title">
                            <i class="bi bi-box-seam-fill"></i> Dockerized Application Stack
                        </div>
                        <div class="meta-line">
                            Docker • Images • Volumes • Networks
                        </div>
                        <p>
                            Containerized a sample multi-tier application by creating lightweight custom images,
                            managing persistent volumes, and isolating communication through Docker networks.
                            Ensured repeatable environments across machines and reduced setup time.
                        </p>
                        <div class="tag-row">
                            <span>Docker</span><span>Images</span><span>Volumes</span><span>Networks</span>
                        </div>
                    </div>

                    <div class="project-block">
                        <div class="item-title">
                            <i class="bi bi-cloud-check-fill"></i> AWS EC2 Hosting & Automation
                        </div>
                        <div class="meta-line">
                            AWS EC2 • Shell scripting • Security Groups
                        </div>
                        <p>
                            Deployed and managed applications on EC2 instances, configured networking and security groups,
                            and automated updates using shell scripts. Simplified environment setup and improved
                            consistency across instances.
                        </p>
                        <div class="tag-row">
                            <span>AWS EC2</span><span>Shell scripting</span><span>Automation</span>
                        </div>
                    </div>
                </div>
            </section>

            <!-- EXPERIENCE -->
            <section class="card-shell" id="experience">
                <div class="card-title-row">
                    <i class="bi bi-briefcase"></i>
                    <h5>Experience</h5>
                </div>
                <div class="card-body-text">
                    <div class="timeline-item">
                        <div class="item-title">DevOps Engineer – Self-Driven Practice & Projects</div>
                        <div class="item-sub">Remote / Personal Lab • 2024 – Present</div>
                        <p>
                            Set up and managed a personal lab environment to practice Linux administration, CI/CD
                            pipelines, and Docker-based deployments.
                        </p>
                        <p>
                            Built Jenkins pipelines to compile, test, and deploy sample Java applications from GitHub
                            to Tomcat on Linux servers.
                        </p>
                        <p>
                            Used Git and GitHub for branching, pull requests, and version control across multiple small projects.
                        </p>
                        <p>
                            Containerized sample applications with Docker, working with images, containers, volumes, and
                            networks to create reproducible environments.
                        </p>
                        <p>
                            Deployed and tested workloads on AWS EC2 instances, configured security groups, and used shell
                            scripts to automate basic maintenance tasks.
                        </p>
                        <div class="tag-row">
                            <span>Jenkins</span><span>Git</span><span>Linux</span><span>Docker</span><span>AWS EC2</span>
                        </div>
                    </div>
                </div>
            </section>

            <!-- EDUCATION -->
            <section class="card-shell" id="education">
                <div class="card-title-row">
                    <i class="bi bi-mortarboard"></i>
                    <h5>Education</h5>
                </div>
                <div class="card-body-text">
                    <!-- Replace with your real details -->
                    <div class="timeline-item">
                        <div class="item-title">Bachelor's / Graduation (Update with your degree)</div>
                        <div class="item-sub">College / University Name</div>
                        <p>
                            Add a short line about relevant coursework or areas of interest such as Operating Systems,
                            Computer Networks, Databases, or Programming, depending on what you actually studied.
                        </p>
                    </div>
                </div>
            </section>

            <!-- CONTACT -->
            <section class="card-shell" id="contact">
                <div class="card-title-row">
                    <i class="bi bi-envelope-paper"></i>
                    <h5>Contact</h5>
                </div>
                <div class="card-body-text">
                    <div class="contact-line">
                        <i class="bi bi-telephone-forward"></i>
                        <span><b>Phone:</b> +91-xxxxxxxxxx</span>
                    </div>
                    <div class="contact-line">
                        <i class="bi bi-envelope"></i>
                        <span><b>Email:</b>
                            <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a>
                        </span>
                    </div>
                    <div class="contact-line">
                        <i class="bi bi-github"></i>
                        <span><b>GitHub:</b>
                            <!-- Replace with your real GitHub -->
                            <a href="https://github.com/" target="_blank">github.com/your-profile</a>
                        </span>
                    </div>
                    <div class="contact-line">
                        <i class="bi bi-linkedin"></i>
                        <span><b>LinkedIn:</b>
                            <!-- Replace with your real LinkedIn -->
                            <a href="https://www.linkedin.com/" target="_blank">linkedin.com/in/your-profile</a>
                        </span>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>

<footer>
    &copy; <%= java.time.Year.now() %> Siva | DevOps Engineer. All rights reserved.
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    (function () {
        const body = document.body;
        const toggleBtn = document.getElementById('themeToggle');
        const themeIcon = document.getElementById('themeIcon');
        const themeLabel = document.getElementById('themeLabel');

        // Load preference
        const stored = localStorage.getItem('siva-theme');
        if (stored === 'dark') {
            body.classList.add('dark-mode');
            themeIcon.classList.remove('bi-moon-stars');
            themeIcon.classList.add('bi-sun');
            themeLabel.textContent = 'Light mode';
        }

        toggleBtn.addEventListener('click', function () {
            body.classList.toggle('dark-mode');
            const isDark = body.classList.contains('dark-mode');
            if (isDark) {
                themeIcon.classList.remove('bi-moon-stars');
                themeIcon.classList.add('bi-sun');
                themeLabel.textContent = 'Light mode';
                localStorage.setItem('siva-theme', 'dark');
            } else {
                themeIcon.classList.remove('bi-sun');
                themeIcon.classList.add('bi-moon-stars');
                themeLabel.textContent = 'Dark mode';
                localStorage.setItem('siva-theme', 'light');
            }
        });

        // Animate skill bars on load
        window.addEventListener('load', function () {
            document.querySelectorAll('.skill-bar-fill').forEach(function (bar) {
                const level = bar.getAttribute('data-level');
                requestAnimationFrame(function () {
                    bar.style.width = level + '%';
                });
            });
        });
    })();
</script>

</body>
</html>
