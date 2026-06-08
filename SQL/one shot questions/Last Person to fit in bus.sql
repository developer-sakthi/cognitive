-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/

SELECT person_name from 
(
    SELECT person_name, 
    SUM(weight) OVER(ORDER BY turn) as cummulative_weight
    FROM Queue
) t 
WHERE cummulative_weight<=1000
ORDER BY cummulative_weight DESC
LIMIT 1;