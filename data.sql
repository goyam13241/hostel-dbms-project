INSERT INTO students (name, email, phone, course)
VALUES 
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'BTech'),
('Aman Verma', 'aman@gmail.com', '9876543211', 'BCA');

INSERT INTO hostels (hostel_name, total_rooms)
VALUES ('Boys Hostel A', 50);

INSERT INTO rooms (hostel_id, room_number, capacity)
VALUES 
(1, 101, 2),
(1, 102, 2);

INSERT INTO allotments (student_id, room_id, allotment_date)
VALUES 
(1, 1, CURDATE());

UPDATE rooms SET occupied = occupied + 1 WHERE room_id = 1;

INSERT INTO messages (sender, receiver_id, message)
VALUES 
('Admin', 1, 'Room allotted successfully');
