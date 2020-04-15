SELECT 
    result.user_id,
    CONCAT(p.first_name, ' ', p.last_name) AS full_name,
    u.email,
    result.rank,
    etm.title_name AS exam_title_name
FROM
    (SELECT 
        *,
            IF(correct = @last, @curRank:=@curRank, @curRank:=@_sequence) AS rank,
            @_sequence:=@_sequence + 1,
            @last:=correct
    FROM
        student_result, (SELECT @curRank:=1, @_sequence:=1, @last:=0) AS r
    ORDER BY id ASC) AS result
        LEFT JOIN
    users AS u ON u.id = result.user_id
        LEFT JOIN
    profile AS p ON p.user_id = result.user_id
        LEFT JOIN
    exam_title_master AS etm ON etm.id = result.title_id
WHERE
    result.user_id = 2
        AND result.title_id = 8