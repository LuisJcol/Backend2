<?php

class usuariosController{

    public function __construct()
    {
        require_once "models/usuariosModel.php";
        require_once "models/personasModel.php";
        require_once "models/rolesModel.php";
    }

    public function login(){
        extract($_POST);
        $user = new usuarios();
        $data['usuarios'] = $user->obtenerUsuario($usuario, $contrasena);
        require_once "views/usuarios/index.php";
        print(json_encode($data['usuarios']));
    }

    public function ver(){
        $users = new usuarios();
        $data['usuarios'] = $users->getUsers();
        $data['titulo'] = 'Usuarios';
        require_once "views/usuarios/index.php";

        print(json_encode($data['usuarios']));
    }

    public function registrar(){
        $personas = new personas();
        $data['personas'] = $personas->getPersonas();
        $roles = new roles();
        $data['roles'] = $roles->getRoles();
        $data['titulo'] = "Registrar Usuarios";
        require_once "views/usuarios/registrarUsuarios.php";

        print("<script> 
            console.log(".json_encode($data['personas']).")
            console.log(".json_encode($data['roles']).")
        
        </script>");
    }

    public function guardar(){

        
            extract($_POST);
            $user = new usuarios();
            $user->registerUsers($usuario,$idpersona, $idrol, $password);
            echo json_encode($_POST['usuario']);
            echo json_encode("Prueba");
            require_once "views/usuarios/index.php";
      
    }

    public function verActivos(){
        $user = new usuarios();
        $data['usuario'] = $user-> getActiveUsers();
        require_once "views/usuarios/index.php";

        print(json_encode($data['usuario']));

    }
}


?>