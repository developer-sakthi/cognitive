-- https://leetcode.com/problems/department-top-three-salaries/description

SELECT Department, Employee, Salary
FROM (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (
            PARTITION BY d.name
            ORDER BY e.salary DESC
        ) AS salaryRank
    FROM Department d
    JOIN Employee e
        ON d.id = e.departmentId
) RankedSalaries
WHERE salaryRank <= 3;