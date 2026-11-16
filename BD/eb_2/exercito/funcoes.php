<?php
function escapar($valor): string {
    return htmlspecialchars((string)$valor, ENT_QUOTES, "UTF-8");
}

function verificarToken(): void {
    $token = $_POST["token"] ?? "";
    if (!isset($_SESSION["token"]) || !hash_equals($_SESSION["token"], $token)) {
        http_response_code(403);
        exit("Requisição inválida. Atualize a página e tente novamente.");
    }
}

function buscarPatentes(PDO $pdo): array {
    return $pdo->query("SELECT id_patente, nome_patente, salario FROM patentes ORDER BY nome_patente")->fetchAll();
}

function patenteExiste(PDO $pdo, int $id): bool {
    $stmt = $pdo->prepare("SELECT 1 FROM patentes WHERE id_patente = :id");
    $stmt->execute([":id" => $id]);
    return (bool)$stmt->fetchColumn();
}

function validarCpf(string $cpf): bool {
    return (bool)preg_match('/^\d{11}$/', $cpf);
}
