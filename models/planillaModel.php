<?php

require_once "config/database.php";
require_once "personasModel.php";

class planilla extends personas{

    public $idplanilla;
    public $id_tipo_estudio;
    public $idperiodo;
    public $fecha_planilla;
    public $total_uc;
    public $turno;
    public $id_factura;
    public $numero_semestre;
    protected $conexion;
    public $planilla = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getPlanilla(){
        $sql = $this->conexion->connect->prepare("SELECT pli.id_planilla, pr.*, pli.id_tipo_estudio, pli.id_periodo, p.periodo,  pli.total_uc, pli.turno, pli.id_factura, pli.numero_semestre  FROM planilla_inscripcion pli JOIN persona pr ON pr.id = pli.id_persona JOIN periodo p ON p.id_periodo = 18;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->planilla= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->planilla;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getTotalInscritos(){
        $sql = $this->conexion->connect->prepare("SELECT pl.*,  FROM planilla_inscripcion pl  JOIN ");
    }
}