CREATE DATABASE hostel_db;
USE hostel_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    course VARCHAR(50)
);

CREATE TABLE hostels (
    hostel_id INT PRIMARY KEY AUTO_INCREMENT,
    hostel_name VARCHAR(100),
    total_rooms INT
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hostel_id INT,
    room_number INT,
    capacity INT,
    occupied INT DEFAULT 0,
    FOREIGN KEY (hostel_id) REFERENCES hostels(hostel_id)
);

CREATE TABLE allotments (
    allotment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    room_id INT,
    allotment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE messages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    sender VARCHAR(50),
    receiver_id INT,
    message TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
