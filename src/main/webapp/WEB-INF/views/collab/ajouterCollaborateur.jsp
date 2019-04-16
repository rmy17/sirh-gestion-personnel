<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css" >
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Menu</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Collaborateurs
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Statistiques</a>
                </li><li class="nav-item">
                        <a class="nav-link" href="#">Activités</a>
                    </li>
            </ul>
        </div>
    </nav>

    <h1>Nouveau Collaborateur</h1>

    <br></br>
    <br></br>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">

                <form class="needs-validation" novalidate method="post">
                    <div class="form-group row">
                        <label for="validationCustom01" class="col-sm-2 col-form-label">Nom</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" id="validationCustom01" name="nom" required>
                            <div class="invalid-feedback">
                                Le nom est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="validationCustom02" class="col-sm-2 col-form-label">Prénom</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="validationCustom02" name="prenom" action="http://localhost:8080/sgp/collaborateurs/ajouter" required>
                            <div class="invalid-feedback">
                                Le prenom est obligatoire.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="validationCustom03" class="col-sm-2 col-form-label">Date de naissance</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="validationCustom03" name="dateNaissance" action="http://localhost:8080/sgp/collaborateurs/ajouter" required>
                            <div class="invalid-feedback">
                                La date de naissance est obligatoire.
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="validationCustom04" class="col-sm-2 col-form-label">Adresse</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" id="validationCustom04" rows="2" name="adresse" action="http://localhost:8080/sgp/collaborateurs/ajouter" required></textarea>
                            <div class="invalid-feedback">
                                L'adresse est obligatoire.
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="validationCustom05" class="col-sm-2 col-form-label">Numéro de sécurité social</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="validationCustom05" name="numSecu" action="http://localhost:8080/sgp/collaborateurs/ajouter" required>
                            <div class="invalid-feedback">
                                Le Numéro de sécurité social est obligatoire.
                            </div>
                        </div>
                    </div>
            </div>
            <div class="container-fluid">
                    <button class="btn btn-primary float-right" type="submit" data-toggle="modal" data-target="#exampleModal">Créer</button>
            </div>
               
            </form>

            <script>
                // Example starter JavaScript for disabling form submissions if there are invalid fields
                (function () {
                    'use strict';
                    window.addEventListener('load', function () {
                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.getElementsByClassName('needs-validation');
                        // Loop over them and prevent submission
                        var validation = Array.prototype.filter.call(forms, function (form) {
                            form.addEventListener('submit', function (event) {
                                if (form.checkValidity() === false) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                }
                                form.classList.add('was-validated');
                            }, false);
                        });
                    }, false);
                })();
            </script>
        </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Création d'un collaborateur</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <p>Vous êtes sur le point de créer un nouveau collaborateur :</p>
                  <form>
                    <div class="form-group row">
                            <div class="col-sm-10">
                      <label for="message-text" class="col-form-label">Nom:</label>
                      <input type="text" readonly class="form-control" id="recipient-name">
                    </div>
                    </div>
                    <div class="form-group row">
                            <div class="col-sm-10">
                      <label for="message-text" class="col-form-label">Prénom:</label>
                      <input type="text" readonly class="form-control" id="recipient-name">
                      
                    </div>
                    </div>
                    <div class="form-group row">
                            <div class="col-sm-10">
                      <label for="message-text" class="col-form-label">Date de naissance:</label>
                      <input type="text" readonly class="form-control" id="recipient-name">
                      
                    </div>
                    </div>
                    <div class="form-group row">
                    <div class="col-sm-10">
                      <label for="message-text" class="col-form-label">Adresse:</label>
                      <input type="text" readonly class="form-control" id="recipient-name">
                    </div>
                    </div>

                    <div class="form-group row">
                            <div class="col-sm-10">
                              <label for="message-text" class="col-form-label">Numéro de sécurité sociale:</label>
                              <input type="text" readonly class="form-control" id="recipient-name">
                            </div>
                            </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                  <button type="button" class="btn btn-primary">Confirmer</button>
                </div>
              </div>
            </div>
          </div>
    <script type="text/javascript">
          $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = document.getElementById(validationCustom01).value // Extract info from data-* attributes
            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            modal.find('.modal-body input').val(recipient)
          })
        </script>
</body>
</html>