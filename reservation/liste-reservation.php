<!-- 
     FAIT PAR :: ÉMILIE STRATFORD
     PROJET :: API FORFAITS VOYAGES
     DATE :: 05 FÉVRIER 2022
     * DANS LE CADRE DU COURS DE TECHNIQUES DE PROGRAMMATION 3 - PROJET 2 *
-->

<?php 
include_once ('../include/config.php');

header('Content-Type: application/json;');
header('Access-Control-Allow-Origin: *'); 

$mysqli = new mysqli($host, $username, $password, $database);
if ($mysqli -> connect_errno) { 
  echo 'Échec de connexion à la base de données MySQL: ' . $mysqli -> connect_error;
  exit();
} 

$resultat_requete = $mysqli->query("SELECT * FROM reservations ORDER BY destination "); 
$donnees_tableau = $resultat_requete->fetch_all(MYSQLI_ASSOC); 
echo json_encode($donnees_tableau, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);	

$mysqli->close(); 



?>