SELECT * FROM rooms WHERE occupied < capacity;

SELECT s.name, r.room_number, h.hostel_name
FROM students s
JOIN allotments a ON s.student_id = a.student_id
JOIN rooms r ON a.room_id = r.room_id
JOIN hostels h ON r.hostel_id = h.hostel_id;

SELECT * FROM messages WHERE receiver_id = 1;
