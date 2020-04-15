<?php // Allow from any origin

if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD']=='OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}

include("config.php");
$student_class=new Student_result();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$title_id=$data['title_id'];

function check_auth($auth, $conn) {
    $auth_result=$conn->select_one_row("select * from auth where auth_key = '".$auth."' and active = 1");
    return $auth_result;
}

$auth_result=check_auth($data['auth_key'], $conn);

if ($_SERVER['REQUEST_METHOD']==='POST') {

    if($auth_result) {

        $student_result=$conn ->select_all_row("SELECT 
            p.first_name,
            p.last_name,
            p.email as profile_email,
            p.contact,
            sr.user_id,
            u.email as login_email,
            sr.title_id,
            sr.total_question,
            sr.total_answer,
            sr.correct,
            sr.wrong,
            sr.modified AS result_gen_date FROM student_result AS sr LEFT JOIN users AS u ON u.id=sr.user_id LEFT JOIN profile AS p ON p.user_id=sr.user_id WHERE sr.title_id='".$title_id."'AND sr.user_id='".$auth_result['user_id']."'");
if(count($student_result)) {
    // $old_sql = "select  CONCAT (p.first_name,' ',p.last_name) as full_user_name,u.email,etm.title_name,n.student_Rank from
    // (SELECT *, RANK() OVER (ORDER BY sr.correct) as student_Rank FROM student_result as sr) as n 
    // left join users as u on u.id = n.user_id  
    // left join exam_title_master as etm on etm.id = n.title_id  
    // left join profile as p on p.user_id = n.user_id  
    // where  n.status = 1 and n.user_id ='".$auth_result['user_id']."' 
    // and n.title_id = '".$title_id."' ";

    $sql = "SELECT 
    result.user_id,
    CONCAT(p.first_name, ' ', p.last_name) AS full_name,
    u.email,
    result.rank,
    result.title_id,
    etm.title_name AS exam_title_name
FROM
    (SELECT 
        *,
            IF(correct = @last, @curRank:=@curRank, @curRank:=@_sequence) AS rank,
            @_sequence:=@_sequence + 1,
            @last:=correct
    FROM
        student_result, (SELECT @curRank:=1, @_sequence:=1, @last:=0) AS r
    ORDER BY id ASC) AS result
        LEFT JOIN
    users AS u ON u.id = result.user_id
        LEFT JOIN
    profile AS p ON p.user_id = result.user_id
        LEFT JOIN
    exam_title_master AS etm ON etm.id = result.title_id where result.user_id= '".$auth_result['user_id']."' and result.title_id = '".$title_id."'";

$rank = $conn->select_all_row($sql);

$top_ten_rank = $conn->select_all_row("SELECT 
result.user_id,
CONCAT(p.first_name, ' ', p.last_name) AS full_name,
u.email,
result.rank,
result.title_id,
etm.title_name AS exam_title_name
FROM
(SELECT 
    *,
        IF(correct = @last, @curRank:=@curRank, @curRank:=@_sequence) AS rank,
        @_sequence:=@_sequence + 1,
        @last:=correct
FROM
    student_result, (SELECT @curRank:=1, @_sequence:=1, @last:=0) AS r
ORDER BY id ASC) AS result
    LEFT JOIN
users AS u ON u.id = result.user_id
    LEFT JOIN
profile AS p ON p.user_id = result.user_id
    LEFT JOIN
exam_title_master AS etm ON etm.id = result.title_id where result.title_id = '".$title_id."' and result.rank in (0,1,2,3,4,5,6,7,8,9,10)");

                $response["result_generate"]="result generated";
                $response["result_data"]=$student_result; 
                $response["this_student_rank"]=$rank;
                $response["top_ten_rank"]=$top_ten_rank;
                header('Content-Type: application/json');
                header('HTTP/1.1 200 OK', true, 200);
                echo json_encode($response);
            }

            else {
                $response["student_result_msg"]=" Data not found ";
                header('Content-Type: application/json');
                header('HTTP/1.1 404 OK', true, 404);
                $response["result_data"]=$student_result;
                echo json_encode($response);
            }
        }



    }




    ?>