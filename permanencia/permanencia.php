<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Permanência</title>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>

<h1>Cadastro de Permanência</h1>

<form action="salvar_permanencia.php" method="POST">
    <label>Dia da semana:</label>
    <select name="dia_semana" required>
        <option value="">Selecione</option>
        <option value="Segunda-feira">Segunda-feira</option>
        <option value="Terça-feira">Terça-feira</option>
        <option value="Quarta-feira">Quarta-feira</option>
        <option value="Quinta-feira">Quinta-feira</option>
        <option value="Sexta-feira">Sexta-feira</option>
    </select>

    <label>Hora Início:</label>
    <input type="time" name="hora_inicio" required>

    <label>Hora Fim:</label>
    <input type="time" name="hora_fim" required>

    <label>Sala:</label>
    <input type="text" name="sala" required>

    <label>Status:</label>
    <select name="status">
        <option value="ativa">Ativa</option>
        <option value="cancelada">Cancelada</option>
        <option value="professor_ausente">Professor Ausente</option>
    </select>

    <button type="submit">Cadastrar</button>
</form>

<a href="lista.php">Ver lista de permanências</a>

<a href="../index.html">⬅ Voltar para o início</a>

</body>
</html>