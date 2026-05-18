-- Marketing Campaigns Dataset
-- Foundation dataset for SQL learning project

CREATE TABLE IF NOT EXISTS campaigns (
    campaign_id INTEGER,
    campaign_name TEXT,
    channel TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    spend REAL
);

INSERT INTO campaigns VALUES
(1, 'Spring Sale', 'Paid Search', 50000, 2500, 150, 3000.00),
(2, 'Brand Awareness', 'Paid Social', 120000, 3600, 80, 5000.00),
(3, 'Email Blast', 'Email', 30000, 4500, 300, 500.00),
(4, 'Retargeting', 'Display', 80000, 1200, 95, 2000.00),
(5, 'Summer Push', 'Paid Search', 65000, 3100, 210, 4200.00);
