USE cinema_booking_system;

-- 1. Which films are over 2 hours long?
SELECT name, length_min FROM films
WHERE length_min > 120;

-- 2. Which film had the most screenings in October 2017?
SELECT f.name, COUNT(s.film_id) AS showings FROM screenings s
JOIN films f ON f.id = s.film_id
GROUP BY s.film_id
ORDER BY showings DESC
LIMIT 1;

-- 3. How many bookings did the film 'Jigsaw' have in October 2017?
SELECT COUNT(*) AS no_bookings FROM bookings
WHERE screening_id IN
		(SELECT id FROM screenings
		WHERE film_id IN
				(SELECT id FROM films
        WHERE name = 'Jigsaw')
    );