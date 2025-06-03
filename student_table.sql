-- Create the Students Table --


CREATE TABLE Students (
    STU_NUM CHAR(6) PRIMARY KEY,
    STU_SNAME VARCHAR(15),
    STU_FNAME VARCHAR(15),
    STU_INITIAL CHAR(1),
    STU_STARTDATE DATE,
    COURSE_CODE CHAR(3),
    PROJ_NUM INT
);


-- Inserting rows of data --  


INSERT INTO Students (STU_NUM, STU_SNAME, STU_FNAME, STU_INITIAL, STU_STARTDATE, COURSE_CODE, PROJ_NUM)
VALUES ('01', 'Snow', 'Jon', 'E', '2014-04-05', '201', 6),
       ('02', 'Stark', 'Arya', 'C', '2017-07-12', '305', 11),
       ('03', 'Lannister', 'Jamie', 'C', '2012-09-05', '101', 2),
       ('04', 'Lannister', 'Cercei', 'J', '2012-09-05', '101', 2),
       ('05', 'Greyjoy', 'Theon', 'I', '2015-12-09', '402', 14),
       ('06', 'Tyrell', 'Margaery', 'Y', '2017-07-12', '305', 10),
       ('07', 'Baratheon', 'Tommen', 'R', '2019-06-13', '201', 5);


-- Return all records which have a COURSE_CODE of 305 --


SELECT * FROM Students
WHERE COURSE_CODE = '305';


-- Change COURSE_CODE to 304 for the person number 07 --


UPDATE Students
SET COURSE_CODE = '304'
WHERE STU_NUM = '07';


-- Delete the row of the person named Jamie Lannister --


DELETE FROM Students
WHERE STU_SNAME = 'Lannister'
  AND STU_FNAME = 'Jamie'
  AND STU_STARTDATE = '2012-09-05'
  AND COURSE_CODE = '101'
  AND PROJ_NUM = 2;


-- Change the PROJ_NUM to 14 for those students who started before 01/01/2016 and COURSE_CODE is at least 201 --


UPDATE Students
SET PROJ_NUM = 14
WHERE STU_STARTDATE < '2016-01-01'
  AND COURSE_CODE >= '201';


-- Delete the Students table entirely --


DROP TABLE Students;

