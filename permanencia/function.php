<?php
    function getConnection() {
        $conexao = new PDO('pgsql:host=localhost;dbname=gerenciador-permanencias', 'postgres', '12172626');    
        $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conexao;

    }
function inserirDadosPermanencia($fim, $inicio, $sala, $dia, $status) {
    $conexao = getConnection();
    $sql = "INSERT INTO Permanencias (hora_inicio, hora_fim, sala, dia_da_semana, status) 
            VALUES (:inicio, :fim, :sala, :dia, :status)";
    $stmt = $conexao->prepare($sql);
    return $stmt->execute([
        ':inicio' => $inicio,
        ':fim'    => $fim,
        ':sala'   => $sala,
        ':dia'    => $dia,
        ':status' => $status
    ]);
}
?>