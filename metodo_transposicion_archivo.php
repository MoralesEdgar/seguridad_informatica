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



$letras="abcdefghijklmnopqrstuvwxyz ";
$men=26;
$numero="0123456789";
$ene=10;
#Variables
$mensajet="";
$columna=0;
$orden=0;
$target_path = "C:\Users\alexi\Desktop\archivos";
$target_path = $target_path . basename( $_FILES['archivo']['name']);
if(move_uploaded_file($_FILES['archivo']['tmp_name'], $target_path));
$con=0;
#$nombre_archivo = $_POST['archivo']['tmp_name']; 

$file_result = "";
if ($_FILES["archivo"]["error"] > 0) {
    $file_result .= "archivo invalido";
    $file_result .= "codigo de error" . $_FILES["archivo"]["error"] . "<br>";
} else {
    $target_path;

    global $mensaje;
global $n1;
global $n2;
foreach (file($target_path) as $i => $campo) {
    echo $campo. "<br>";
    if($i == 0){
        $mensajet = $campo;
    }
    if($i == 1){
        $columna = $campo;
    }
    if($i == 2){
        $orden = $campo;
    }

}
}
echo "<br>";


/*$fp = fopen($target_path, "r") or exit("Unable to open file!");
while(!feof($fp)) {
$linea = fgets($fp);
$sepa= explode(",", $linea);
#echo $linea."<br>";

}
foreach($sepa as $campo){
#        echo $campo;
        $li=strlen($campo);
#        echo " ",$li;
for ($i=0; $i <$men ; $i++) { 
	if ($letras[$i]==$campo[0]) {
#		echo "es string";
		$mensajet=$campo;
	}
}
if ($con==1) {
for ($j=0; $j <$ene ; $j++) { 
	if ($numero[$j]==$campo[0]) {
#		echo "es un numero";
		$columna=$campo;
	}
}
}
if ($con==2) {
	$orden=$campo;
}
 #       echo "<br>"; 
        $con++;

    }
fclose($fp);

#echo $mensajet," ",$columna," ",$orden;
#echo "<br>";*/
$long=strlen($mensajet);

$conta=0;
#echo "<br>" ;
$relo=1;
$rell=0;

for ($j=1; $j <=$long ; $j++) { 
    for ($i=1; $i <=$columna; $i++) { 
        if ($long!=$conta) {
            $vec[$j][$i]=$mensajet[$conta];
#            echo $vec[$j][$i]," ";
            
        } else{
            $j=$conta;
            break;
        }
        if ($mensajet[$conta]==" ") {
        $vec[$j][$i]="_";
 #       echo $vec[$j][$i]," ";
        }


    $conta++;
    }
#    echo "<br>";

    $rell=$rell+1;
}
#$rell=$rell-1;
#echo $i," ",$rell," ",$columna;
if ($i!=$relo) {
while ($i<=$columna) {
    $vec[$rell][$i]="*";
    $i=$i+1;
    #echo $vec[$rell][$i]," ";
    
}
}
#echo "<br>";
#echo "<br>";
for ($x=1; $x <=$rell ; $x++) { 
    for ($y=1; $y <=$columna ; $y++) { 
#        echo $vec[$x][$y];
    }
#echo "<br>";
}
$cif=" ";
$g=" ";
#echo $orden,"<br>";
$norden=strlen($orden);
#echo $norden,"<br>";
$espa=$norden-1;
for ($q=0; $q<$norden ; $q++) { 
        $g=$orden[$q];
    for ($w=1; $w <=$rell ; $w++) { 
        $cif.=$vec[$w][$g];
    }
    if ($q<$espa) {
        # code...
    $cif.="";
    }
}


$tildes = $db_connection->query("SET NAMES 'utf8'");
$result = mysqli_query($db_connection, "INSERT INTO transposicion
    VALUES ('','".$mensajet."',AES_ENCRYPT('".$columna."','transcolumna'),AES_ENCRYPT('".$orden."','transorden'),'".$cif."')");
include ('index.html');


 ?>
