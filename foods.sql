-- Table: foods
-- +--------------+------+
-- | Column name  | Type |
-- +--------------+------+
-- | food_id      | int  |
-- | high_protein | text |
-- | low_carbs    | text | 
-- +--------------+------+
-- food_id is the primary key (column with unique values) for this table.
-- high_protein is an ENUM of type ('YES', 'NO') where 'YES' means this food is high in protein and 'NO' means it is not.
-- low_carbs is an ENUM of type ('YES', 'NO') where 'YES' means this food is low in carbs and 'NO' means it is not.
-- Return the food_id of all food items that are both high in protein and low in carbohydrates.
-- The result can be returned in any order.
-- Example 1:
-- Input:
-- foods table
-- +---------+--------------+-----------+
-- | food_id | high_protein | low_carbs |
-- +---------+--------------+-----------+
-- | 0       | YES          | YES       |
-- | 1       | NO           | YES       |
-- | 2       | YES          | NO        |
-- | 3       | YES          | YES       |
-- +---------+--------------+-----------+
-- Output:
-- +---------+
-- | food_id |
-- +---------+

-- solution


Select food_id from foods where high_protein='YES' and low_carbs='YES';

-- | 0       |
-- | 3       |
-- +---------+
-- Explanation: Only foods 0 and 3 are both high in protein and low in carbs.
