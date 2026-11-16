<?php
require "conexao.php";
require "funcoes.php";
$sql = "SELECT s.id_soldado, s.nome, s.cpf, p.nome_patente, p.salario
        FROM soldados s INNER JOIN patentes p ON p.id_patente = s.id_patente
        ORDER BY s.nome";
$soldados = $pdo->query($sql)->fetchAll();
?>
<!DOCTYPE html><html lang="pt-BR"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Soldados</title><link rel="stylesheet" href="estilo.css"></head><body><main class="container">
<header><h1>Gerenciamento de soldados</h1><nav><a class="botao" href="cadastrar.php">Cadastrar soldado</a> <a class="botao secundario" href="listar_patentes.php">Gerenciar patentes</a></nav></header>
<?php if (isset($_GET["sucesso"])): ?><p class="sucesso"><?= escapar($_GET["sucesso"]) ?></p><?php endif; ?>
<?php if ($soldados): ?><div class="tabela-wrap"><table><thead><tr><th>ID</th><th>Nome</th><th>CPF</th><th>Patente</th><th>Salário</th><th>Ações</th></tr></thead><tbody>
<?php foreach ($soldados as $soldado): ?><tr><td><?= escapar($soldado["id_soldado"]) ?></td><td><?= escapar($soldado["nome"]) ?></td><td><?= escapar($soldado["cpf"]) ?></td><td><?= escapar($soldado["nome_patente"]) ?></td><td>R$ <?= number_format((float)$soldado["salario"], 2, ',', '.') ?></td><td class="acoes"><a href="editar.php?id=<?= escapar($soldado["id_soldado"]) ?>">Editar</a><form action="excluir.php" method="post" onsubmit="return confirm('Excluir este soldado?')"><input type="hidden" name="id" value="<?= escapar($soldado["id_soldado"]) ?>"><input type="hidden" name="token" value="<?= escapar($_SESSION["token"]) ?>"><button class="link-perigo" type="submit">Excluir</button></form></td></tr><?php endforeach; ?>
</tbody></table></div><?php else: ?><p>Nenhum soldado cadastrado.</p><?php endif; ?></main></body></html>
