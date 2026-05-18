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