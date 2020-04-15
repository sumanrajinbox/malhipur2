SELECT 
concat(p.first_name," ",p.last_name )as full_name,
    etm.title_name ,
    sr.total_question AS total_question,
    sr.total_answer as total_answer,
    sr.correct as correct,
    sr.wrong as wrong
FROM
    student_result AS sr
    left join exam_title_master as etm on etm.id = sr.title_id
    left join profile as p on sr.user_id = p.user_id
WHERE
    sr.title_id = 1 AND sr.user_id = 3