<?php
class Student_result extends Myconn
{

    // =========================================================================
    // student week exam result library
    // =========================================================================

    public function generate_week_result(string $auth_key, int $title_id)
    {
        $auth_result = $this->auth($auth_key);
        $result_gen = $this->week_result_gen_logic($auth_key, $title_id);
        //  print_r($result_gen);
        // die();
        $total_question = $result_gen['total_question'];
        $total_answer = $result_gen['total_answer'];
        $correct_answer = $result_gen['correct_answer'];
        $wrong_answer = $result_gen['wrong_answer'];

        $check_student_result = $this->student_week_result($auth_key, $title_id);
        if (!$check_student_result) {
            $insert_result = $this->only_query('INSERT INTO `student_result`(`title_id`, `user_id`, `total_question`, `Total_answer`, `correct`, `wrong`, `modified`, `status`) VALUES ("' . $title_id . '","' . $auth_result['user_id'] . '","' . $total_question . '","' . $total_answer . '","' . $correct_answer . '","' . $wrong_answer . '","' . date("Y-m-d H:i:s") . '",1)');
            return $insert_result;
        }
    }
    public function student_week_result(string $auth_key, int $title_id)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $student_result = $this->select_one_row("SELECT 
            concat(p.first_name, ' ', p.last_name) as full_name,
            p.email as profile_email,
            p.contact,
            sr.user_id,
            u.email as login_email,
            sr.title_id,
            sr.total_question,
            sr.total_answer,
            sr.correct,
            sr.wrong,
            sr.modified AS result_gen_date FROM student_result AS sr LEFT JOIN users AS u ON u.id=sr.user_id LEFT JOIN profile AS p ON p.user_id=sr.user_id WHERE sr.title_id='" . $title_id . "'AND sr.user_id='" . $user_id . "'", true);
        return $student_result;
    }

    public function student_week_result_summary(string $auth_key, int $title_id)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $result_summary = $this->select_all_row('SELECT 
            eq.id as question_id,
                eq.question,
                CASE WHEN se.answer=1 THEN eq.option1 WHEN se.answer=2 THEN eq.option2 WHEN se.answer=3 THEN eq.option3 WHEN se.answer=4 THEN eq.option4 END AS your_answer,
                CASE WHEN eq.answer=1 THEN eq.option1 WHEN eq.answer=2 THEN eq.option2 WHEN eq.answer=3 THEN eq.option3 WHEN eq.answer=4 THEN eq.option4 END AS correct_answer FROM submit_exam AS se LEFT JOIN exam_question_setup AS eq ON eq.id=se.question_id WHERE se.user_id="' . $user_id . '"AND se.title_id="' . $title_id . '" and eq.flag >0', true);
        return $result_summary;
    }

    public function week_result_gen_logic(string $auth_key, int $title_id)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $gen_result = $this->select_one_row("SELECT
                    COUNT(*) as total_question,
                    COUNT(CASE WHEN eqs.answer=se.answer THEN 1 END) as correct_answer,
                    COUNT(CASE WHEN eqs.answer !=se.answer THEN 1 END) as wrong_answer,
                    COUNT(CASE WHEN se.answer >=1 THEN 1 END) as total_answer FROM submit_exam AS se LEFT JOIN exam_question_setup AS eqs ON se.question_id=eqs.id WHERE se.title_id='" . $title_id . "'and se.user_id='" . $user_id . "' and eqs.flag > 0");
        return $gen_result;
    }

    // -----------------------------------------------------------------------------
    //  Topic exam result library
    // -----------------------------------------------------------------------------

    public function student_topic_result(string $auth_key, int $video_id)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $student_result = $this->select_one_row("SELECT 
                        concat(p.first_name, ' ', p.last_name) as full_name,
                        p.email as profile_email,
                        p.contact,
                        u.email as login_email,
                        sr.user_id,
                        sr.video_id,
                        sr.total_question,
                        sr.total_answer,
                        sr.correct,
                        sr.wrong,
                        sr.modified AS result_gen_date FROM student_result AS sr left join video as v on v.id=sr.video_id left join users as u on u.id=sr.user_id left join profile as p on sr.user_id=p.user_id WHERE sr.video_id='" . $video_id . "'AND sr.user_id='" . $user_id . "'", true);
        return $student_result;
    }

    public function student_topic_result_summary(string $auth_key, int $video_id)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $result_summary = $this->select_all_row('SELECT 
                            eq.id as question_id,
                            eq.question,

                            CASE WHEN se.answer=1 THEN eq.option1 WHEN se.answer=2 THEN eq.option2 WHEN se.answer=3 THEN eq.option3 WHEN se.answer=4 THEN eq.option4 END AS your_answer,
                            CASE WHEN eq.answer=1 THEN eq.option1 WHEN eq.answer=2 THEN eq.option2 WHEN eq.answer=3 THEN eq.option3 WHEN eq.answer=4 THEN eq.option4 END AS correct_answer FROM submit_exam AS se LEFT JOIN exam_question_setup AS eq ON eq.id=se.question_id WHERE se.user_id="' . $user_id . '" AND se.video_id="' . $video_id . '" and eq.flag >0', true);
        return $result_summary;
    }

    public function topic_result_gen_logic(string $auth_key, int $video_id)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $gen_result = $this->select_one_row("SELECT
                                COUNT(*) as total_question,
                                COUNT(CASE WHEN eqs.answer=se.answer THEN 1 END) as correct_answer,
                                COUNT(CASE WHEN eqs.answer !=se.answer THEN 1 END) as wrong_answer,
                                COUNT(CASE WHEN se.answer >=1 THEN 1 END) as total_answer FROM submit_exam AS se LEFT JOIN exam_question_setup AS eqs ON se.question_id=eqs.id WHERE se.video_id='" . $video_id . "'and se.user_id='" . $user_id . "' and eqs.flag > 0");
        return $gen_result;
    }



    public function all_attend_exam($auth_key)
    {
        $auth_result = $this->auth($auth_key);
        $user_id = $auth_result['user_id'];
        $sql = 'select 
                                se.title_id,
                                etm.title_name,
                                etm.start_time,
                                etm.end_time
                                 from 
                                submit_exam se 
                                left join
                                 exam_title_master as etm on etm.id = se.title_id
                                  where user_id = "' . $user_id . '" and title_id >0 group by se.title_id';
        $result = $this->select_all_row($sql, true);
        return $result;
    }


    public function top_result($title_id = 1)
    {
        $sql = "
SELECT 
    CONCAT(p.first_name,' ', p.last_name) AS Full_name,
    p.contact as contact,
    etm.title_name,
    CONCAT(
    SUBSTR(`email`,1,1),
    REPEAT('*',LOCATE('@',`email`)-3),
    SUBSTR(`email`,LOCATE('@',`email`)-1,3),
    REPEAT('*',LENGTH(`email`)-LOCATE('.',REVERSE(`email`))-LOCATE('@',`email`)-1),
    SUBSTR(`email`,LENGTH(`email`)-LOCATE('.',REVERSE(`email`)))) as email ,
    eul.user_id,
    ROUND(((sr.correct / sr.total_question) * 100),
            2) AS percentage,
    ABS(TIME_TO_SEC(TIMEDIFF(eul.start_time, eul.end_time))) AS used_time,
    eul.start_time AS exam_start_time,
    eul.end_time AS exam_end_time,
    sr.title_id
FROM
    exam_user_log AS eul
        LEFT JOIN
    student_result AS sr ON sr.title_id = eul.exam_title
        LEFT JOIN
    profile AS p ON p.user_id = eul.user_id
        LEFT JOIN
    exam_title_master AS etm ON etm.id = eul.exam_title
WHERE
    eul.status = 1 AND sr.status = 1
        AND eul.user_id = sr.user_id
         AND eul.exam_title = '" . $title_id . "'
        AND eul.exam_title = 1
ORDER BY percentage DESC , used_time ASC;
limit 10 
";
// $sql = 'SELECT 
//     CONCAT(p.first_name, "  ", p.last_name) AS Full_name,
//     etm.title_name,
//     p.email,
//     eul.user_id,
//     ROUND(((sr.correct / sr.total_question) * 100),
//             2) AS percentage,
//     ABS(TIME_TO_SEC(TIMEDIFF(eul.start_time, eul.end_time))) AS used_time,
//     eul.start_time AS exam_start_time,
//     eul.end_time AS exam_end_time,
//     sr.title_id
// FROM
//     exam_user_log AS eul
//         LEFT JOIN
//     student_result AS sr ON sr.title_id = eul.exam_title
//         LEFT JOIN
//     profile AS p ON p.user_id = eul.user_id
//         LEFT JOIN
//     exam_title_master AS etm ON etm.id = eul.exam_title
// WHERE
//     eul.status = 1 AND sr.status = 1
//         AND eul.user_id = sr.user_id
//         AND eul.exam_title = "' . $title_id . '"
// ORDER BY percentage DESC , used_time ASC 
// limit 10 ';
        
$data =   $this->select_all_row($sql);
return $data;
    }
    public function top_result_admin($title_id = 1)
    {
        $sql = "
SELECT 
    CONCAT(p.first_name, ' ', p.last_name) AS Full_name,
    p.contact as contact,
    etm.title_name,
    p.email as email ,
    eul.user_id,
    ROUND(((sr.correct / sr.total_question) * 100),
            2) AS percentage,
    ABS(TIME_TO_SEC(TIMEDIFF(eul.start_time, eul.end_time))) AS used_time,
    eul.start_time AS exam_start_time,
    eul.end_time AS exam_end_time,
    sr.title_id
FROM
    exam_user_log AS eul
        LEFT JOIN
    student_result AS sr ON sr.title_id = eul.exam_title
        LEFT JOIN
    profile AS p ON p.user_id = eul.user_id
        LEFT JOIN
    exam_title_master AS etm ON etm.id = eul.exam_title
WHERE
    eul.status = 1 AND sr.status = 1
        AND eul.user_id = sr.user_id
         AND eul.exam_title = '" . $title_id . "'
        AND eul.exam_title = 1
ORDER BY percentage DESC , used_time ASC;
";
        // $sql = 'SELECT 
        //     CONCAT(p.first_name, "  ", p.last_name) AS Full_name,
        //     etm.title_name,
        //     p.email,
        //     eul.user_id,
        //     ROUND(((sr.correct / sr.total_question) * 100),
        //             2) AS percentage,
        //     ABS(TIME_TO_SEC(TIMEDIFF(eul.start_time, eul.end_time))) AS used_time,
        //     eul.start_time AS exam_start_time,
        //     eul.end_time AS exam_end_time,
        //     sr.title_id
        // FROM
        //     exam_user_log AS eul
        //         LEFT JOIN
        //     student_result AS sr ON sr.title_id = eul.exam_title
        //         LEFT JOIN
        //     profile AS p ON p.user_id = eul.user_id
        //         LEFT JOIN
        //     exam_title_master AS etm ON etm.id = eul.exam_title
        // WHERE
        //     eul.status = 1 AND sr.status = 1
        //         AND eul.user_id = sr.user_id
        //         AND eul.exam_title = "' . $title_id . '"
        // ORDER BY percentage DESC , used_time ASC 
        // limit 10 ';

        $data =   $this->select_all_row($sql);
        return $data;
    }

    
}
