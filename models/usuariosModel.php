<?php

require_once "config/database.php";
require_once "models/personasModel.php";

class usuarios extends personas{

    public $id;
    public $usuario;
    public $email;
    public $estado;
    public $rol;
    protected $password;
    protected $conexion;
    public $users = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getUsers(){
    
        $sql = $this->conexion->connect->prepare("SELECT p.*, u.*, r.rol FROM persona p JOIN usuario u ON u.id_persona = p.id JOIN roles r ON r.id_rol = u.id_rol;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->users;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getUserById($idusuario){
    
        $sql = $this->conexion->connect->prepare("SELECT p.primerNombre, p.segundoNombre, p.primerApellido, p.segundoApellido, u.*, r.rol FROM usuario u JOIN persona p  ON p.id = u.id_persona JOIN roles r ON r.id_rol = u.id_rol WHERE u.id_usuario = :idusuario;");
        $sql->bindParam(':idusuario',$idusuario);
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->users;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function modifyUsers($idusuario, $idpersona, $idrol, $password){
        $sql = $this->conexion->connect->prepare("UPDATE usuario SET id_persona = :idpersona, id_rol = :idrol, contrasena = :pw WHERE id_usuario = :idusuario");
        $sql->bindParam(':idusuario', $idusuario);
        $sql->bindParam(':idpersona',$idpersona);
        $sql->bindParam(':idrol',$idrol);
        $sql->bindParam(':pw',$password);
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->users;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function deactiveUser($idusuario){
        $sql = $this->conexion->connect->prepare("UPDATE usuario SET estado_usuario = :estatus WHERE id_usuario = :idusuario");
        $estado = "I";
        $sql->bindParam(':idusuario',$idusuario);
        $sql->bindValue(':estatus',$estado);
        $sql-execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->users;
        }else{
            print_r($sql->errorInfo());
        }
    }


    public function getActiveUsers(){
        $sql = $this->conexion->connect->prepare("SELECT p.*, u.*, r.rol FROM persona p JOIN usuario u ON u.id_persona = p.id JOIN roles r ON r.id_rol = u.id_rol WHERE u.estado_usuario = 'A';");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->users;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function registerUsers($usuario, $idpersona, $idrol, $password){
        $sql = $this->conexion->connect->prepare("INSERT INTO usuario (usuario, estado_usuario, id_persona, id_rol, contrasena) VALUES(:usuario, 'A', :idpersona,:idrol,:pw)");
        $sql->bindParam(':usuario',$usuario);
        $sql->bindParam(':idpersona',$idpersona);
        $sql->bindParam(':idrol',$idrol);
        $sql->bindParam(':pw',$password);
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->id = $this->conexion->connect->lastInsertId();
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function usuariosActivos(){
        $sql = $this->conexion->connect->prepare("SELECT u.* FROM usuario u WHERE u.estado_usuario = 'A'");
        $sql->execute();
    }

    public function obtenerUsuario($usuario, $password){
        
            $sql = $this->conexion->connect->prepare("SELECT u.*, p.primerNombre, p.segundoNombre, p.primerApellido, p.segundoApellido, r.id_rol, r.rol FROM usuario u JOIN persona p ON p.id = u.id_persona JOIN roles r ON r.id_rol = u.id_rol WHERE u.usuario = :usuario AND u.contrasena = :pass");
            $sql->bindParam(':usuario',$usuario);
            $sql->bindParam(':pass', $password);
            $sql->execute();
            if ($sql->errorCode() == 0) {
                $this->users= $sql->fetchAll(PDO::FETCH_ASSOC);
                return $this->users;
            }else{
                print_r($sql->errorInfo());
            }

    }

    public function userModify($idusuario, $estado_usuario, $id_rol, $password){
        $sql = $this->conexion->connect->prepare("UPDATE usuario SET id_rol = :idrol, contrasena = :pw, estado_usuario = :estado WHERE id_usuario = :idusuario");
        $sql->bindParam(':idusuario', $idusuario);
        $sql->bindParam(':estado',$estado_usuario);
        $sql->bindParam(':idrol',$id_rol);
        $sql->bindParam(':pw',$password);
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