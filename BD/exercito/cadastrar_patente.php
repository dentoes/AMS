<?php
require "conexao.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = trim($_POST["nome"]);
    $salario = trim($_POST["salario"]);

    if ($nome != "" && $salario != "") {
        $sql = "INSERT INTO patentes (nome_patente, salario)
                VALUES (:nome, :salario)";
        $consulta = $pdo->prepare($sql);
        $consulta->execute([
            ":nome" => $nome,
            ":salario" => $salario
        ]);

        header("Location: listar.php?mensagem=Patente cadastrada");
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
    <title>Cadastrar patente</title>
</head>
<body>
    <h1>Cadastrar patente</h1>

    <?php if (isset($erro)) { ?>
        <p><?php echo $erro; ?></p>
    <?php } ?>

    <form method="POST">
        <p>Nome da patente:</p>
        <input type="text" name="nome" required>

        <p>Salário:</p>
        <input type="number" step="0.01" name="salario" required>

        <br><br>
        <button type="submit">Cadastrar</button>
    </form>

    <p><a href="listar.php">Voltar</a></p>
</body>
</html>
