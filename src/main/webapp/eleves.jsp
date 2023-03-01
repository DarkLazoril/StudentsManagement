<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Gestion Élèves</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
      <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
<header class="fixed-top">
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
    <h2 style="font-size: 2em; margin-top: 15px;">List of Eleves</h2>
    <div style="margin-top: 15px;">
        <a class="nav-link btn" href="#addEmployeeModal" data-toggle="modal">
            <i class="fas fa-plus" style="color: green; font-size: 1.5em;"></i>
        </a>
    </div>
    <div style="margin-top: 1px;">
        <h4 class="mb-3">Le nombre d'étudiants non inscrits à une filière est <s:property value="nbnonafct" /></h4> 
    </div>
    </section>
      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th>Cne</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Moyenne</th>
            <th>Filière</th>
            <th></th>
          </tr>
        </thead>
        <tbody>                                      
          <s:iterator value="eleves">
            <tr id="<s:property value="cne" />">
              <td><s:property value="cne" /></td>
              <td><s:property value="nom" /></td>
              <td><s:property value="prenom" /></td>
              <td><s:property value="moyenne" /></td>
              <td><s:property value="Ref_Fil.nom_fil" /></td>
              <td>
                <a onclick="editEleve('<s:property value="cne" />')" href="#editEmployeeModal" class="edit" data-toggle="modal" id="edit-btnn">
                  <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                </a>
                <a class="delete" onclick="if (!(confirm('Etes vous sur de vouloir supprimer cette Eleve ?'))) return false" title="Delete" data-toggle="tooltip" href="deleteEleve.action?code=<s:property value="cne" />">
                    <i class="material-icons">&#xE872;</i></a>
                </td>			    
	        </tr>
                </s:iterator>
		</tbody>
                </table>
		</div>
		</div>
		</div>
            </div>
	</section>
    </div>
  </div>
</div>
                                                
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">   
    <s:form action="ajouterEleve">
        <div class="modal-header">
            <h4 class="modal-title">Add Eleve</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
        <div class="form-group">
            <label>cne</label>
            <input  type="text" class="form-control" required name="eleve.cne" >
        </div>
        <div class="form-group">
            <label>Nom</label>
            <input  type="text" class="form-control" required name="eleve.nom">
        </div>
        <div class="form-group">
            <label>Prenom</label>
            <input  type="text" class="form-control" required name="eleve.prenom">
        </div>
        <div class="form-group">
            <label>Moyenne</label>
            <input  type="text" class="form-control" required name="eleve.moyenne">
        </div>
        <div class="form-group">
            <label >Filiere</label>
            <select class="form-control" name="codeelvfil">
            <option value="">--Please choose an option--</option>
            <s:iterator value="filieres">
            <option value="<s:property value="code_fil" />"><s:property value="nom_fil"></s:property> </option>
            </s:iterator>
            </select>
        </div>
        </div>
    </div>
  </div>
    <div class="modal-footer">
      <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
      <input type="submit" class="btn btn-success" value="Add">
    </div>
</div>
  </s:form>
    </div>
  </div>
</div>
<div id="editEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
        
    <s:form action="updateEleve">
        <div class="modal-header">
            <h4 class="modal-title">Edit Eleve</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label>cne</label>
                <input id="edtCodIn" type="text" class="form-control" required name="eleve.cne" readonly="readonly" >
      </div>
      <div class="form-group">
        <label>Nom</label>
        <input id="edtNomIn" type="text" class="form-control" required name="eleve.nom">
      </div>
      <div class="form-group">
        <label>Prenom</label>
        <input id="edtPrenomIn" type="text" class="form-control" required name="eleve.prenom">
      </div>
      <div class="form-group">
        <label>Moyenne</label>
        <input  id="edtMoyenneIn" type="text" class="form-control" required name="eleve.moyenne">
      </div>
      <div class="form-group">
        <label >Filiere</label>

        <select class="form-control" id="edtFiliereIn" name="codeelvfil">
          <option disabled>--Please choose an option--</option>
          <s:iterator value="filieres">
            <option value="<s:property value="code_fil" />"><s:property value="nom_fil"></s:property> </option>
          </s:iterator>
        </select>
      </div>
    </div>
  </div>
</div>
<div class="modal-footer">
  <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
  <input type="submit" class="btn btn-success" value="UPDATE">
</div>
</div>
</s:form>
</main>
  <footer class="bg-light py-2">
    <div class="container">
      <p class="text-center">Projet_Adnan_El_Mouttaki</p>
    </div>
  </footer>
</body>
<script type="text/javascript">
  function editEleve(code)
  {
    let eleve= document.getElementById(code);
    console.log("article CLicked " + eleve.innerHTML);
    initEdtValue("edtCodIn",eleve,1);
    initEdtValue("edtNomIn",eleve,2);
    initEdtValue("edtPrenomIn",eleve,3);
    initEdtValue("edtMoyenneIn",eleve,4);
    function initEdtValue(edtId,eleve, cellIdx)
  {
    document.getElementById(edtId).setAttribute("value",eleve.cells[cellIdx-1].innerHTML);
  }
  function initEdtValue(edtId, eleve, cellIdx) {
    let value = eleve.cells[cellIdx - 1].innerHTML;
    if (edtId === "edtMoyenneIn") {
        value = Number(value).toLocaleString("fr-FR", {
            minimumFractionDigits: 1,
            maximumFractionDigits: 1
        });
    }
    document.getElementById(edtId).setAttribute("value", value);
}

  };
  
</script>
</html>