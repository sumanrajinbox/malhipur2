SELECT 
    eq.question,
    CASE
        WHEN se.answer = 1 THEN eq.option1
        WHEN se.answer = 2 THEN eq.option2
        WHEN se.answer = 3 THEN eq.option3
        WHEN se.answer = 4 THEN eq.option4
    END AS your_answer,
    CASE
        WHEN eq.answer = 1 THEN eq.option1
        WHEN eq.answer = 2 THEN eq.option2
        WHEN eq.answer = 3 THEN eq.option3
        WHEN eq.answer = 4 THEN eq.option4
    END AS correct_answer
FROM
    submit_exam AS se
        LEFT JOIN
    exam_question_setup AS eq ON eq.id = se.question_id
WHERE
    se.user_id = 3 AND se.title_id = 1