CREATE DATABASE seo_web_analytics;
USE seo_web_analytics;

-- User table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_country VARCHAR(50),
    user_device VARCHAR(50)
);

--  Session Table
CREATE TABLE sessions (
    session_id INT PRIMARY KEY,
    user_id INT,
    session_start DATETIME,
    session_end DATETIME,
    landing_page VARCHAR(255),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Page view Table
CREATE TABLE page_views (
    pv_id INT PRIMARY KEY,
    session_id INT,
    page_url VARCHAR(255),
    view_time DATETIME,
    CONSTRAINT fk_session FOREIGN KEY (session_id) REFERENCES sessions(session_id)
);



