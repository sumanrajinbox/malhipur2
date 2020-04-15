<?php
include "config.php";
$conn = new Myconn();
$payment = new Payment();
$data = json_decode(file_get_contents('php://input'), true);

$exam_question = $conn->select_all_row("select * from exam_question_setup",true);
$serial = 1;
foreach ($exam_question as $key => $value) {
    $result[$key] = [
        'question_id' => $value['id'],
        'question' =>$serial.'. '. $value['question'],
        'option1' => $value['option1'],
        'option2' => $value['option2'],
        'option3' => $value['option3'],
        'option4' => $value['option4'],
        'modified' => $value['modified'],
        'answer' => $value['answer'],
    ];
    $serial ++;
}
$response["data"] = $result;
header('Content-Type: application/json');
header('HTTP/1.1 200 OK', true, 200);
echo json_encode($response);