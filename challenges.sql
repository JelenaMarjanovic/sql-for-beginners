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

-- 4. Which 5 customers made the most bookings in October 2017?
SELECT c.first_name, c.last_name, COUNT(b.id) AS no_bookings FROM bookings b
JOIN customers c ON c.id = b.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY no_bookings DESC
LIMIT 5;

-- 5. Which film was shown in the Chaplin room most often in October 2017?
SELECT f.name, COUNT(r.name) AS no_screenings FROM screenings s
JOIN films f ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.name = 'Chaplin'
GROUP BY f.name
ORDER BY no_screenings DESC
LIMIT 1;

-- 6. How many of the customers made a booking in October 2017?
SELECT COUNT(DISTINCT(customer_id)) AS num_of_customers FROM bookings;