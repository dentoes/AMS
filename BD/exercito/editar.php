<?php
require "conexao.php";
require "funcoes.php";

$id = filter_input(INPUT_GET, "id", FILTER_VALIDATE_INT);

if (!$id) {
    http_response_code(400);
    die("ID de aluno inválido.");
}

$consulta = $pdo->prepare("SELECT id, nome, email, curso_id FROM alunos WHERE id = :id");
$consulta->execute([":id" => $id]);
$aluno = $consulta->fetch();

if (!$aluno) {
    http_response_code(404);
    die("Aluno não encontrado.");
}

$erro = "";
$nome = $aluno["nome"];
$email = $aluno["email"];
$cursoSelecionado = $aluno["curso_id"];
$cursos = buscarCursos($pdo);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    verificarToken();

    $nome = trim($_POST["nome"] ?? "");
    $email = trim($_POST["email"] ?? "");
    $cursoSelecionado = filter_input(INPUT_POST, "curso_id", FILTER_VALIDATE_INT);

    if ($nome === "" || strlen($nome) > 100) {
        $erro = "Informe um nome com até 100 caracteres.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 150) {
        $erro = "Informe um email válido com até 150 caracteres.";
    } elseif (!$cursoSelecionado || !cursoExiste($pdo, $cursoSelecionado)) {
        $erro = "Selecione um curso válido.";
    } else {
        $sql = "UPDATE alunos
                SET nome = :nome, email = :email, curso_id = :curso_id
                WHERE id = :id";
        $consulta = $pdo->prepare($sql);
        $consulta->execute([
            ":nome" => $nome,
            ":email" => $email,
            ":curso_id" => $cursoSelecionado,
            ":id" => $id
        ]);

        header("Location: listar.php?sucesso=" . urlencode("Aluno atualizado com sucesso!"));
        exit;
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar aluno</title>
</head>
<body>
    <h1>Editar aluno</h1>

    <?php if ($erro !== "") { ?><p><?= escapar($erro) ?></p><?php } ?>

    <form method="POST">
        <input type="hidden" name="token" value="<?= escapar($_SESSION["token"]) ?>">

        <p>
            <label for="nome">Nome:</label><br>
            <input type="text" id="nome" name="nome" maxlength="100"
                   value="<?= escapar($nome) ?>" required>
        </p>

        <p>
            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" maxlength="150"
                   value="<?= escapar($email) ?>" required>
        </p>

        <p>
            <label for="curso_id">Curso:</label><br>
            <select id="curso_id" name="curso_id" required>
                <?php foreach ($cursos as $curso) { ?>
                    <option value="<?= escapar($curso["id"]) ?>"
                        <?= (string)$cursoSelecionado === (string)$curso["id"] ? "selected" : "" ?>>
                        <?= escapar($curso["nome"]) ?>
                    </option>
                <?php } ?>
            </select>
        </p>

        <button type="submit">Salvar alterações</button>
    </form>

    <p><a href="listar.php">Voltar para a lista</a></p>
</body>
</html>
