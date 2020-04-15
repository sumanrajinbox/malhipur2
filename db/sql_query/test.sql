SELECT 
    c.id AS chapter_id,
    c.class_id,
    c.chapter_name,
    cl.name
  
FROM
    chapter AS c
    left join class as cl on c.class_id = cl.id
WHERE
    c.subject_id = '".$subject_id."'