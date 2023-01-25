USE cinema_booking_system;

-- 1. Select the customer id and count the number of reserved
-- seats grouped by customer for October 2017.
SELECT customer_id, COUNT(rs.id) FROM reserved_seat rs
JOIN bookings b ON b.id = rs.booking_id
GROUP BY b.customer_id;

-- 2. Select the film name and count the number of screenings
-- for each film that is over 2 hours long
SELECT f.name, f.length_min, COUNT(s.id) FROM screenings s
JOIN films f ON f.id = s.film_id
GROUP BY f.name, f.length_min
HAVING f.length_min > 120;