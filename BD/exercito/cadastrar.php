<?php
require "conexao.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = trim($_POST["nome"]);
    $cpf = trim($_POST["cpf"]);
    $salario = trim($_POST["salario"]);

    if ($nome != "" && $cpf != "" && $salario != "") {
        $sql = "INSERT INTO soldados (nome, cpf, salario)
                VALUES (:nome, :cpf, :salario)";
        $consulta = $pdo->prepare($sql);
        $consulta->execute([
            ":nome" => $nome,
            ":cpf" => $cpf,
            ":salario" => $salario
        ]);

        header("Location: listar.php?mensagem=Soldado cadastrado");
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
    <title>Cadastrar soldado</title>
</head>
<body>
    <h1>Cadastrar soldado</h1>

    <?php if (isset($erro)) { ?>
        <p><?php echo $erro; ?></p>
    <?php } ?>

    <form method="POST">
        <p>Nome:</p>
        <input type="text" name="nome" required>

        <p>CPF:</p>
        <input type="text" name="cpf" required>

        <p>Salário:</p>
        <input type="number" step="0.01" name="salario" required>

        <br><br>
        <button type="submit">Cadastrar</button>
    </form>

    <p><a href="listar.php">Voltar</a></p>
</body>
</html>
