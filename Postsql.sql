-- Users Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role VARCHAR(50) -- 'Employee', 'Manager', or 'Admin'
);

-- Software Table
CREATE TABLE software (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    access_levels VARCHAR(255) -- Comma-separated values: 'Read,Write,Admin'
);

-- Requests Table
CREATE TABLE requests (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    software_id INT REFERENCES software(id),
    access_type VARCHAR(50), -- 'Read', 'Write', 'Admin'
    reason TEXT,
    status VARCHAR(50) -- 'Pending', 'Approved', 'Rejected'
);
