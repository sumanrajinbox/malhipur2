SELECT
eqs.*
     
   ,  COUNT(*) 
FROMSELECT
	COUNT(*) as total_question,
    COUNT(CASE WHEN eqs.answer = se.answer THEN 1 END) as correct_answer,
	COUNT(CASE WHEN eqs.answer != se.answer THEN 1 END) as wrong_answer,
    dense_rank() 
OVER ( partition by subjects order by mark desc ) 
AS 'dense_rank' 
    
    
    
FROM
    exam_question_setup AS eqs
        LEFT JOIN
    submit_exam AS se ON se.title_id = eqs.title_id
WHERE
    se.title_id = 8
    exam_question_setup AS eqs
        LEFT JOIN
    submit_exam AS se ON se.title_id = eqs.title_id
   where
    se.title_id = 8 
