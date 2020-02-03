-- Practicing with SELECT 

SELECT * FROM Song;

SELECT Title, ArtistId FROM Song;

SELECT Title FROM Song WHERE ArtistId = 6;

SELECT Title, SongLength, ReleaseDate, ArtistId
FROM Song
WHERE ArtistId = 8 
AND SongLength < 200;

SELECT Title, SongLength, ReleaseDate, ArtistId
FROM Song
WHERE ArtistId = 8 
OR ArtistId = 6;

SELECT Title, SongLength, ReleaseDate, ArtistId
FROM Song
WHERE ArtistId = 8;



-- Practicing with INSERT

INSERT INTO Song 
VALUES (12, "Baby Shark", 689, "09-22-1896", 9, 3, 5);

-- Recommended way to insert
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Baby Squid", 799, "09/22/1896", 9, 3, 5);


UPDATE Song
SET Title = "Baby Tuna" 
WHERE SongId = 23;

DELETE FROM Song WHERE SongId = 12;

-- chapter 2 practice

-- Query all of the entries in the Genre table
SELECT * FROM Genre;


-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ("Michael Riddle", "1977");


-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ("The Reckoning", "11/26/2014", 2089, "iheart", 27, 13);


-- Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("Baby Salmon", 799, "09/22/1896", 9, 3, 23);


-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.




-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT(SongId), AlbumId 
FROM Song 
GROUP BY AlbumId;


-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT(SongId), ArtistId 
FROM Song 
GROUP BY ArtistId;


-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT COUNT(SongId), GenreId 
FROM Song 
GROUP BY GenreId;

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT Title, ReleaseDate, MAX(AlbumLength), Label, ArtistId, GenreId
FROM Album;


-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT Title, MAX(SongLength), AlbumId
FROM Song;

-- Modify the previous query to also display the title of the album.







-- CLASS PRACTICE

-- Returns data like:
-- songcount artistname
-- 10	ZZTop
-- 7	Black Flag
-- 4	Beatles
-- 4	Jay Z
SELECT COUNT() AS '# of Songs', artist.ArtistName 
FROM Song 
JOIN Artist 
ON song.ArtistId = artist.ArtistId
GROUP BY song.artistId;


-- returns column with entries like "The Black Album by Jay Z"
SELECT al.title || " by " || ar.artistname
FROM Album al 
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;

