<?php
function escapar($valor) {
    return htmlspecialchars((string)$valor, ENT_QUOTES, "UTF-8");
}

function verificarToken() {
    $token = $_POST["token"] ?? "";

    if (!isset($_SESSION["token"]) || !hash_equals($_SESSION["token"], $token)) {
        http_response_code(403);
        die("Requisição inválida. Volte à página e tente novamente.");
    }
}

function buscarCursos(PDO $pdo) {
    return $pdo->query("SELECT id, nome FROM cursos ORDER BY nome")->fetchAll();
}

function cursoExiste(PDO $pdo, $cursoId) {
    $consulta = $pdo->prepare("SELECT id FROM cursos WHERE id = :id");
    $consulta->execute([":id" => $cursoId]);
    return (bool)$consulta->fetch();
}
?>
