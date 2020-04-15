select  CONCAT (p.first_name,' ',p.last_name) as full_user_name,u.email,etm.title_name,n.student_Rank from
(SELECT *, RANK() OVER (ORDER BY sr.correct) as student_Rank FROM student_result as sr) as n 
left join users as u on u.id = n.user_id  
left join exam_title_master as etm on etm.id = n.title_id  
left join profile as p on p.user_id = n.user_id  
where student_Rank IN(0,1,2,3,4,5,6,7,8,9,10) and n.status = 1 and n.user_id =1 and n.title_id = 1;