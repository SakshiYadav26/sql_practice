-- Daily Temperature Increase
-- SQL
-- Junior
-- Table: daily_weather
-- +------------------+---------+
-- | Column Name      | Type    |
-- +------------------+---------+
-- | record_id        | int     |
-- | measure_date     | date    |
-- | temp_celsius     | int     |
-- +------------------+---------+
-- record_id is the column with unique values for this table.
-- There are no duplicate rows with the same measure_date.
-- This table contains information about the temperature recorded on a specific day.
-- Write a solution to find all record_id's where the temperature was higher than the previous day's temperature.
-- The result can be returned in any order.
-- Example 1:
-- Input:
-- daily_weather table
-- +-----------+--------------+--------------+
-- | record_id | measure_date | temp_celsius |
-- +-----------+--------------+--------------+
-- | 1         | 2023-06-01   | 15           |
-- | 2         | 2023-06-02   | 22           |
-- | 3         | 2023-06-03   | 18           |
-- | 4         | 2023-06-04   | 25           |
-- | 5         | 2023-06-05   | 20           |
-- +-----------+--------------+--------------+
  
-- Output:
-- +-----------+
-- | record_id |
-- +-----------+
-- | 2         |
-- | 4         |
-- +-----------+
  
-- Explanation:
-- On 2023-06-02, the temperature increased from 15°C to 22°C, so record_id 2 is included.
-- On 2023-06-03, the temperature decreased from 22°C to 18°C, so record_id 3 is not included.
-- On 2023-06-04, the temperature increased from 18°C to 25°C, so record_id 4 is included.
-- On 2023-06-05, the temperature decreased from 25°C to 20°C, so record_id 5 is not included.



select w1.record_id from daily_weather w1 JOIN daily_weather w2 on 
w1.measure_date = DATE_ADD(w2.measure_date, INTERVAL 1 DAY)
where w1.temp_celsius > w2.temp_celsius;

