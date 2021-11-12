<?php include('../../../template/containerAdmin.php');  ?>
<!-- Cod. para inserir a ligação com o html -->

<!-- Elemento php para receber/enviar as informações. Desta forma, o print, irá criar um array com as informações adicionadas -->
<?php 
//Test
// print_r($_POST); 
// print_r($_FILES); //PARA RECEBER OS ARQUIVOS

// Condição com ternary para validar, o isset é para confirmar que não há informação vazia.
$txtId =(isset($_POST['txtID'])) ? $_POST['txtID'] : "";
$txtName =(isset($_POST['txtName'])) ? $_POST['txtName'] : "";
$txtAutor =(isset($_POST['txtAutor'])) ? $_POST['txtAutor'] : "";
$txtImage =(isset($_FILES['txtImage']['name'])) ? $_FILES['txtImage']['name'] : "";
$action =(isset($_POST['action'])) ? $_POST['action'] : ""; //Para ferificar qual ação foi seleciona para asignar a variavel.

// test
// echo $txtId."Received ";
// echo $txtName."Received ";
// echo $txtImage."Received ";
// echo $action."Received ";


// Para orientar as opções de selecão, vou usar o switch case
switch ($variable) {
    case 'value':
        # code...
        break;
    
    default:
        # code...
        break;
}

?>



<!-- Uma coluna com uma fração de 12(5+7) -->
<div class="col-md-5">
    <!-- Space 1 -->
    <!-- card para uma tabela para o titulo. -->
    <div class="card">
        <div class="card-header">
            Informações dos livros
        </div>

        <div class="card-body">
            <h4 class="card-title">Livro:</h4>

            <!-- Formulario para  as planilhas dos produto -->
            <form method="post" enctype="multipart/form-data">
                <!-- enctype="multipart/form-data", é para o furmulario aceitar arquivos e imagem -->
                <div class="form-group">
                    <label for="txtID">ID:</label>
                    <input type="text" class="form-control" name="txtID" id="txtID" placeholder="ID">
                </div>

                <div class="form-group">
                    <label for="txtName">Nome:</label>
                    <input type="text" class="form-control" name="txtName" id="txtName" placeholder="Nome">
                </div>
                <div class="form-group">
                    <label for="txtAutor">Autor:</label>
                    <input type="text" class="form-control" name="txtAutor" id="txtAutor" placeholder="Nome do autor">
                </div>
                <!-- div para adicoinar uma imagem/arquivo type file -->
                <div class="form-group">
                    <label for="txtImage">Imagem:</label>
                    <input type="file" class="form-control" name="txtImage" id="txtImage" placeholder="Imagem">
                </div>


                <div class="btn-group" role="group" aria-label="">
                    <button type="submit" name="action" value="Adicionar" class="btn btn-success">Adicionar</button>
                    <!-- Botão para adicionar-->
                    <button type="submit" name="action" value="Alterar" class="btn btn-warning">Alterar</button>
                    <!-- Botão para modificar -->
                    <button type="submit" name="action" value="Cancelar" class="btn btn-info">Cancelar</button>
                    <!-- Botão para cancelar -->
                </div>

            </form>
            
        </div>




    </div>



</div>

<div class="col-md-7">
    <!-- Space 2 -->
    <!-- Tabelas paras mostrar as listas de livros insiridas -->

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Imagem</th>
                <th>Autor</th>
                <th>Opções</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2</td>
                <td>Aprende php</td>
                <td>imagem.jpg</td>
                <td>Autor</td>
                <td>Selecionar | Apagar</td>
            </tr>

        </tbody>
    </table>






</div>








<?php include('../../../template/footerAdmin.html');  ?>