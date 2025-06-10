SELECT * FROM names;
--1. How many rows are in the names table?

SELECT *
FROM names;
--ANS 1957046

--2. How many total registered people appear in the dataset?

SELECT COUNT(num_registered) AS total_registered_people
FROM names;
--ANS 1957046

--3. Which name had the most appearances in a single year in the dataset?

SELECT	year
	   , name
	   , COUNT(name)
FROM names
GROUP BY year,name
HAVING COUNT(name)>1
ORDER BY COUNT(name) DESC;

--4. What range of years are included?

SELECT	MIN(year) AS start_year
	   ,MAX(year) AS end_year
	   ,MAX(year )- MIN(year) AS year_range
FROM names;
/*ANS
"start_year"	"end_year"	"year_range"
1880	2018	138
*/

--5. What year has the largest number of registrations?

SELECT 	year
	   ,COUNT(num_registered) AS max_registrations
FROM names
GROUP BY year
ORDER BY max_registrations DESC
LIMIT 1;
/* ANS
"year"	"max_registrations"
2008	35079
*/