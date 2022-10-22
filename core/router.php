<?php

function cargarControlador($controlador){
    $nombreControlador = strtolower($controlador)."Controller";
    $archivoControlador = "controllers/$nombreControlador.php";

    if(!is_file($archivoControlador)){
        $archivoControlador = 'controllers/'.controladorPrincipal.'.php';
    }
    require_once $archivoControlador;
    $controlador = new $nombreControlador();
    return $controlador;
}

function cargarAccion($controlador,$accion){
    if(isset($accion) && method_exists($controlador,$accion)){
        $controlador->$accion();
    }else{
        $accion = accionPrincipal;
        $controlador->$accion();
    }
}

?>