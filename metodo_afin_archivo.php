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

#=====================


$letras="abcdefghijklmnopqrstuvwxyz ";
$men=26;
$numero="0123456789";
$ene=10;
#Variables
$mensaje="";
$n1=0;
$n2=0;
$target_path = "C:\Users\Edgar Morales\Desktop\archivos";
#$target_path = "C:\Users\alexi\Desktop\archivos";
$target_path = $target_path . basename( $_FILES['archivo']['name']);
if(move_uploaded_file($_FILES['archivo']['tmp_name'], $target_path)) ;
#echo "<br>";
$con=0;

$file_result = "";
if ($_FILES["archivo"]["error"] > 0) {
    $file_result .= "archivo invalido";
    $file_result .= "codigo de error" . $_FILES["archivo"]["error"] . "<br>";
} else {
    $target_path;
#$nombre_archivo = $_POST['archivo']['tmp_name']; 
/*alexis comento-------------------------------$fp = fopen($target_path, "r") or exit("Unable to open file!");
while(!feof($fp)) {
$linea = fgets($fp);
$sepa= explode("", $linea);
#echo $linea."<br>";

}*/
//$archivo = addslashes(file_get_contents($_FILES["archivo"]["tmp_name"]));
global $mensaje;
global $n1;
global $n2;
foreach (file($target_path) as $llave => $campo) {
    echo $campo. "<br>";
    if($llave == 0){
        $mensaje = $campo;
    }
    if($llave == 1){
        $n1 = $campo;
    }
    if($llave == 2){
        $n2 = $campo;
    }

}
}
echo "<br>";
/*foreach($sepa as $campo){
        #echo $campo;
        $li=strlen($campo);
        #echo " ",$li;
for ($i=0; $i <$men ; $i++) { 
	if ($letras[$i]==$campo[0]) {
		#echo "es string";
		#echo $campo[0];
		$mensaje=$campo;
	}
}
if ($con==1) {
for ($j=0; $j <$ene ; $j++) { 
	if ($numero[$j]==$campo[0]) {
		#echo "es un numero";
		$n1=$campo;
	}
}
}
if ($con==2) {
	$n2=$campo;
}
        #echo "<br>"; 
        $con++;

    }
fclose($fp);


#echo $mensaje," ",$n1," ",$n2;
#echo "<br>";*/
$long=strlen($mensaje);
$compl1="";
for($j=0; $j < $long; $j=$j+1){
    for($i=0; $i <= $men; $i=$i+1){
        
        if($letras[$i] == $mensaje[$j]){
        if ($mensaje[$j]==$letras[26]) {
            #echo "salto";
            $compl1.= " ";
        }   
        else{
        $cifra1=(($n1*$i)+$n2)%26;
        #echo $letras[$i];
        #echo " ",$i;
        #echo " ",$cifra1;    
        #echo " ",$letras[$cifra1];
        #echo "<br>" ;
        $compl1.= $letras[$cifra1];

        }
        }
        
    }
    #$compl1=compl1+$abecedario[$cifra1];
}

$tildes = $db_connection->query("SET NAMES 'utf8'");
$result = mysqli_query($db_connection, "INSERT INTO susti
    VALUES ('','".$mensaje."',AES_ENCRYPT ('".$n1."','afin'),AES_ENCRYPT ('".$n2."','afin2'),'".$compl1."')");
include ('index.html');

 ?>
