use Netflix

--SELECT COUNT(*) FROM netflix_titles

--SELECT * FROM netflix_titles


--1 TASK FILMLERIN SAYI VE UNIK FILMLERIN SAYI

SELECT COUNT(TITLE) AS COUNT_OF_FILM FROM netflix_titles

SELECT COUNT(DISTINCT TITLE)  AS COUNT_DISTINCT_FILM FROM netflix_titles



--2 Kateqroiyalar uzrre rating siralamasi ve saylari 

SELECT type, rating, COUNT(*) count_of_movie from netflix_titles
GROUP BY type, rating
