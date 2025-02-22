-- Assessment Test 2
--Q1
SELECT * FROM cd.facilities;

--Q2
SELECT facilities.name,membercost FROM cd.facilities;

--Q3
SELECT * FROM cd.facilities
WHERE membercost != 0;

--Q4
--SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities
--WHERE membercost < (SELECT monthlymaintenance*0.02 FROM cd.facilities);

-- Actual solution:
SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities
where membercost > 0 AND membercost < (monthlymaintenance/50);

--Q5
SELECT * FROM cd.facilities
WHERE name
LIKE '%Tennis%';

--Q6
SELECT * FROM cd.facilities
WHERE facid = 1 OR facid = 5;

--Or
SELECT * FROM cd.facilities
WHERE facid IN (1,5);

--Q7
SELECT memid,surname,firstname,joindate FROM cd.members
WHERE joindate > '2012-08-30';

--Q8
SELECT surname FROM cd.members
WHERE surname != 'GUEST'
ORDER BY surname ASC
LIMIT 10;

--Or
SELECT surname FROM cd.members
WHERE surname != 'GUEST'
ORDER BY surname
LIMIT 10;

--Q9
SELECT MAX(joindate) FROM cd.members;

--Q10
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

--Q11
--SELECT facid,COUNT(*) FROM cd.bookings
--WHERE sTarttime BETWEEN '2012-09-01' AND '2012-10-01'
--GROUP BY facid;

--Actual solution
SELECT facid,SUM(slots) FROM cd.bookings
WHERE starttime >= '2012-09-01' AND
starttime <= '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);

--Q12
SELECT facid AS facility_id,SUM(slots) AS sum_of_slots FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY SUM(SLOTS) DESC;

--Q13
--SELECT name,starttime FROM cd.facilities
--INNER JOIN cd.bookings
--ON cd.facilities.facid = cd.bookings.facid
--WHERE name LIKE '%Tennis%'
--GROUP BY name;

--Actual solution
SELECT cd.bookings.starttime,cd.facilities.name
FROM cd.facilities
INNER JOIN cd.bookings ON
cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.facid IN (0,1);
AND cd.bookings.starttime >= '2012-09-21'
AND cd.bookings.starttime < '2012-09-22'
ORDER BY cd.bookings.starttime;

--Q14
SELECT starttime FROM cd.bookings
INNER JOIN cd.members ON
bookings.memid = members.memid
WHERE members.firstname LIKE 'David' AND members.surname LIKE 'Farrell';
