/*
Regional and global sales for each genre
*/
SELECT "Genre", SUM("NA_Sales") AS "NA Sales", SUM("EU_Sales") AS "EU Sales", SUM("JP_Sales") AS "JP Sales", SUM("Other_Sales") AS "Other Sales", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
GROUP BY "Genre"
ORDER BY SUM("Global_Sales") DESC;

/*
Top 10 video games by regional and global sales
*/
SELECT "Name", "NA_Sales", "EU_Sales", "JP_Sales", "Other_Sales" "Global_Sales" FROM public."Video Game Sales"
ORDER BY "Global_Sales" DESC
LIMIT 10;

/*
Regional and global sales for each Platform
*/
SELECT "Platform", SUM("NA_Sales") AS "NA Sales", SUM("EU_Sales") AS "EU Sales", SUM("JP_Sales") AS "JP Sales", SUM("Other_Sales") AS "Other Sales", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
GROUP BY "Platform"
ORDER BY SUM("Global_Sales") DESC;

/*
Regional and global sales for top 50 publishers
*/
SELECT "Publisher", SUM("NA_Sales") AS "NA Sales", SUM("EU_Sales") AS "EU Sales", SUM("JP_Sales") AS "JP Sales", SUM("Other_Sales") AS "Other Sales", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
GROUP BY "Publisher"
ORDER BY SUM("Global_Sales") DESC
LIMIT 50;

/*
Regional and global sales for each Year
*/
SELECT "Year", SUM("NA_Sales") AS "NA Sales", SUM("EU_Sales") AS "EU Sales", SUM("JP_Sales") AS "JP Sales", SUM("Other_Sales") AS "Other Sales", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Year" IS NOT NULL
GROUP BY "Year"
ORDER BY "Year" ASC;

/*
Global sales for top 3 genres
*/
SELECT "Name", "Genre", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Genre" = 'Action'
GROUP BY "Name", "Genre"
ORDER BY SUM("Global_Sales") DESC
LIMIT 10;

SELECT "Name", "Genre", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Genre" = 'Sports'
GROUP BY "Name", "Genre"
ORDER BY SUM("Global_Sales") DESC
LIMIT 10;

SELECT "Name", "Genre", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Genre" = 'Shooter'
GROUP BY "Name", "Genre"
ORDER BY SUM("Global_Sales") DESC
LIMIT 10;

/*
Global sales for top 3 platforms
*/
SELECT "Name", "Platform", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Platform" = 'PS2'
GROUP BY "Name", "Platform"
ORDER BY SUM("Global_Sales") DESC
LIMIT 10;

SELECT "Name", "Platform", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Platform" = 'X360'
GROUP BY "Name", "Platform"
ORDER BY SUM("Global_Sales") DESC
LIMIT 10;

SELECT "Name", "Platform", SUM("Global_Sales") AS "Global Sales" FROM public."Video Game Sales"
WHERE "Platform" = 'PS3'
GROUP BY "Name", "Platform"
ORDER BY SUM("Global_Sales") DESC
LIMIT 10;

