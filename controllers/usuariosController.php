<?php

class usuariosController{

    public function __construct()
    {
        require_once "models/usuariosModel.php";
        require_once "models/personasModel.php";
        require_once "models/rolesModel.php";
    }

    // Consulta para obtener la informacion de un usuario teniendo como parametros el usuario y contrasena
    public function login(){
        extract($_POST);
        $user = new usuarios();
        $data['usuarios'] = $user->obtenerUsuario($usuario, $contrasena);
        require_once "views/usuarios/index.php";
        print(json_encode($data['usuarios']));
    }

    // Consulta para obtener el listado de todos los usuarios registrados 
    public function ver(){
        $users = new usuarios();
        $data['usuarios'] = $users->getUsers();
        $data['titulo'] = 'Usuarios';
        require_once "views/usuarios/index.php";

        print(json_encode($data['usuarios']));
    }

    // Consulta para obtener listado de roles y personas sin usuario creado
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

    // Consulta para obtener la informacion de un usuario a traves del id de usuario
    public function getUsuario(){
        $users = new usuarios();
        $idusuario = $_REQUEST["ID"];
        $data['usuarios'] = $users->getUserById($idusuario);
        print(json_encode($data['usuarios']));

    }

    // Consulta para editar la informacion de un usuario a traves del id de usuario
    public function editar(){
        $users = new usuarios();
        $idusuario = $_REQUEST["ID"];
        extract($_POST);
        $users->modifyUsers($idusuario, $idpersona, $idrol, $password);
    }

    // Consulta para eliminar usuario

    public function eliminar(){
        $users = new usuarios();
        $idusuario = $_REQUEST["ID"];
        extract($_POST);
        $users->deactiveUser($idusuario);
        echo json_encode("Usuario Eliminado");
    }

    // Consulta para guardar un usuario nuevo
    public function guardar(){
            extract($_POST);
            $user = new usuarios();
            $user->registerUsers($usuario,$idpersona, $idrol, $password);
            echo json_encode("Prueba");
            require_once "views/usuarios/index.php";
      
    }

    // Consulta Modificar Usuario

    public function modificar(){
        extract($_POST);
        $user = new usuarios();
        $user->userModify($usuario, $estado_usuario, $id_rol, $password);
        require_once "views/usuarios/index.php";
    }

    // Consulta para obtener usuarios registrados en estado activo
    public function verActivos(){
        $user = new usuarios();
        $data['usuario'] = $user-> getActiveUsers();
        require_once "views/usuarios/index.php";

        print(json_encode($data['usuario']));

    }

}


?>