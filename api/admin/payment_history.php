<?php
//web api

// Allow from any origin

if (isset($_SERVER['HTTP_ORIGIN'])) {

    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");

    header('Access-Control-Allow-Credentials: true');

    header('Access-Control-Max-Age: 86400');    // cache for 1 day

}



// Access-Control headers are received during OPTIONS requests

if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {



    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))

        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");



    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))

        header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");



    exit(0);
}

include("config.php");
$conn = new Myconn();
$convert = new Convert();
$data = json_decode(file_get_contents('php://input'), true);





if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      $user_id = $data['user_id'];
    if ( isset($user_id)) {
        $all_data = $conn->select_all_row('select * from payment_details where user_id = "' . $user_id . '" and flag = 0 ');
        if ($all_data) {
            $response["error"] = false;
            $response["data"] = $all_data;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response);
            die;
        } else {
            $response["error"] = TRUE;
            $response["message"] = "no record found";
            $response["data"] = $all_data;
            header('HTTP/1.1 404 Not Found', true, 404);
            header('Content-Type: application/json');
            echo json_encode($response);
        }
    } else {
        $all_data2 = $conn->select_all_row('select * from payment_details where flag = 0');
        if ($all_data2) {
            $response["error"] = false;
            $response["data"] = $all_data2;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response);
            die;
        } else {
            $response["error"] = TRUE;
            $response["message"] = "no record found";
            $response["data"] = $all_data2;
            header('HTTP/1.1 404 Not Found', true, 404);
            header('Content-Type: application/json');
            echo json_encode($response);
        }
    }
}
