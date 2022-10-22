<?php

class personasController{

    public function __construct()
    {
        require_once "models/personasModel.php";
    }

    public function ver(){
        $personas = new personas();
        $data['personas'] = $personas->getPersonas();
        $data['titulo'] = 'Personas';
        require_once "views/personas/index.php";

        print(json_encode($data['personas']));
    }

}


?>