<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>ElevesFil</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="style/style.css">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<header>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link active" href="index.jsp">home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="listerFilieres.action">Liste Filieres</a>  
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Afficher lists
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="listerEleves.action">Tous</a>  
        <a class="dropdown-item" href="nonaffect">Non Affectées</a>  
      </div>
    </li>
  </ul>
</nav>
</header>
<main class="container">
   <section class="section-title text-center mb-5">
    <h2 style="font-size: 2em; margin-top: 100px;">Liste des élèves de la filière</h2>
    <h2 class="header-title"> <s:property value="code"></s:property> </h2>
    </section>
      <table class="table">
        <thead class="thead-dark">
        <tr>
          <th>CNE</th>
          <th>NOM</th>
          <th>PRENOM</th>
          <th>MOYENNE</th>
          <th>ACTIONS</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="eleves">
          <tr id="<s:property value="cne" />">
            <td><s:property value="cne" /></td>
            <td><s:property value="nom" /></td>
            <td><s:property value="prenom" /></td>
            <td><s:property value="moyenne" /></td>
            <td>
              <a class="delete" onclick="if (!(confirm('Etes vous sur de vouloir supprimer cette élève ?'))) return false" title="Delete" data-toggle="tooltip" href="deleteEleve.action?code=<s:property value="cne" />"><i class="material-icons">&#xE872;</i></a>
            </td>
          </tr>
        </s:iterator>
        </tbody>
      </table>
</main>
  <footer class="bg-light py-2">
    <div class="container">
      <p class="text-center">Made by Adnan El Mouttaki</p>
    </div>
  </footer>
</body>
</html>
