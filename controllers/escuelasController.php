<?php

class escuelasController{

    public function __construct()
    {
        require_once "models/escuelasModel.php";
        require_once "models/facultadesModel.php";
    }

    // Consulta para obtener el listado de escuelas con parametro el id de la facultad
    public function verEscuelas(){
        extract($_POST);
        $escuelas = new escuela();
        $data['escuelas'] = $escuelas->getEscuelas($id_facultad);
        require_once "views/personas/index.php";

        print(json_encode($data['escuelas']));
    }

    // Consulta para obtener el listado de facultades
    public function verFacultades(){
        $facultades = new facultad();
        $data['facultades'] = $facultades->getFacultad();
        require_once "views/personas/index.php";

        print(json_encode($data['facultades']));
    }
}


?>