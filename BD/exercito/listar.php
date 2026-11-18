<?php
require "conexao.php";

$sql = "SELECT * FROM soldados ORDER BY nome";
$consulta = $pdo->query($sql);
$soldados = $consulta->fetchAll(PDO::FETCH_ASSOC);

$sql = "SELECT * FROM patentes ORDER BY nome_patente";
$consulta = $pdo->query($sql);
$patentes = $consulta->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de soldados e patentes</title>
</head>
<body>
    <h1>Soldados cadastrados</h1>

    <a href="cadastrar.php">Cadastrar soldado</a>

    <?php if (isset($_GET["mensagem"])) { ?>
        <p><?php echo htmlspecialchars($_GET["mensagem"]); ?></p>
    <?php } ?>

    <?php if (count($soldados) > 0) { ?>
        <?php foreach ($soldados as $soldado) { ?>
            <hr>
            <p>ID: <?php echo $soldado["id_soldado"]; ?></p>
            <p>Nome: <?php echo htmlspecialchars($soldado["nome"]); ?></p>
            <p>CPF: <?php echo htmlspecialchars($soldado["cpf"]); ?></p>
            <p>Salário: <?php echo $soldado["salario"]; ?></p>

            <a href="editar.php?id=<?php echo $soldado["id_soldado"]; ?>">Editar</a>

            <form action="excluir.php" method="POST">
                <input type="hidden" name="id" value="<?php echo $soldado["id_soldado"]; ?>">
                <button type="submit">Excluir</button>
            </form>
        <?php } ?>
    <?php } else { ?>
        <p>Nenhum soldado cadastrado.</p>
    <?php } ?>

    <hr>

    <h1>Patentes cadastradas</h1>

    <a href="cadastrar_patente.php">Cadastrar patente</a>

    <?php if (count($patentes) > 0) { ?>
        <?php foreach ($patentes as $patente) { ?>
            <hr>
            <p>ID: <?php echo $patente["id_patente"]; ?></p>
            <p>Patente: <?php echo htmlspecialchars($patente["nome_patente"]); ?></p>
            <p>Salário: <?php echo $patente["salario"]; ?></p>

            <a href="editar_patente.php?id=<?php echo $patente["id_patente"]; ?>">Editar</a>

            <form action="excluir_patente.php" method="POST">
                <input type="hidden" name="id" value="<?php echo $patente["id_patente"]; ?>">
                <button type="submit">Excluir</button>
            </form>
        <?php } ?>
    <?php } else { ?>
        <p>Nenhuma patente cadastrada.</p>
    <?php } ?>
</body>
</html>
