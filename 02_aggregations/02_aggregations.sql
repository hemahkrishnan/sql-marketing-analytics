-- NOTE: Run this in your Mac terminal to open the database (not a SQL command)
-- sqlite3 -header -column ~/Downloads/campaigns.db

-- Challenge 1a: Count all campaigns in the table
SELECT COUNT(campaign_name)
FROM campaigns;

-- Challenge 1b: Count all campaigns using an alias
SELECT COUNT(campaign_name) AS "Total Number of Campaigns"
FROM campaigns;

-- Challenge 2: Calculate total spend across all campaigns
SELECT
SUM(spend) AS "Total Spend"
FROM campaigns;

-- Challenge 3: Calculate the average spend across all campaigns, aliased as Average Spend. 🎯
SELECT
AVG(spend) AS "Average Spend"
FROM campaigns;

-- ROUND: Use Round to display the output with decimals.
-- NOTE: ROUND works correctly but SQLite drops trailing zeros in display
-- In Snowflake and other SQL tools this will display as 14700.00 and 2940.00
SELECT
ROUND(SUM(spend), 2) AS "Total Spend"
FROM campaigns;

SELECT
ROUND(AVG(spend), 2) AS "Average Spend"
FROM campaigns;

-- Challenge 4: Find highest and lowest spend in one query
SELECT
MAX(spend) AS "Highest Spend",
MIN(spend) AS "Lowest Spend"
FROM campaigns;

-- Challenge 5: Total spend per channel using GROUP BY
SELECT
channel AS "Channel",
SUM(spend) AS "Total Spend"
FROM campaigns
GROUP BY channel;

-- Challenge 5b: Cost per conversion by channel, ordered by most expensive
SELECT
channel AS "Channel",
SUM(spend) AS "Total Spend",
SUM(conversions) AS "Total Conversions",
ROUND((SUM(spend)/SUM(conversions)), 2) AS "Cost per Conversion"
FROM campaigns
GROUP BY channel
ORDER BY SUM(spend)/SUM(conversions) DESC;

-- 




