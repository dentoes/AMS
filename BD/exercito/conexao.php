<?php
$servidor = "localhost";
$banco = "exercito";
$usuario = "root";
$senha = "";

try {
    $pdo = new PDO(
        "mysql:host=$servidor;dbname=$banco;charset=utf8",
        $usuario,
        $senha
    );
} catch (PDOException $e) {
    die("Erro ao conectar com o banco de dados.");
}
?>
