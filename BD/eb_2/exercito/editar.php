<?php
require "conexao.php"; require "funcoes.php";
$id = filter_input(INPUT_GET, "id", FILTER_VALIDATE_INT);
if (!$id) { http_response_code(400); exit("ID de soldado inválido."); }
$stmt = $pdo->prepare("SELECT * FROM soldados WHERE id_soldado = :id"); $stmt->execute([":id"=>$id]); $soldado = $stmt->fetch();
if (!$soldado) { http_response_code(404); exit("Soldado não encontrado."); }
$erro=""; $nome=$soldado["nome"]; $cpf=$soldado["cpf"]; $patenteSelecionada=$soldado["id_patente"];
$patentes=buscarPatentes($pdo);
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    verificarToken(); $nome=trim($_POST["nome"]??""); $cpf=preg_replace('/\D/','',$_POST["cpf"]??""); $patenteSelecionada=filter_input(INPUT_POST,"id_patente",FILTER_VALIDATE_INT);
    if ($nome==="" || mb_strlen($nome)>100) $erro="Informe um nome com até 100 caracteres.";
    elseif (!validarCpf($cpf)) $erro="Informe um CPF com 11 números.";
    elseif (!$patenteSelecionada || !patenteExiste($pdo,$patenteSelecionada)) $erro="Selecione uma patente válida.";
    else { try { $stmt=$pdo->prepare("UPDATE soldados SET nome=:nome, cpf=:cpf, id_patente=:patente WHERE id_soldado=:id"); $stmt->execute([":nome"=>$nome,":cpf"=>$cpf,":patente"=>$patenteSelecionada,":id"=>$id]); header("Location: listar.php?sucesso=".urlencode("Soldado atualizado com sucesso!")); exit; } catch(PDOException $e) { $erro=$e->getCode()==="23000"?"Este CPF já pertence a outro soldado.":"Não foi possível atualizar o soldado."; } }
}
?>
<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Editar soldado</title><link rel="stylesheet" href="estilo.css"></head><body><main class="container formulario"><h1>Editar soldado</h1><?php if($erro): ?><p class="erro"><?= escapar($erro) ?></p><?php endif; ?><form method="post"><input type="hidden" name="token" value="<?= escapar($_SESSION["token"]) ?>"><label>Nome completo<input name="nome" maxlength="100" value="<?= escapar($nome) ?>" required></label><label>CPF (somente números)<input name="cpf" inputmode="numeric" pattern="[0-9]{11}" maxlength="11" value="<?= escapar($cpf) ?>" required></label><label>Patente<select name="id_patente" required><?php foreach($patentes as $p): ?><option value="<?= escapar($p["id_patente"]) ?>" <?= (string)$patenteSelecionada===(string)$p["id_patente"]?"selected":"" ?>><?= escapar($p["nome_patente"]) ?></option><?php endforeach; ?></select></label><button type="submit">Salvar alterações</button></form><p><a href="listar.php">Voltar</a></p></main></body></html>
