<?php
mysql_connect("localhost","asdlolasd","")or die("Errore di connessione al server ".mysql_error());
mysql_select_db("my_asdlolasd")or die("Errore di connessione al database ".mysql_error());

$result = mysql_query("Select Stato from SmartHome");

if(mysql_num_rows($result)>0){
	while ($sd=mysql_fetch_array($result)){
		$sql=" UPDATE SmartHome SET Stato=0";
 		$result=mysql_query($sql);
        echo "tutto settato a 0";
	}
}
else{
echo "errore";
}
?>
