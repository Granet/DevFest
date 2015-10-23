<?php 

$nome   = $_GET["nome"];
$stanza  = $_GET["stanza"];
mysql_connect("localhost","asdlolasd","")or die("Errore di connessione al server ".mysql_error());
mysql_select_db("my_asdlolasd")or die("Errore di connessione al database ".mysql_error());

$sql2=" Select Stato from SmartHome where Stanza='$stanza' and Nome='$nome'";
$result3=mysql_query($sql2);

if(mysql_num_rows($result3)>0){
    while ($sd=mysql_fetch_array($result3)){
        if($sd['Stato']==0){
            $sql=" UPDATE SmartHome SET Stato=1 where Stanza='$stanza' and Nome='$nome'";
            echo "1";
        }else{
            $sql=" UPDATE SmartHome SET Stato=0 where Stanza='$stanza' and Nome='$nome'";
            echo "0";
        }
        $result=mysql_query($sql);

    }
}
else {
    echo "Non capisco quello che hai detto";
}
?>
