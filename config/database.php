<?php

    class conexion{
        private $db = 'mysql';
        private $host = 'localhost';
        protected $dbNombre = 'urbe';
        private $usuario = 'root';
        private $clave = '';
        public $connect;

        public function __construct()
        {
            // return $this->conexion = new mysqli($this->host,$this->usuario,$this->clave,$this->dbNombre);
            try {
                $this->connect = new PDO("$this->db:host=$this->host;dbname=$this->dbNombre;charset=utf8", $this->usuario, $this->clave);
            } catch (PDOException $e) {
                echo "Error: ".$e->getMessage();
            }
            
        }
    }
?>