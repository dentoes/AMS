<?php
require "conexao.php";
require "funcoes.php";

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    http_response_code(405);
    die("Método não permitido.");
}

verificarToken();

$id = filter_input(INPUT_POST, "id", FILTER_VALIDATE_INT);

if ($id) {
    $consulta = $pdo->prepare("DELETE FROM alunos WHERE id = :id");
    $consulta->execute([":id" => $id]);
}

header("Location: listar.php?sucesso=" . urlencode("Operação de exclusão concluída."));
exit;
?>
