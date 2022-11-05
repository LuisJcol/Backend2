<?php

class inscripcionesController{

    public function __construct()
    {
        require_once "models/inscripcionesModel.php";
    }

    // Consulta para obtener el listado estudiantes inscritos por facultades
    public function verInscripcionesFacultad(){
        $inscripciones = new inscripcion();
        $data['facultades'] = $inscripciones->getEstudiantesFacultad();
        require_once "views/personas/index.php";

        print(json_encode($data['facultades']));
    }

    // Consulta para obtener el listado estudiantes inscritos por escuelas
    public function verInscripcionesEscuela(){
        $inscripciones = new inscripcion();
        $data['escuelas'] = $inscripciones->getEstudiantesEscuela();
        require_once "views/personas/index.php";

        print(json_encode($data['escuelas']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ingenieria Informatica
    public function verEstudiantesInformatica(){
        $inscripciones = new inscripcion();
        $data['informatica'] = $inscripciones->getEstudiantesInformatica();
        require_once "views/personas/index.php";

        print(json_encode($data['informatica']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ingenieria Industrial
    public function verEstudiantesIndustrial(){
        $inscripciones = new inscripcion();
        $data['industrial'] = $inscripciones->getEstudiantesIndustrial();
        require_once "views/personas/index.php";

        print(json_encode($data['industrial']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ingenieria Computacion
    public function verEstudiantesComputacion(){
        $inscripciones = new inscripcion();
        $data['computacion'] = $inscripciones->getEstudiantesComputacion();
        require_once "views/personas/index.php";

        print(json_encode($data['computacion']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ingenieria Electronica: Mencion Telecomunicaciones
    public function verEstudiantesTelecomunicaciones(){
        $inscripciones = new inscripcion();
        $data['telecomunicaciones'] = $inscripciones->getEstudiantesTelecomunicaciones();
        require_once "views/personas/index.php";

        print(json_encode($data['telecomunicaciones']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ingenieria Electronica: Mencion Automatizacion y Control
    public function verEstudiantesAutomatizacion(){
        $inscripciones = new inscripcion();
        $data['automatizacion'] = $inscripciones->getEstudiantesAutomatizacion();
        require_once "views/personas/index.php";

        print(json_encode($data['automatizacion']));
    }


    // Consulta para obtener el registro de estudiantes inscritos en Comunicacion Social: Mencion Audiovisual
    public function verEstudiantesAudiovisual(){
        $inscripciones = new inscripcion();
        $data['audiovisual'] = $inscripciones->getEstudiantesComunicacionAudiovisual();
        require_once "views/personas/index.php";

        print(json_encode($data['audiovisual']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Comunicacion Social: Mencion Periodismo
    public function verEstudiantesPeriodismo(){
        $inscripciones = new inscripcion();
        $data['periodismo'] = $inscripciones->getEstudiantesComunicacionPeriodismo();
        require_once "views/personas/index.php";

        print(json_encode($data['periodismo']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Comunicacion Social: Mencion Relaciones Publicas
    public function verEstudiantesRelacionesPublicas(){
        $inscripciones = new inscripcion();
        $data['relaciones'] = $inscripciones->getEstudiantesComunicacionRelacionesPublicas();
        require_once "views/personas/index.php";

        print(json_encode($data['relaciones']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias Administrativas: Mencion Contaduria
    public function verEstudiantesContaduria(){
        $inscripciones = new inscripcion();
        $data['contaduria'] = $inscripciones->getEstudiantesContaduria();
        require_once "views/personas/index.php";

        print(json_encode($data['contaduria']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias Administrativas: Mencion Administracion de Empresas
    public function verEstudiantesAdmEmpresas(){
        $inscripciones = new inscripcion();
        $data['empresas'] = $inscripciones->getEstudiantesEmpresas();
        require_once "views/personas/index.php";

        print(json_encode($data['empresas']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias Administrativas: Mencion Mercadeo
    public function verEstudiantesMercadeo(){
        $inscripciones = new inscripcion();
        $data['mercadeo'] = $inscripciones->getEstudiantesMercadeo();
        require_once "views/personas/index.php";

        print(json_encode($data['mercadeo']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias Administrativas: Mencion Banca y Seguros
    public function verEstudiantesBancaSeguros(){
        $inscripciones = new inscripcion();
        $data['banca'] = $inscripciones->getEstudiantesBanca();
        require_once "views/personas/index.php";

        print(json_encode($data['banca']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias Administrativas: Mencion Relaciones Industriales
    public function verEstudiantesRelacionesIndustriales(){
        $inscripciones = new inscripcion();
        $data['industriales'] = $inscripciones->getEstudiantesRelacionesIndustriales();
        require_once "views/personas/index.php";

        print(json_encode($data['industriales']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias Juridicas y Politicas: Derecho
    public function verEstudiantesDerecho(){
        $inscripciones = new inscripcion();
        $data['derecho'] = $inscripciones->getEstudiantesDerecho();
        require_once "views/personas/index.php";

        print(json_encode($data['derecho']));
    }

    // Consulta para obtener el registro de estudiantes inscritos en Ciencias de la Informatica: Diseño Grafico
    public function verEstudiantesDiseno(){
        $inscripciones = new inscripcion();
        $data['diseno'] = $inscripciones->getEstudiantesDiseno();
        require_once "views/personas/index.php";

        print(json_encode($data['diseno']));
    }

}


?>