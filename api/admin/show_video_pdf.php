<?php
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
$conn=new Dbcon();
$data=json_decode(file_get_contents('php://input'), true);
$response=array("error"=> FALSE);
$url="http://malhipur.in/api";


if ($_SERVER['REQUEST_METHOD']==='GET') {
    $sql_video_pdf = "SELECT
    v.id AS video_id,
    v.video_name,
    v.video_description,
    v.video_url,
    v.video_title,
    t.thumb_url,
    s.subjectName,
    c.name AS class_name,
    ch.chapter_name,
    m.monthName as month_name
FROM
    video AS v

LEFT JOIN subject AS s
ON
    v.subject_id = s.id
LEFT JOIN class AS c
ON
    c.id = v.class_id
LEFT JOIN chapter AS ch
ON
    v.chapter_id = ch.id
LEFT JOIN month AS m
ON
    v.month_id = m.id
LEFT JOIN thumb AS t
ON
    t.video_id = v.id
WHERE
    v.status = 1";

    
            $video_data=$conn->select_all_row($sql_video_pdf);
           // print_r($video_data);
            //die;
                $all_data=[];
                $result=[];
                foreach($video_data as $video) {
                    $pdf_data=$conn->select_all_row("select pdf_name,pdf_url from pdf where video_id = '".$video['video_id']."'");
                    //print_r ($pdf_data['pdf_name']);
                    $result =[ 
                        "video_id" =>$video['video_id'],
                        "month_name" =>$video['month_name'],
                        "chapter_name" =>$video['chapter_name'],
                        "video_name" =>$video['video_name'],
                        "video_desc" =>$video['video_description'],
                        "video_url" =>$url.substr($video['video_url'], 2),
                        "thumb_url" =>$url.substr($video['thumb_url'], 2),
                        "subjectName" =>$video['subjectName'],
                        "class_name" =>$video['class_name'],
                        "video_title" =>$video['video_title'],
                        "pdf_data"=>$pdf_data,
                        
                    ];
            array_push($all_data, $result);
                    //echo json_encode($result);
                }        
                if($all_data) {
                    $response["error"]=FALSE;
                    $response["video_pdf_data"]=$all_data; 
                    header('HTTP/1.1 200 success', true, 200);
                    header('Content-Type: application/json');
                    echo json_encode($response);
                }
                else {
                    $response["error"]=TRUE;
                    $response["video_pdf_data"]=[]; 
                 //   header('HTTP/1.1  404 No Content', true, 404);
                    header('Content-Type: application/json');
                    echo json_encode($response, JSON_PRETTY_PRINT);
                }

      
    }

    ?>