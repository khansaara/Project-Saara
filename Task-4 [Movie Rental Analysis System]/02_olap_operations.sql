-- a) Drill Down: Rentals by genre to individual movie level
SELECT GENRE, MOVIE_ID, COUNT(*) AS Total_Rentals
FROM rental_data
GROUP BY GENRE, MOVIE_ID
ORDER BY GENRE, MOVIE_ID;

-- b) Rollup: Total rental fees by genre, then grand total
SELECT GENRE, SUM(RENTAL_FEE) AS Total_Fee
FROM rental_data
GROUP BY ROLLUP (GENRE);

-- c) Cube: Total rental fees across GENRE, RENTAL_DATE, CUSTOMER_ID
SELECT GENRE, RENTAL_DATE, CUSTOMER_ID, SUM(RENTAL_FEE) AS Total_Fee
FROM rental_data
GROUP BY CUBE (GENRE, RENTAL_DATE, CUSTOMER_ID)
ORDER BY GENRE NULLS LAST, RENTAL_DATE NULLS LAST, CUSTOMER_ID NULLS LAST;

-- d) Slice: Rentals from the ‘Action’ genre
SELECT * 
FROM rental_data 
WHERE GENRE = 'Action';

-- e) Dice: Rentals where GENRE is 'Action' or 'Drama' in the last 3 months
SELECT *
FROM rental_data
WHERE GENRE IN ('Action', 'Drama')
  AND RENTAL_DATE >= CURRENT_DATE - INTERVAL '3 months';