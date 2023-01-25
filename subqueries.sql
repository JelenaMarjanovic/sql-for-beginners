USE cinema_booking_system;

-- Non-correlated subquery
SELECT id, start_time FROM screenings
WHERE film_id IN
		(SELECT id FROM films
    WHERE length_min > 120)
;

-- Correlated subquery
SELECT screening_id, customer_id,
		(SELECT COUNT(seat_id) FROM reserved_seat
    WHERE booking_id = b.id)
FROM bookings b;