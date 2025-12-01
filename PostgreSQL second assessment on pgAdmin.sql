SELECT * FROM cd.facilities;

SELECT name,membercost FROM cd.facilities;

SELECT name FROM cd.facilities
WHERE membercost != 0;

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND
(membercost < ((1/50.0)*monthlymaintenance));
 
 SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities
 WHERE name LIKE ('%Tennis%');
 
 SELECT * FROM cd.facilities
 WHERE facid IN(1,5);
 
SELECT memid, surname, firstname, joindate FROM cd.members 
WHERE joindate >= '2012-09-01';

SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname ASC
LIMIT 10;

SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

SELECT MAX(joindate) AS latest_signup FROM cd.members;

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

SELECT facid, sum(slots) AS total_slots FROM cd.bookings 
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01' 
GROUP BY facid 
ORDER BY SUM(slots);

SELECT facid, SUM(slots) AS Total_slots FROM cd.bookings
GROUP BY facid
HAVING SUM(slots)>1000
ORDER BY facid;

SELECT cd.bookings.starttime AS start, cd.facilities.name 
AS name 
FROM cd.facilities 
INNER JOIN cd.bookings
ON cd.facilities.facid = cd.bookings.facid 
WHERE cd.facilities.name IN ('Tennis Court 1','Tennis Court 2') 
AND cd.bookings.starttime >= '2012-09-21' 
AND cd.bookings.starttime < '2012-09-22' 
ORDER BY cd.bookings.starttime;

SELECT firstname,surname,cd.bookings.starttime,cd.members.memid AS member_id FROM cd.bookings
INNER JOIN cd.members
ON cd.bookings.memid = cd.members.memid
WHERE firstname = 'David' AND surname = 'Farrell';

