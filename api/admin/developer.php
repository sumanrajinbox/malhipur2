<?php //web api
include("config.php");
$conn = new Myconn();
$payment = new Payment();
$data = json_decode(file_get_contents('php://input'), true);

$all_table = $conn->select_all_row('show tables');
// foreach ($all_table as $key => $value) {
//     foreach ($value as $k => $v) {
//       echo "table name ------------>  ".$v . "\n";
//         $columns = $conn->select_all_row('SHOW COLUMNS from '.$v);
//        // print_r($columns);
//         foreach($columns as $ck =>$cv){
//             echo("column_name --> ".$cv['Field']."\n");
//         }
//     }
// }

isset($data['table'])?$table = $data['table']: $table = 'auth';
isset($data['query'])? $query = $data['query']: $query = 'select u.* , p.* from users as u left join profile as p on p.user_id = u.id ';

// echo $query;
// die;
function all_data($conn,$table){
    $sql = 'select * from ' . $table ;
    $data = $conn ->select_all_row($sql);
   print_r($data);
}
function query_data($conn,$query){
    $sql = $query;
    if($sql);
    $data = $conn->select_all_row($sql);
    print_r($data);
}
query_data($conn,$query);

all_data($conn,$table);

//$all_columns = $conn->select_all_row('SHOW COLUMNS from auth');
//print_r($all_table[0]['Tables_in_challenge_mal']);
//print_r($all_columns);
