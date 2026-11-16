<?php
require "conexao.php"; require "funcoes.php";
$erro = ""; $nome = ""; $cpf = ""; $patenteSelecionada = "";
$patentes = buscarPatentes($pdo);
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    verificarToken();
    $nome = trim($_POST["nome"] ?? "");
    $cpf = preg_replace('/\D/', '', $_POST["cpf"] ?? "");
    $patenteSelecionada = filter_input(INPUT_POST, "id_patente", FILTER_VALIDATE_INT);
    if ($nome === "" || mb_strlen($nome) > 100) $erro = "Informe um nome com até 100 caracteres.";
    elseif (!validarCpf($cpf)) $erro = "Informe um CPF com 11 números.";
    elseif (!$patenteSelecionada || !patenteExiste($pdo, $patenteSelecionada)) $erro = "Selecione uma patente válida.";
    else {
        try {
            $stmt = $pdo->prepare("INSERT INTO soldados (nome, cpf, id_patente) VALUES (:nome, :cpf, :patente)");
            $stmt->execute([":nome"=>$nome, ":cpf"=>$cpf, ":patente"=>$patenteSelecionada]);
            header("Location: listar.php?sucesso=".urlencode("Soldado cadastrado com sucesso!")); exit;
        } catch (PDOException $e) { $erro = $e->getCode() === "23000" ? "Este CPF já está cadastrado." : "Não foi possível cadastrar o soldado."; }
    }
}
?>
<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Cadastrar soldado</title><link rel="stylesheet" href="estilo.css"></head><body><main class="container formulario"><h1>Cadastrar soldado</h1><?php if ($erro): ?><p class="erro"><?= escapar($erro) ?></p><?php endif; ?>
<?php if (!$patentes): ?><p>Cadastre uma patente antes de cadastrar soldados.</p><a class="botao" href="cadastrar_patente.php">Cadastrar patente</a><?php else: ?><form method="post"><input type="hidden" name="token" value="<?= escapar($_SESSION["token"]) ?>"><label>Nome completo<input name="nome" maxlength="100" value="<?= escapar($nome) ?>" required></label><label>CPF (somente números)<input name="cpf" inputmode="numeric" pattern="[0-9]{11}" maxlength="11" value="<?= escapar($cpf) ?>" required></label><label>Patente<select name="id_patente" required><option value="">Selecione</option><?php foreach ($patentes as $p): ?><option value="<?= escapar($p["id_patente"]) ?>" <?= (string)$patenteSelecionada === (string)$p["id_patente"] ? "selected" : "" ?>><?= escapar($p["nome_patente"]) ?></option><?php endforeach; ?></select></label><button type="submit">Cadastrar</button></form><?php endif; ?><p><a href="listar.php">Voltar</a></p></main></body></html>
