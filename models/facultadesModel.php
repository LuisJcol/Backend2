<?php

require_once "config/database.php";

class facultad{

    public $idfacultad;
    public $facultad;
    protected $conexion;
    public $facultades = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getfacultad(){
        $sql = $this->conexion->connect->prepare("SELECT id_facultad, facultad FROM facultad ;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->facultades= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->facultades;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>