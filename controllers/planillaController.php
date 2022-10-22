<?php

class planillaController{

    public function __construct()
    {
        require_once "models/planillaModel.php";
    }

    public function verPlanilla(){
        $planilla = new planilla();
        $data['planilla'] = $planilla->getPlanilla();
        //$data['titulo'] = 'Personas';
        require_once "views/personas/index.php";

        print(json_encode($data['planilla']));
    }

    public function getNoEstudiantes(){
        $planillas = new planilla();
        $data['estudiantes'] = $planillas->getTotalInscritos();
        require_once("views/personas/index.php");

        print(json_encode($data['estudiantes']));
    }

}


?>