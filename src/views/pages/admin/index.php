<?php //Condição para redicionar os dados em php
if($_POST){
    header('Location:homeAdmin.php'); // Quando o utilizador clicar em confirmar, irá rirecinar para a a pagina..
}
?>

<!doctype html>
<html lang="pt">
<!-- *********************Pagina web para o login do administrador************** -->

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <div class="container">
        <div class="row">

            <div class="col-md-4">

            </div>
            <div class="col-md-4">
                <br /><br /><br />
                <div class="card">
                    <div class="card-header">
                        Login Administrador
                    </div>
                    <div class="card-body">
                        <!--============= Formulario ============= -->
                        <form method="POST">
                            <!-- Enviar informação-->
                            <div class="form-group">
                                <label for="exampleInputEmail1">Usuário</label>
                                <input type="text" class="form-control" name="usuario" placeholder="Insirir nome">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Palavra passe</label>
                                <input type="password" class="form-control" name="palava passe"
                                    placeholder="Palavra passe">
                            </div>

                            <button type="submit" class="btn btn-primary">Confirmar</button>
                        </form>


                    </div>

                </div>

            </div>
        </div>

</body>

</html>