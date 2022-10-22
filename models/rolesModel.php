<?php

require_once "config/database.php";

class roles{

    public $idrol;
    public $rol;
    protected $conexion;
    public $roles = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getRoles(){
        $sql = $this->conexion->connect->prepare("SELECT id_rol as idrol, rol FROM roles;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->roles= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->roles;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>