<?php

class periodosController{

    public function __construct()
    {
        require_once "models/periodosModel.php";
    }

    // Consulta para obtener el listado de periodos
    public function verPeriodo(){
        $periodos = new periodo();
        $data['periodo'] = $periodos->getPeriodo();
        require_once "views/personas/index.php";

        print(json_encode($data['periodo']));
    }
}


?>