<!doctype html>
<html lang="en">

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

    <!--=== variavel em php para redireção ao url, para aparecer a informação onde está a redirecionar, desta forma, quando o usuario clicar ira aparecer na parte inferior
    http + dominio + direção do arquivo  ===-->
      <?php $url= "http://".$_SERVER['HTTP_HOST']."/xampp/AplicativoEditora"?>
      <!--========= nav =========== -->
      <nav class="navbar navbar-expand navbar-light bg-light">
          <div class="nav navbar-nav">
              <a class="nav-item nav-link active" href="#">Administrador da página web <span class="sr-only">(current)</span></a>
              <a class="nav-item nav-link" href="<?php $url;?>..\homeAdmin.php">Home</a>   <!-- !!!!!******** BUG com algumas paginas **********!!!!!-->
              <a class="nav-item nav-link" href="<?php $url;?>..\admin\session\products.php">Livros</a>
              <a class="nav-item nav-link" href="<?php $url;?>..\admin\session\close.php">Encerrar</a>
              <a class="nav-item nav-link" href="<?php echo $url;?>">Ver Site</a>   <!--=== Aqui insirimos a variavel ===-->
            </div>

      </nav>
      <br/><br/>
      <div class="container">
        <div class="row">