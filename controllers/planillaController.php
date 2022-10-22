<?php

class planillaController{

    public function __construct()
    {
        require_once "models/planillaModel.php";
    }

    public function verPlanilla(){
        $planilla = new planilla();
        $data['planilla'] = $planilla->getPlanilla();
        require_once "views/personas/index.php";

        print(json_encode($data['planilla']));
    }

    // Consulta para obtener la cantidad de alumnos inscritos
    public function getNoEstudiantes(){
        $planillas = new planilla();
        $data['estudiantes'] = $planillas->getTotalInscritos();
        require_once("views/personas/index.php");

        print(json_encode($data['estudiantes']));
    }

}


?>