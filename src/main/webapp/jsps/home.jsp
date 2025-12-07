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
        color:
