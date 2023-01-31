USE cinema_booking_system;

-- 1. Which films are over 2 hours long?
SELECT name, length_min FROM films
WHERE length_min > 120;