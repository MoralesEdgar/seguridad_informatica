<?php

$db_host="localhost:33065";
$db_user="usuario_afin";
$db_password="afinusuario";
$db_name="db_seguridad";
$db_table_name="susti";

$db_connection= mysqli_connect($db_host, $db_user, $db_password);
mysqli_select_db($db_connection, $db_name);
if (!$db_connection ) {
	die('No se ha podido conectar a la base de datos');
}


$mensaje=$_POST['mensaje'];
$llave1=$_POST['llave1'];
$llave2=$_POST['llave2'];


$abecedario[0]="a"; $abecedario[1]="b"; $abecedario[2]="c"; $abecedario[3]="d";
$abecedario[4]="e"; $abecedario[5]="f"; $abecedario[6]="g"; $abecedario[7]="h";
$abecedario[8]="i"; $abecedario[9]="j"; $abecedario[10]="k"; $abecedario[11]="l";
$abecedario[12]="m"; $abecedario[13]="n"; $abecedario[14]="o"; $abecedario[15]="p";
$abecedario[16]="q"; $abecedario[17]="r"; $abecedario[18]="s"; $abecedario[19]="t";
$abecedario[20]="u"; $abecedario[21]="v"; $abecedario[22]="w"; $abecedario[23]="x";
$abecedario[24]="y"; $abecedario[25]="z"; $abecedario[26]=" ";


$long=strlen($mensaje);

$conta=26;
$compl1="";

for($j=0; $j < $long; $j=$j+1){
    for($i=0; $i <= $conta; $i=$i+1){
        
        if($abecedario[$i] == $mensaje[$j]){
        if ($mensaje[$j]==$abecedario[26]) {
            $compl1.= " ";
        }   
        else{
        $cifra1=(($llave1*$i)+$llave2)%26;

        $compl1.= $abecedario[$cifra1];
        }      
        }
        
    }
}

$LA= hash("md5", $llave1);
$LB= hash("md5", $llave2);

$tildes = $db_connection->query("SET NAMES 'utf8'");
$result = mysqli_query($db_connection, "INSERT INTO susti
    VALUES ('','".$mensaje."',AES_ENCRYPT ('".$llave1."','afin'),AES_ENCRYPT ('".$llave2."','afin2'),'".$compl1."')");

include ('index.html');


 ?>
 




