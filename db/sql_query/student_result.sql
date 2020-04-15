SELECT
	COUNT(*) as total_question,
    COUNT(CASE WHEN eqs.answer = se.answer THEN 1 END) as correct_answer,
	COUNT(CASE WHEN eqs.answer != se.answer THEN 1 END) as wrong_answer,
    COUNT(CASE WHEN se.answer >= 1 THEN 1 END) as total_answer
 
FROM
    exam_question_setup AS eqs
        LEFT JOIN
    submit_exam AS se ON se.title_id = eqs.title_id
WHERE
    se.title_id = 8