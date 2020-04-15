SELECT 
    sr.*,
    sr.correct / sr.total_question * 100 AS percent,
    eul.start_time AS start_time,
    eul.end_time AS end_time,
    TIMEDIFF(end_time, start_time) AS total_exam_time
FROM
    student_result AS sr
        LEFT JOIN
    exam_user_log AS eul ON eul.exam_title = sr.title_id
        AND eul.user_id = sr.user_id
WHERE
    sr.title_id = 1
ORDER BY percent AND total_exam_time DESC
LIMIT 10