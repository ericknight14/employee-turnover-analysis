-- Turnover Analysis Queries

-- Overall turnover rate
SELECT 
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS TurnoverRate
FROM employee_data;

-- Turnover by department
SELECT Department, 
       COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS DeptTurnoverRate
FROM employee_data
GROUP BY Department;

-- Avg tenure of employees who left vs stayed
SELECT Attrition, AVG(TenureYears) AS AvgTenure
FROM employee_data
GROUP BY Attrition;
