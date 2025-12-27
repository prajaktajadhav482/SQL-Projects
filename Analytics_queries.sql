-- SQL Analytics Queries
-- Daily Active Users(DAU)
SELECT 
    DATE(session_start) AS day,
    COUNT(DISTINCT user_id) AS daily_active_users
FROM sessions
GROUP BY DATE(session_start)
ORDER BY day;

-- Bounce Rate (1 page view in session)
SELECT 
    COUNT(CASE WHEN pv.page_count = 1 THEN 1 END) / COUNT(*) * 100 AS bounce_rate_percent
FROM (
    SELECT session_id, COUNT(*) AS page_count
    FROM page_views
    GROUP BY session_id
) pv;

-- Average Session Duration
SELECT 
    AVG(TIMESTAMPDIFF(SECOND, session_start, session_end)) AS avg_duration_seconds
FROM sessions;

-- Top Landing Pages
SELECT 
    landing_page,
    COUNT(*) AS visits
FROM sessions
GROUP BY landing_page
ORDER BY visits DESC;

-- Pages per Session
SELECT 
    pv.session_id,
    COUNT(*) AS pages_viewed
FROM page_views pv
GROUP BY pv.session_id;

-- Users by Country
SELECT 
    user_country,
    COUNT(*) AS users
FROM users
GROUP BY user_country;

-- Device Type Usage 
SELECT user_device, COUNT(*) AS count
FROM users
GROUP BY user_device;

-- Session longer than 5 min (here 5 mins= 300 secs)
SELECT 
    session_id,
    TIMESTAMPDIFF(SECOND, session_start, session_end) AS duration
FROM sessions
WHERE TIMESTAMPDIFF(SECOND, session_start, session_end) > 300;

-- Trafic Trend(Total session per day)
SELECT 
    DATE(session_start) AS date,
    COUNT(*) AS total_sessions
FROM sessions
GROUP BY DATE(session_start);

-- Conversion Funnel 
SELECT 
    SUM(page_url LIKE '%products%') AS product_views,
    SUM(page_url LIKE '%checkout%') AS checkout_views
FROM page_views;
