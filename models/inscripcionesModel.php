<?php

require_once "config/database.php";

class inscripcion{

    public $idinscripcion;
    public $idfacultad;
    public $idescuela;
    public $idperiodo;
    public $idpersona;
    protected $conexion;
    public $inscripciones = array();

    public function __construct(){
        $this->conexion = new conexion();
    }

    public function getEstudiantesFacultad(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, (SELECT COUNT(i.id_facultad) FROM inscripcion i WHERE i.id_facultad = f.id_facultad and i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f RIGHT JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN periodo p ON i.id_periodo = p.id_periodo WHERE p.id_periodo = 4 GROUP BY i.id_facultad;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesEscuela(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, (SELECT COUNT(i.id_escuela) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela and i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela JOIN periodo p ON i.id_periodo = p.id_periodo WHERE p.id_periodo = 4 GROUP BY i.id_escuela;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesInformatica(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 1 AND e.id_escuela = 1 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesIndustrial(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 1 AND e.id_escuela = 2 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesComputacion(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 1 AND e.id_escuela = 3 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesTelecomunicaciones(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 1 AND e.id_escuela = 4 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesAutomatizacion(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 1 AND e.id_escuela = 5 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesComunicacionAudiovisual(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 2 AND e.id_escuela = 7 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesComunicacionRelacionesPublicas(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 2 AND e.id_escuela = 8 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesComunicacionPeriodismo(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 2 AND e.id_escuela = 6 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesContaduria(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 3 AND e.id_escuela = 9 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesEmpresas(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 3 AND e.id_escuela = 10 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesMercadeo(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 3 AND e.id_escuela = 11 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesBanca(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 3 AND e.id_escuela = 12 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesRelacionesIndustriales(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela  JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 3 AND e.id_escuela = 13 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 10 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesDerecho(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 4 AND e.id_escuela = 14 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 5 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }

    public function getEstudiantesDiseno(){
        $sql = $this->conexion->connect->prepare("SELECT f.id_facultad, f.facultad, e.id_escuela, e.escuela, p.id_periodo, p.abreviatura_periodo, (SELECT COUNT(i.id_periodo) FROM inscripcion i WHERE i.id_facultad = f.id_facultad AND i.id_escuela = e.id_escuela AND i.id_periodo = p.id_periodo) AS estudiantes FROM facultad f JOIN inscripcion i ON i.id_facultad = f.id_facultad JOIN escuela e ON i.id_escuela = e.id_escuela JOIN periodo p ON i.id_periodo = p.id_periodo WHERE f.id_facultad = 5 AND e.id_escuela = 15 GROUP BY i.id_periodo ORDER BY i.id_periodo ASC LIMIT 5 OFFSET 0;");
        $sql->execute();
        if ($sql->errorCode() == 0) {
            $this->inscripciones= $sql->fetchAll(PDO::FETCH_ASSOC);
            return $this->inscripciones;
        }else{
            print_r($sql->errorInfo());
        }
    }
}


?>