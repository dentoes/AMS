<?php
require "conexao.php";

$id = $_GET["id"];

$sql = "SELECT * FROM soldados WHERE id_soldado = :id";
$consulta = $pdo->prepare($sql);
$consulta->execute([":id" => $id]);
$soldado = $consulta->fetch(PDO::FETCH_ASSOC);

if (!$soldado) {
    die("Soldado não encontrado.");
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = trim($_POST["nome"]);
    $cpf = trim($_POST["cpf"]);
    $salario = trim($_POST["salario"]);

    if ($nome != "" && $cpf != "" && $salario != "") {
        $sql = "UPDATE soldados
                SET nome = :nome, cpf = :cpf, salario = :salario
                WHERE id_soldado = :id";
        $consulta = $pdo->prepare($sql);
        $consulta->execute([
            ":nome" => $nome,
            ":cpf" => $cpf,
            ":salario" => $salario,
            ":id" => $id
        ]);

        header("Location: listar.php?mensagem=Soldado atualizado");
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
    <title>Editar soldado</title>
</head>
<body>
    <h1>Editar soldado</h1>

    <?php if (isset($erro)) { ?>
        <p><?php echo $erro; ?></p>
    <?php } ?>

    <form method="POST">
        <p>Nome:</p>
        <input type="text" name="nome"
               value="<?php echo htmlspecialchars($soldado["nome"]); ?>" required>

        <p>CPF:</p>
        <input type="text" name="cpf"
               value="<?php echo htmlspecialchars($soldado["cpf"]); ?>" required>

        <p>Salário:</p>
        <input type="number" step="0.01" name="salario"
               value="<?php echo $soldado["salario"]; ?>" required>

        <br><br>
        <button type="submit">Salvar</button>
    </form>

    <p><a href="listar.php">Voltar</a></p>
</body>
</html>
