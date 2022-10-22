<?php

class escuelasController{

    public function __construct()
    {
        require_once "models/escuelasModel.php";
        require_once "models/facultadesModel.php";
    }

    public function verEscuelas(){
        extract($_POST);
        $escuelas = new escuela();
        $data['escuelas'] = $escuelas->getEscuelas($id_facultad);
        require_once "views/personas/index.php";

        print(json_encode($data['escuelas']));
    }

    public function verFacultades(){
        $facultades = new facultad();
        $data['facultades'] = $facultades->getFacultad();
        require_once "views/personas/index.php";

        print(json_encode($data['facultades']));
    }
}


?>