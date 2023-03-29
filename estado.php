<?php
 require_once "controlador/restaurante.php";

 switch ($_SERVER['REQUEST_METHOD']) {
    case 'GET':
        echo 'funciona';
        break;
    case 'POST':       

        $data = json_decode(file_get_contents('php://input'), true);

        $response = controlador::updateEstado(json_encode($data));

        $response_arr = json_decode($response, true);
        
        echo json_encode(array('statusCode' => $response_arr['statusCode'], 'message' => $response_arr['message'], 'data' => $response_arr['data']));

        break;
    default:
        break;
 }

?>