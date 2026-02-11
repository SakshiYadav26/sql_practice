-- Product Purchase Analysis
-- SQL
-- Junior
-- Table: purchase_records
-- +------------------+-------+
-- | Column Name      | Type  |
-- +------------------+-------+
-- | purchase_id      | int   |
-- | item_id          | int   |
-- | purchase_year    | int   |
-- | units_sold       | int   |
-- | unit_price       | int   |
-- +------------------+-------+
-- (purchase_id, purchase_year) is the primary key (combination of columns with unique values) for this table.
-- item_id is a foreign key (reference column) to the items table.
-- Each row contains details of a purchase for an item in a specific year.
-- Note that the unit_price is per unit.
  
-- Table: items
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | item_id     | int     |
-- | item_name   | varchar |
-- +-------------+---------+
-- item_id is the primary key (column with unique values) for this table.
-- Each row contains the item name for each item.
-- Write a solution to report the item_name, purchase_year, and unit_price for each purchase_id in the purchase_records table.
-- Return the resulting table in any order.
-- Example 1:
-- Input:
-- purchase_records table
-- +-------------+---------+---------------+------------+------------+
-- | purchase_id | item_id | purchase_year | units_sold | unit_price |
-- +-------------+---------+---------------+------------+------------+
-- | 1           | 10      | 2020          | 5          | 3000       |
-- | 2           | 10      | 2021          | 8          | 3000       |
-- | 3           | 20      | 2022          | 12         | 7000       |
-- +-------------+---------+---------------+------------+------------+
  
-- items table
-- +---------+-------------+
-- | item_id | item_name   |
-- +---------+-------------+
-- | 10      | Laptop      |
-- | 20      | Smartphone  |
-- | 30      | Tablet      |
-- +---------+-------------+
  
-- Output:
-- +-------------+---------------+------------+
-- | item_name   | purchase_year | unit_price |
-- +-------------+---------------+------------+
-- | Laptop      | 2020          | 3000       |
-- | Laptop      | 2021          | 3000       |
-- | Smartphone  | 2022          | 7000       |
-- +-------------+---------------+------------+
  
-- Explanation:
-- From purchase_id = 1, Laptop was purchased for 3000 per unit in 2020.
-- From purchase_id = 2, Laptop was purchased for 3000 per unit in 2021.
-- From purchase_id = 3, Smartphone was purchased for 7000 per unit in 2022.


elect i.item_name,p.purchase_year,p.unit_price from purchase_records p LEFT JOIN items i ON p.item_id=i.item_id;
