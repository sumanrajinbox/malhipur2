SELECT 
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
    sr.modified AS result_gen_date
FROM
    student_result AS sr
        LEFT JOIN
    users AS u ON u.id = sr.user_id
        LEFT JOIN
    profile AS p ON p.user_id = sr.user_id
WHERE
    sr.title_id = '8' AND sr.user_id = '1'