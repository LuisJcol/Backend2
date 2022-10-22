<?php

class rolesController{

    public function __construct()
    {
        require_once "models/rolesModel.php";
    }

    // Consulta para obtener el listado de roles
    public function ver(){
        $roles = new roles();
        $data['roles'] = $roles->getRoles();
        $data['titulo'] = 'Roles';
        require_once "views/usuarios/index.php";

        print(json_encode($data['roles']));
    }

    
}


?>