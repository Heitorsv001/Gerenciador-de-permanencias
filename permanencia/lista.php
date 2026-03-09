<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Permanências</title>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>

<h1>Lista de Permanências</h1>

<?php 
require_once('function.php');
$conexao = getConnection();
$query = $conexao->query("SELECT * FROM Permanencias ORDER BY dia_da_semana, hora_inicio");
$dados = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<table>
    <tr>
        <th>Dia</th>
        <th>Horário</th>
        <th>Sala</th>
        <th>Status</th>
    </tr>
    
    <?php foreach ($dados as $linha): ?>
    <tr>
        <td><?php echo $linha['dia_da_semana']; ?></td>
        <td><?php echo $linha['hora_inicio']; ?> - <?php echo $linha['hora_fim']; ?></td>
        <td><?php echo $linha['sala']; ?></td>
        <td><?php echo $linha['status']; ?></td>
    </tr>
    <?php endforeach; ?> 

</table>

<a href="permanencia.php">Cadastrar nova permanência</a>

<a href="../index.html">⬅ Voltar para o início</a>

</body>
</html>