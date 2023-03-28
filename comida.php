<?php
 require_once "controlador/restaurante.php";

 switch ($_SERVER['REQUEST_METHOD']) {
    case 'GET':
        echo 'funciona';
        break;
    case 'POST':       

        $data = json_decode(file_get_contents('php://input'), true);

        if (!isset($data['idcomida']) || !isset($data['nombre']) || !isset($data['valor'])) {

        echo json_encode(array('statusCode' => 400, 'message' => 'Faltan datos obligatorios'));

        exit();

        }

        $response = controlador::registroComida(json_encode($data));

        $response_arr = json_decode($response, true);
        echo json_encode(array('statusCode' => $response_arr['statusCode'], 'message' => $response_arr['message'], 'data' => $response_arr['data']));

        break;
    default:
        break;
 }

?>