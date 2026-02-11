-- Map Employee Codes to Unique Identifiers
-- SQL
-- Junior
-- Table: employee_info
-- +------------------+---------+
-- | Column Name      | Type    |
-- +------------------+---------+
-- | emp_code         | int     |
-- | emp_name         | varchar |
-- +------------------+---------+
-- emp_code is the primary key (column with unique values) for this table.
-- Each row contains the employee code and name of an employee in the organization.
  
-- Table: unique_identifiers
-- +-------------------+---------+
-- | Column Name       | Type    |
-- +-------------------+---------+
-- | emp_code          | int     |
-- | unique_identifier | int     |
-- +-------------------+---------+
-- (emp_code, unique_identifier) is the primary key (combination of columns with unique values) for this table.
-- Each row contains the employee code and the corresponding unique identifier of an employee.
-- Write a solution to display the unique identifier for each employee based on their employee code.
-- If an employee does not have a unique identifier, display null instead.
-- Example 1:
-- Input:
-- employee_info table
-- +----------+------------+
-- | emp_code | emp_name   |
-- +----------+------------+
-- | 101      | Sarah      |
-- | 205      | James      |
-- | 306      | Lisa       |
-- | 408      | Michael    |
-- | 512      | Emma       |
-- +----------+------------+
  
-- unique_identifiers table
-- +----------+-------------------+
-- | emp_code | unique_identifier |
-- +----------+-------------------+
-- | 306      | 1001              |
-- | 408      | 1002              |
-- | 512      | 1003              |
-- +----------+-------------------+
  
-- Output:
-- +-------------------+------------+
-- | unique_identifier | emp_name   |
-- +-------------------+------------+
-- | null              | Sarah      |
-- | null              | James      |
-- | 1001              | Lisa       |
-- | 1002              | Michael    |
-- | 1003              | Emma       |
-- +-------------------+------------+
  
-- Explanation:
-- Sarah and James do not have a unique identifier, so null is shown.
-- Lisa’s unique identifier is 1001.
-- Michael’s unique identifier is 1002.
-- Emma’s unique identifier is 1003.


select u.unique_identifier, e.emp_name from employee_info e LEFT JOIN unique_identifiers u ON e.emp_code=u.emp_code;
