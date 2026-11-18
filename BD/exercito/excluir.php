<?php
require "conexao.php";

$id = $_POST["id"];

$sql = "DELETE FROM soldados WHERE id_soldado = :id";
$consulta = $pdo->prepare($sql);
$consulta->execute([":id" => $id]);

header("Location: listar.php?mensagem=Soldado excluido");
exit;
?>
