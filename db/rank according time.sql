SELECT 
    CONCAT(p.first_name, ' ', p.last_name) AS Full_name,
       etm.title_name,
       p.email,

    ROUND(((sr.correct / sr.total_question) * 100),2) AS percentage,
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
    left join 
    exam_title_master as etm on etm.id = eul.exam_title
WHERE
    eul.status = 1 AND sr.status = 1
        AND eul.user_id = sr.user_id
        AND eul.exam_title = 1
ORDER BY 
percentage DESC,
used_time DESC;

