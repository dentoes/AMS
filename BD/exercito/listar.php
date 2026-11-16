<?php
require "conexao.php";
require "funcoes.php";

$sql = "SELECT alunos.id, alunos.nome, alunos.email, cursos.nome AS curso
        FROM alunos
        INNER JOIN cursos ON alunos.curso_id = cursos.id
        ORDER BY alunos.nome";

$alunos = $pdo->query($sql)->fetchAll();
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alunos cadastrados</title>
</head>
<body>
    <h1>Alunos cadastrados</h1>

    <?php if (isset($_GET["sucesso"])) { ?>
        <p><?= escapar($_GET["sucesso"]) ?></p>
    <?php } ?>

    <p><a href="cadastrar.php">Cadastrar aluno</a></p>

    <?php if (count($alunos) > 0) { ?>
        <?php foreach ($alunos as $aluno) { ?>
            <section>
                <p>
                    <strong>ID:</strong> <?= escapar($aluno["id"]) ?><br>
                    <strong>Nome:</strong> <?= escapar($aluno["nome"]) ?><br>
                    <strong>Email:</strong> <?= escapar($aluno["email"]) ?><br>
                    <strong>Curso:</strong> <?= escapar($aluno["curso"]) ?>
                </p>

                <a href="editar.php?id=<?= escapar($aluno["id"]) ?>">Editar</a>

                <form action="excluir.php" method="POST">
                    <input type="hidden" name="id" value="<?= escapar($aluno["id"]) ?>">
                    <input type="hidden" name="token" value="<?= escapar($_SESSION["token"]) ?>">
                    <button type="submit" onclick="return confirm('Tem certeza que deseja excluir este aluno?')">
                        Excluir
                    </button>
                </form>
                <hr>
            </section>
        <?php } ?>
    <?php } else { ?>
        <p>Nenhum aluno cadastrado ainda.</p>
    <?php } ?>
</body>
</html>
