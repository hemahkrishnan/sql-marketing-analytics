-- NOTE: Run this in your Mac terminal to open the database (not a SQL command)
sqlite3 -header -column ~/Downloads/campaigns.db

-- Challenge 1: Select all campaigns
SELECT *
FROM campaigns;

-- Challenge 2: Select specific columns
SELECT campaign_name, channel, spend
FROM campaigns;

-- Challenge 3: Filter by channel
SELECT *
FROM campaigns
WHERE channel = 'Paid Search';

-- Challenge 4: Filter by conversions
SELECT campaign_name, channel, conversions
FROM campaigns
WHERE conversions > 100;

-- Challenge 5: Sort by spend in descending order
SELECT campaign_name, channel, spend
FROM campaigns
ORDER BY spend DESC;

-- Challenge 6a: Top 3 campaigns with the highest spend
SELECT campaign_name, channel, spend
FROM campaigns
ORDER BY spend DESC
LIMIT 3;

-- Challenge 6b: Bottom 3 campaigns with the lowest spend
SELECT campaign_name, channel, spend
FROM campaigns
ORDER BY spend ASC
LIMIT 3;

-- Challenge 7: Renaming columns using aliases (AS)
SELECT
campaign_name AS "Campaign",
spend AS "Total Spend"
FROM campaigns;

-- Challenge 8: Renaming columns, displaying campaigns with over $2,000 spend in descending order
SELECT
campaign_name AS "Campaign",
channel AS "Channel",
spend AS "Total Spend"
FROM campaigns
WHERE spend > 2000
ORDER BY spend DESC;
