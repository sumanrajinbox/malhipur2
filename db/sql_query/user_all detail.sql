CREATE OR REPLACE VIEW user_subscription AS SELECT
    u.id AS user_id,
    u.email,
    IFNULL(m.monthName, "____") AS month,
    IFNULL(class.name, "____") AS class,
    IF(cd.paid <> 1, "unpaid", "paid") AS subscription,
    a.auth_key AS auth_key,
    IF(a.active > 0, "online", "____") AS online_status
FROM
    users AS u
LEFT JOIN course_details AS cd
ON
    cd.user_id = u.id
LEFT JOIN month AS m
ON
    m.id = cd.month_id
LEFT JOIN class AS class
ON
    class.id = cd.class_id
LEFT JOIN auth AS a
ON
    a.user_id = u.id
ORDER BY
    u.email