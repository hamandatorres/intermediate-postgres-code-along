1. SELECT * FROM invoice_line 
WHERE unit_price > 0.99;

2. SELECT invoice_date, total 
FROM invoice;
SELECT first_name, last_name 
FROM
customer;

3. SELECT c.first_name, c.last_name, 
e.first_name, e.last_name
from customer c
join employee e 
ON
c.support_rep_id = e.employee_id;

4. SELECT a.name, al.title
from album al
join artist a
ON
al.album_id = a.artist_id;

5. SELECT pt.playlist_track_id FROM 
playlist_track pt 
JOIN playlist p
ON
pt.playlist_id = p.playlist_id
WHERE p.name LIKE 'Music';

6. SELECT pt.playlist_track_id FROM 
playlist_track pt 
JOIN playlist p
ON
pt.playlist_id = p.playlist_id
WHERE p.name LIKE 'Music';

7. SELECT t.name, p.name
FROM track t
JOIN
playlist_track pt
ON 
t.track_id = pt.track_id
JOIN playlist p 
ON
pt.playlist_id = p.playlist_id;

8. SELECT t.name, a.title
FROM album a
JOIN track t
ON
t.album_id = a.album_id
JOIN genre g
ON 
t.genre_id = g.genre_id
WHERE g.name LIKE ('Alternative & Punk')

9. SELECT * 
FROM invoice
WHERE invoice_id
IN (
  SELECT invoice_id
  FROM invoice_line
  WHERE unit_price > 0.99);
  

10. SELECT * 
FROM playlist_track
WHERE playlist_id
IN (
  SELECT playlist_id
  FROM playlist
  WHERE name = 'Music');

11.SELECT name
FROM track
WHERE track_id IN (
  SELECT track_id
  FROM playlist_track
  WHERE playlist_id = 5);

12.SELECT *
FROM track
WHERE genre_id
IN (
  SELECT genre_id
  FROM genre
  WHERE name = 'Comedy');
13. SELECT *
FROM track
WHERE album_id
IN (
  SELECT album_id
  FROM album
  WHERE title = 'Fireball');

14. SELECT *
FROM track
WHERE album_id
In (
  SELECT album_id
  FROM album
  WHERE artist_id
  IN (
    SELECT artist_id
    FROM artist
    WHERE name = 'Queen'));

15. UPDATE customer
SET fax = null;

16.UPDATE customer
SET company = 'Self'
WHERE company IS null;

17. UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia',
last_name = 'Barnett';

18. UPDATE customer
SET support_rep_id = 4
WHERE email LIKE 'luisrojas@yahoo.cl';

19. UPDATE track
SET composer = 'The darkness around'
WHERE genre_id
IN (
  SELECT genre_id
  FROM genre 
  WHERE name = 'Metal')
 AND composer IS null;

 20.SELECT genre_id, name
FROM genre
GROUP BY genre_id;

21.SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;
 
22.SELECT COUNT(*),  ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id
GROUP BY ar.name;

23. SELECT DISTINCT composer
FROM track;

24.SELECT DISTINCT billing_postal_code
FROM invoice;

25. SELECT DISTINCT company
FROM customer;

26. DELETE FROM practice_delete 
WHERE type = 'bronze';

27. DELETE FROM practice_delete 
WHERE type = 'silver';

28.DELETE FROM practice_delete 
WHERE value = 150;


