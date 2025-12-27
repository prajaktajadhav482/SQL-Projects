-- Insert data in users
INSERT INTO users (user_id, user_country, user_device) VALUES
(1, 'India', 'Mobile'),
(2, 'USA', 'Desktop'),
(3, 'UK', 'Tablet'),
(4, 'India', 'Desktop'),
(5, 'Canada', 'Mobile');

-- Insert data in sessions
INSERT INTO sessions (session_id, user_id, session_start, session_end, landing_page) VALUES
(101, 1, '2024-11-01 10:00:00', '2024-11-01 10:05:00', '/home'),
(102, 1, '2024-11-01 18:00:00', '2024-11-01 18:10:00', '/products'),
(103, 2, '2024-11-01 12:00:00', '2024-11-01 12:00:50', '/home'),
(104, 3, '2024-11-02 09:30:00', '2024-11-02 09:50:00', '/blog'),
(105, 4, '2024-11-02 16:00:00', '2024-11-02 16:01:00', '/home'),
(106, 5, '2024-11-03 10:05:00', '2024-11-03 10:20:00', '/products');

-- Insert data in page_views
INSERT INTO page_views (pv_id, session_id, page_url, view_time) VALUES
(1, 101, '/home', '2024-11-01 10:00:10'),
(2, 101, '/about', '2024-11-01 10:02:00'),
(3, 102, '/products', '2024-11-01 18:00:10'),
(4, 103, '/home', '2024-11-01 12:00:10'),
(5, 104, '/blog', '2024-11-02 09:30:20'),
(6, 104, '/blog/article1', '2024-11-02 09:40:00'),
(7, 105, '/home', '2024-11-02 16:00:10'),
(8, 106, '/products', '2024-11-03 10:05:10'),
(9, 106, '/checkout', '2024-11-03 10:10:00');
