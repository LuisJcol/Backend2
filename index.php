<?php
    require_once 'config/constants.php';
    require_once 'core/router.php';
    require_once 'config/database.php';
    require_once 'controllers/usuariosController.php'; 


    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Headers: POST, GET, PUT, DELETE, OPTIONS, HEAD, Authorization, Origin, Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers, Access-Control-Allow-Origin');

    if(isset($_GET['c'])){
        $controlador = cargarControlador($_GET['c']);
        if(isset($_GET['a'])){
            cargarAccion($controlador, $_GET['a']);
        }else{
            cargarAccion($controlador, accionPrincipal);
        }
    }else{
        $controlador = cargarControlador(controladorPrincipal);
        $accion = accionPrincipal;
        $controlador->$accion();
    }
?>