<?php

$db_host="localhost:33065";
$db_user="usuario_transposicion";
$db_password="transposicionusuario";
$db_name="db_seguridad";
$db_table_name="transposicion";

$db_connection= mysqli_connect($db_host, $db_user, $db_password);
mysqli_select_db($db_connection, $db_name);
if (!$db_connection ) {
    die('No se ha podido conectar a la base de datos');
}


$mensajet=$_POST['mensajet'];
$columna=$_POST['columna'];
$orden=$_POST['orden'];


$long=strlen($mensajet);

$conta=0;
$relo=1;
$rell=0;

for ($j=1; $j <=$long ; $j++) {
    for ($i=1; $i <=$columna; $i++) {
        if ($long!=$conta) {
            $vec[$j][$i]=$mensajet[$conta];

        } else{
            $j=$conta;
            break;
        }
        if ($mensajet[$conta]==" ") {
            $vec[$j][$i]="_";
        }


        $conta++;
    }

    $rell=$rell+1;
}

if ($i!=$relo) {
    while ($i<=$columna) {
        $vec[$rell][$i]="*";
        $i=$i+1;

    }
}

for ($x=1; $x <=$rell ; $x++) {
    for ($y=1; $y <=$columna ; $y++) {
    }
}
$cif=" ";
$g=" ";
$norden=strlen($orden);
$espa=$norden-1;
for ($q=0; $q<$norden ; $q++) {
    $g=$orden[$q];
    for ($w=1; $w <=$rell ; $w++) {
        $cif.=$vec[$w][$g];
    }
    if ($q<$espa) {
        $cif.="";
    }
}



$tildes = $db_connection->query("SET NAMES 'utf8'");
$result = mysqli_query($db_connection, "INSERT INTO transposicion
    VALUES ('','".$mensajet."',AES_ENCRYPT('".$columna."','transcolumna'),AES_ENCRYPT('".$orden."','transorden'),'".$cif."')");
include ('index.html');

?>
 




