<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestion d'Inventaire</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background: #f5f7fb;
            font-family: 'Segoe UI', sans-serif;
            color: #212529;
        }

        .navbar {
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .card {
            border-radius: 15px;
            border: none;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
        }

        .btn {
            border-radius: 10px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            border: none;
            color: white;
        }

        .btn-success {
            background: linear-gradient(135deg, #43e97b, #38f9d7);
            border: none;
            color: white;
        }

        .btn-danger {
            background: linear-gradient(135deg, #fa709a, #fee140);
            border: none;
            color: white;
        }

        .btn-warning {
            border: none;
            color: #212529;
        }

        .table {
            background: white;
        }

        .table thead {
            background: #4facfe;
            color: white;
        }

        .table tbody tr td {
            color: #212529 !important;
            vertical-align: middle;
            font-weight: 500;
        }

        input, textarea {
            border-radius: 10px !important;
            padding: 10px !important;
        }

        footer {
            margin-top: 50px;
            padding: 20px;
            background: #343a40;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="<%= request.getContextPath() %>/">Inventory</a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/users">Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%= request.getContextPath() %>/products">Products</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-4">