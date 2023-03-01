<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Styles/main.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container-xl">
    <nav class="nav nav-pills nav-fill" style="margin-top: 20px;">
      <a class="nav-item nav-link active" href="#">Home</a>
      <a class="nav-item nav-link" href="listerEleves.action">List Students</a>
      <a class="nav-item nav-link" href="listerFilieres.action">List Departments</a>
    </nav>
  </div>

  <div class="banner">
    <div class="container text-center" style="margin-top: 100px;">
      <h2 class="font-weight-semibold">Student and Department Management</h2>
      <h6 class="font-weight-normal text-muted pb-3">A simple application built with Java Spring, Struts2, and Hibernate</h6>
      <img src="images/Group171.svg" alt="" class="img-fluid">
    </div>
  </div>
    
  <footer class="bg-light py-2">
    <div class="container">
      <p class="text-center">Projet_Adnan_El_Mouttaki</p>
    </div>
  </footer>
</body>

</html>