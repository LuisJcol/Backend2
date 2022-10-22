<?php

class periodosController{

    public function __construct()
    {
        require_once "models/periodosModel.php";
    }

    public function verPeriodo(){
        $periodos = new periodo();
        $data['periodo'] = $periodos->getPeriodo();
        require_once "views/personas/index.php";

        print(json_encode($data['periodo']));
    }
}


?>