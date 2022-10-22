<?php

require_once "config/database.php";

class contenidos{

    public $idcontenido;
    public $id_tipo_estudio;
    public $contenido_programatico;
    public $unidades_credito;
    protected $conexion;
    public $contenido = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getContenido(){
        $sql = $this->conexion->connect->prepare("SELECT id_contenido, id_tipo_estudio, contenido_programatico, cantidad_uc FROM contenido ;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->contenido;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>