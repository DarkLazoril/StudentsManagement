<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Gestion Filières</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="style/style.css">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<header>
<body>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link active" href="index.jsp">home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="listerEleves.action">Liste Eleves</a>  
    </li>
  </ul>
</nav>
</header>
<main class="container">
    <section class="section-title text-center mb-5">
    <h2 style="font-size: 2em; margin-top: 15px;">Liste des filières</h2>
    <div style="margin-top: 30px;">
        <a class="nav-link btn" href="#addEmployeeModal" data-toggle="modal">
            <i class="fas fa-plus" style="color: green; font-size: 1.5em;"></i>
        </a>
    </div>
    </section>          
      <table class="table">
        <thead class="thead-dark">
        <tr>
          <th>Code</th>
          <th>Nom</th>
          <th>Eleves</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="filieres">
          <tr id="<s:property value="code_fil" />">
            <td><s:property value="code_fil" /></td>
            <td><s:property value="nom_fil" /></td>
            <td>
              <a href="listerElevesDeFiliere.action?code=<s:property value="code_fil" />" style="color:blue;font-weight:bold">eleves</a>
            </td>
            <td>
              <a onclick="editFiliere('<s:property value="code_fil" />')" href="#editEmployeeModal" class="edit" data-toggle="modal" id="edit-btnn"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
              <a class="delete" onclick="if (!(confirm('Etes vous sur de vouloir supprimer cette filiere ?'))) return false" title="Delete" data-toggle="tooltip" href="deleteFiliere.action?code=<s:property value="code_fil" />"><i class="material-icons">&#xE872;</i></a>
            </td>
          </tr>
        </s:iterator>
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <s:form action="ajouterFiliere">
        <div class="modal-header">
          <h4 class="modal-title">Add Filiere</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>Code</label>
            <input  type="text" class="form-control" required name="filiere.code_fil" >
          </div>
          <div class="form-group">
            <label>Nom</label>
            <input  type="text" class="form-control" required name="filiere.nom_fil">
          </div>
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          <input type="submit" class="btn btn-success" value="Add">
        </div>
      </s:form>
    </div>
  </div>
</div>

<div id="editEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <s:form action="updateFiliere">
        <div class="modal-header">
          <h4 class="modal-title">Modifier Filière</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label>Code</label>
            <input id="edtCodIn" type="text" class="form-control" required name="filiere.code_fil" readonly="readonly">
          </div>
          <div class="form-group">
            <label>Nom</label>
            <input id="edtDesIn" type="text" class="form-control" required name="filiere.nom_fil">
          </div>

        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
            <input type="submit" class="btn btn-info" value="Update">
        </div>
      </s:form>
    </div>
  </div>
</div>
</main>
  <footer class="bg-light py-2">
    <div class="container">
      <p class="text-center">Projet_Adnan_El_Mouttaki</p>
    </div>
  </footer>
</body>
<script type="text/javascript">
  function editFiliere(code)
  {

    let filiere= document.getElementById(code);

    console.log("article CLicked " + filiere.innerHTML);

    initEdtValue("edtCodIn",filiere,1);
    initEdtValue("edtDesIn",filiere,2);
  };

  function initEdtValue(edtId,filiere, cellIdx)
  {
    document.getElementById(edtId).setAttribute("value",filiere.cells[cellIdx-1].innerHTML);
  }
</script>

</html>