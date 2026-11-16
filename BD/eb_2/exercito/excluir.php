<?php
require "conexao.php"; require "funcoes.php";
if ($_SERVER["REQUEST_METHOD"] !== "POST") { http_response_code(405); exit("Método não permitido."); }
verificarToken(); $id=filter_input(INPUT_POST,"id",FILTER_VALIDATE_INT);
if ($id) { $stmt=$pdo->prepare("DELETE FROM soldados WHERE id_soldado=:id"); $stmt->execute([":id"=>$id]); }
header("Location: listar.php?sucesso=".urlencode("Operação concluída.")); exit;
