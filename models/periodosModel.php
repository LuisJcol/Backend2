<?php

require_once "config/database.php";

class periodo{

    public $id_periodo;
    public $periodo;
    public $fecha_inicio;
    public $fecha_fin;
    public $abreviatura_periodo;
    protected $conexion;
    public $periodos = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getPeriodo(){
        $sql = $this->conexion->connect->prepare("SELECT id_periodo, periodo, fecha_inicio, fecha_fin, abreviatura_periodo FROM periodo ");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->periodos= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->periodos;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>