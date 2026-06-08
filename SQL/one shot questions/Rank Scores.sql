-- https://leetcode.com/problems/rank-scores/description

SELECT 
score , DENSE_RANK() OVER (ORDER BY score desc ) as "rank"
from Scores;