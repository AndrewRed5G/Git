<?php

 require_once "conexion/conexion.php";



 class controlador
 {



    static function response($statusCode, $message, $data)
    {
        $response = [
            'statusCode' => $statusCode,
            'message' => $message,
            'data' => $data
        ];

        return json_encode($response);
    }



    static function registroComida($json)
    {

        $data = json_decode($json, true);

        $db = new Conexion();

        try {
            
            $idcomida = $data['idcomida'];
            $nombre = $data['nombre'];
            $valor = $data['valor'];

            $query = "SELECT * FROM comida where idcomida = '$idcomida'";

            $resultado = $db->query($query);

            if ($resultado) {

                return self::response(400, "platillo ya existe", []);

            } else {

                $columnas = "idcomida, nombre, valor";
                $valores = "'$idcomida', '$nombre', '$valor'";

                $query = "INSERT INTO comida ($columnas) VALUES($valores)";

                $resultado = $db->query($query);

                return self::response(200, 'Platillo guardado', []);
            }
        } catch (Exception $e) {

            return self::response(500, $e->getMessage(), []);

        }
    }
 } 








?>