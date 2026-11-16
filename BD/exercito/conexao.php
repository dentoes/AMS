<?php
session_start();

$servidor = "localhost";
$banco = "escola";
$usuario = "root";
$senha = "";

try {
    $pdo = new PDO(
        "mysql:host=$servidor;dbname=$banco;charset=utf8mb4",
        $usuario,
        $senha,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]
    );

    if (empty($_SESSION["token"])) {
        $_SESSION["token"] = bin2hex(random_bytes(32));
    }
} catch (PDOException $e) {
    // Não exibe detalhes técnicos da conexão para o visitante.
    die("Não foi possível conectar ao banco de dados. Confira o XAMPP e o arquivo conexao.php.");
}
?>
