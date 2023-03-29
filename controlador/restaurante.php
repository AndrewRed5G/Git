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

            if ($resultado->num_rows) {

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



    static function registroOrden($json)
    {
        $data = json_decode($json, true);
    
        $db = new Conexion();
    
        try {

            $nombre = $data['nombre'];
            $ciudad = $data['ciudad'];
            $direccion = $data['direccion'];
            $telefono = $data['telefono'];
            $comida = $data['comida'];
    
            $columnas = "nombre, ciudad, direccion, telefono";
            $valores = "'$nombre', '$ciudad', '$direccion', '$telefono'";
    
            $query = "INSERT INTO usuario ($columnas) VALUES ($valores)";
    
            if ($db->query($query)) {

                $ultimo_id = $db->insert_id;

                echo "ID cliente: " . $ultimo_id;

                foreach ($comida as $comidas) {

                    try {

                    $idcomida = $comidas['idcomida'];
                    $usuorden = $comidas['usuorden'];

                    $valores = "'$ultimo_id', '$idcomida', '$usuorden'";
                    $columnas = "idusuario, idcomida, usuorden";

                    $query = "INSERT INTO orden ($columnas) VALUES ($valores)";

                    $db->query($query);
                    
                    } catch (Exception $e) {

                        return self::response(500, $e->getMessage(), []);

                    }
                }

                return self::response(200, 'orden guardada', []);

            } else {

                return self::response(500, "Error al insertar el registro: " . $db->error, []);

            }
        } catch (Exception $e) {

            return self::response(500, $e->getMessage(), []);

        }
    
        $db->close();
    }
    
 } 








?>