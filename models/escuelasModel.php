<?php

require_once "config/database.php";
require_once "facultadesModel.php";

class escuela extends facultad{

    public $idescuela;
    public $escuela;
    protected $conexion;
    public $escuelas = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getEscuelas($facultad){
        $sql = $this->conexion->connect->prepare("SELECT e.id_escuela, e.escuela FROM escuela e JOIN facultad f ON f.id_facultad = e.id_facultad WHERE e.id_facultad = :facultad;");
        $sql->bindParam(":facultad", $facultad);
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->escuelas= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->escuelas;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>