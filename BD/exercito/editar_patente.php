<?php
require "conexao.php";

$id = $_GET["id"];

$sql = "SELECT * FROM patentes WHERE id_patente = :id";
$consulta = $pdo->prepare($sql);
$consulta->execute([":id" => $id]);
$patente = $consulta->fetch(PDO::FETCH_ASSOC);

if (!$patente) {
    die("Patente não encontrada.");
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = trim($_POST["nome"]);
    $salario = trim($_POST["salario"]);

    if ($nome != "" && $salario != "") {
        $sql = "UPDATE patentes
                SET nome_patente = :nome, salario = :salario
                WHERE id_patente = :id";
        $consulta = $pdo->prepare($sql);
        $consulta->execute([
            ":nome" => $nome,
            ":salario" => $salario,
            ":id" => $id
        ]);

        header("Location: listar.php?mensagem=Patente atualizada");
        exit;
    } else {
        $erro = "Preencha todos os campos.";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Editar patente</title>
</head>
<body>
    <h1>Editar patente</h1>

    <?php if (isset($erro)) { ?>
        <p><?php echo $erro; ?></p>
    <?php } ?>

    <form method="POST">
        <p>Nome da patente:</p>
        <input type="text" name="nome"
               value="<?php echo htmlspecialchars($patente["nome_patente"]); ?>" required>

        <p>Salário:</p>
        <input type="number" step="0.01" name="salario"
               value="<?php echo $patente["salario"]; ?>" required>

        <br><br>
        <button type="submit">Salvar</button>
    </form>

    <p><a href="listar.php">Voltar</a></p>
</body>
</html>
