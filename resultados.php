<?php
/*
    ====================================================

     Codigo desarrollado por Edgar Morales

     --> Materia       : Seguridad Informatica

     --> Integrantes   : Edgar Alberto Morales Gomez
                         Jonathan Alexis Valle Huante   

    ====================================================
*/

$resultado=" ";
$resultado=$_POST['resultado'];

if ($resultado==0) {
    echo "Seleccione el cifrado para mostrar los Resultados";
}

if ($resultado==1) {
    $db_host="localhost:33065";
    $db_user="usuario_reportes";
    $db_password="reportesusuario";
    $db_name="db_seguridad";
    $db_table_name="susti";

    $db_connection= mysqli_connect($db_host, $db_user, $db_password);
    mysqli_select_db($db_connection, $db_name);
    if (!$db_connection ) {
        die('No se ha podido conectar a la base de datos');
    }
    $tildes = $db_connection->query("SET NAMES 'utf8'");


    $result = mysqli_query($db_connection,"SELECT id,mensaje,llaveA, aes_decrypt(llaveA,'afin') as original_LlaveA,llaveB, aes_decrypt(llaveB,'afin2') as original_LlaveB, cifrado
from susti");
    if (!$result)
        die("Error: no se pudo realizar la consulta");
    echo '<br><center> Cifrado Afin<br>';
    echo '<br><table border=1px class="table">';
    echo '<td>' .'ID'.'</td><td>' .'Mensaje'.'</td><td>' .'Llave A'.'</td><td>' .'original_LlaveA'.'</td><td>' .'Llave B'.'</td><td>' .'original_LlaveB'.'</td><td>' .'Cifrado'.'</td>';
    while($fila = mysqli_fetch_assoc($result))
    {

        echo '<tr>';
        echo  '<td>' . $fila['id'] . '</td><td>' . $fila['mensaje'] . '</td><td>' . $fila['llaveA'] . '</td><td>' . $fila['original_LlaveA'] .  '</td><td>' . $fila['llaveB'] . '</td><td>' . $fila['original_LlaveB'] .  '</td><td>' . $fila['cifrado']  .'</td>';
        echo '</tr>';
    }
}

if ($resultado==2) {
    $db_host="localhost:33065";
    $db_user="usuario_reportes";
    $db_password="reportesusuario";
    $db_name="db_seguridad";
    $db_table_name="vige";

    $db_connection= mysqli_connect($db_host, $db_user, $db_password);
    mysqli_select_db($db_connection, $db_name);
    if (!$db_connection ) {
        die('No se ha podido conectar a la base de datos');
    }

    $tildes = $db_connection->query("SET NAMES 'utf8'");

    $result = mysqli_query($db_connection,"SELECT id,mensaje,llave, aes_decrypt(llave,'vigepass') as original_Llave, cifrado
from vige");
    if (!$result)
        die("Error: no se pudo realizar la consulta");
    echo '<br><center> Cifrado Vigenere<br>';
    echo '<br><table border=1px class="table">';
    echo '<td>' .'ID'.'</td><td>' .'Mensaje'.'</td><td>' .'Llave'.'</td><td>' .'original_LlaveB'.'</td><td>' .'Cifrado'.'</td>';
    while($fila = mysqli_fetch_assoc($result))
    {

        echo '<tr>';
        echo  '<td>' . $fila['id'] . '</td><td>' . $fila['mensaje'] . '</td><td>' . $fila['llave'] . '</td><td>' . $fila['original_Llave']  .'</td><td>' . $fila['cifrado']  .'</td>';
        echo '</tr>';
    }
}

if ($resultado==3) {
    $db_host="localhost:33065";
    $db_user="usuario_reportes";
    $db_password="reportesusuario";
    $db_name="db_seguridad";
    $db_table_name="transposicion";

    $db_connection= mysqli_connect($db_host, $db_user, $db_password);
    mysqli_select_db($db_connection, $db_name);
    if (!$db_connection ) {
        die('No se ha podido conectar a la base de datos');
    }
    $tildes = $db_connection->query("SET NAMES 'utf8'");

    $result = mysqli_query($db_connection,"SELECT id,mensajetra,columna,aes_decrypt(columna,'transcolumna')AS columna_original,orden,aes_decrypt(orden,'transorden')AS original_orden, cifrado
from transposicion");

    if (!$result)
        die("Error: no se pudo realizar la consulta");
    echo '<br><center> Cifrado Transposicion<br>';
    echo '<br><table border=1px class="table">';
    echo '<td>' .'ID'.'</td><td>' .'Mensaje'.'</td><td>' .'columna'.'</td><td>' .'columna_original'.'</td><td>' .'orden'.'</td><td>' .'original_orden'.'</td><td>' .'Cifrado'.'</td>';
    while($fila = mysqli_fetch_assoc($result))
    {

        echo '<tr>';
        echo  '<td>' . $fila['id'] . '</td><td>' . $fila['mensajetra'] . '</td><td>' . $fila['columna'] . '</td><td>' . $fila['columna_original'] . '</td><td>' . $fila['orden'] .  '</td><td>' . $fila['original_orden'] . '</td><td>' . $fila['cifrado']  .'</td>';
        echo '</tr>';
    }
}
?>