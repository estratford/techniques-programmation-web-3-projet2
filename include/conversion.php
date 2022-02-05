<?php
// Fonction qui retourne l'object correspondant à la stucture que l'on veut retournée. (JSON)
function ConversionEnObjet($SQLHotel) {
    $Obj_Hotel = new stdClass();
    $Obj_Hotel ->destination = $SQLHotel["destination"];
    $Obj_Hotel ->ville_depart = $SQLHotel["ville_depart"];

    $Obj_Hotel ->hotel = new stdClass();
    $Obj_Hotel ->hotel->hotel_nom = $SQLHotel["hotel_nom"];
    $Obj_Hotel ->hotel->hotel_coordonnees = $SQLHotel["hotel_coordonnees"];
    $Obj_Hotel ->hotel->hotel_etoile = $SQLHotel["hotel_etoile"];
    $Obj_Hotel ->hotel->hotel_chambres = $SQLHotel["hotel_chambres"];
    $Obj_Hotel ->hotel->hotel_caracteristiques = explode(";", $SQLHotel["hotel_caracteristiques"]);

    
    $Obj_Hotel ->date_depart = $SQLHotel["date_depart"];
    $Obj_Hotel ->date_retour = $SQLHotel["date_retour"];
    $Obj_Hotel ->prix = $SQLHotel["prix"];
    $Obj_Hotel ->rabais = $SQLHotel["rabais"];
    $Obj_Hotel ->vedette = $SQLHotel["vedette"];

    return $Obj_Hotel;
}   

?>