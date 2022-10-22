<?php

require_once "config/database.php";

class personas{

    public $idpersona;
    public $primerNombre;
    public $segundoNombre;
    public $primerApellido;
    public $segundoApellido;
    public $email;
    protected $conexion;
    public $users = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getPersonas(){
        $sql = $this->conexion->connect->prepare("SELECT p.* FROM persona p WHERE p.id NOT IN (SELECT u.id_persona FROM usuario u);");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->users;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>