<?php
require "conexao.php";

$id = $_POST["id"];

$sql = "DELETE FROM patentes WHERE id_patente = :id";
$consulta = $pdo->prepare($sql);
$consulta->execute([":id" => $id]);

header("Location: listar.php?mensagem=Patente excluida");
exit;
?>
