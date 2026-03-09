<?php
require_once('function.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $dia = $_POST['dia_semana'];
    $inicio = $_POST['hora_inicio'];
    $fim = $_POST['hora_fim'];
    $sala = $_POST['sala'];
    $status = $_POST['status'];

    if(inserirDadosPermanencia($fim, $inicio, $sala, $dia, $status)) {
        header("Location: lista.php?sucesso=1");
    } else {
        echo "Erro ao salvar.";
    }
}