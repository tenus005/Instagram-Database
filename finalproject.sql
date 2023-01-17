CREATE DATABASE instagram_workspace;

USE instagram_workspace;

CREATE TABLE User_Profile
	(UserID VARCHAR(30) PRIMARY KEY,
    Posts INT (5000),
    Bio VARCHAR (500));
    

CREATE TABLE Stories
	(StoryID INTEGER PRIMARY KEY,
    Likes_S INT,
    ViewCount INT);
    

CREATE TABLE Story_Archive
	(SArchiveID INTEGER PRIMARY KEY,
    StoryID INT,
    UserID VARCHAR(30),
    SDateArchived DATE,
    SLocationofArchivedPost CHAR(20),
    CONSTRAINT StoryArchive_FK FOREIGN KEY (UserID) REFERENCES User_Profile(UserID),
	CONSTRAINT StoryArchive_FK2 FOREIGN KEY (StoryID) REFERENCES Stories(StoryID));

CREATE TABLE Pictures
	(PictureID INTEGER PRIMARY KEY,
    Likes_P INT,
    Comments VARCHAR(2200));

    
CREATE TABLE Pictures_Archive
	(PArchiveID INTEGER PRIMARY KEY,
    PictureID INT,
    UserID VARCHAR(30),
    PDateArchived DATE,
    PLocationofArchivedPost CHAR(20),
    CONSTRAINT PicturesArchive_FK FOREIGN KEY (UserID) REFERENCES User_Profile(UserID),
	CONSTRAINT PicturesArchive_FK2 FOREIGN KEY (PictureID) REFERENCES Pictures(PictureID));
    
CREATE TABLE Notifcations
	(NotificationID INTEGER PRIMARY KEY,
    UserID VARCHAR(30),
    NotificationType CHAR(30),
    DateofNotification DATE,
    CONSTRAINT Notifications_FK FOREIGN KEY (UserID) REFERENCES User_Profile(UserID));

CREATE TABLE Messages
	(MessageID INTEGER PRIMARY KEY,
    UserID VARCHAR(30),
    DateOfMessage DATE,
    MessageStatus CHAR(9),
    CONSTRAINT Messages_FK FOREIGN KEY (UserID) REFERENCES User_Profile(UserID));
    
INSERT INTO User_Profile VALUES ('leslieisthename', '20', 'Life is short smile more'); 
INSERT INTO User_Profile VALUES ('jacobibewylin', '15', '|GSU|24|Fitness|');
INSERT INTO User_Profile VALUES ('mistertwotimes', '2', 'Actor/Rapper/Singer/Producer');
INSERT INTO User_Profile VALUES ('racecarjeff', '18', 'BMW M4');
INSERT INTO User_Profile VALUES ('wealthbuilder', '27', 'Invest more, spend less');
INSERT INTO User_Profile VALUES ('liluziburp', '82', 'main page @liluzivert');
INSERT INTO User_Profile VALUES ('sirsavagethe21st', '5', 'Be true to yourself.');
INSERT INTO User_Profile VALUES ('jerrydahmer', '54', 'Stop and smell the flowers.');
INSERT INTO User_Profile VALUES ('rich_ricardo', '4', 'Time is precious—waste it wisely.');
INSERT INTO User_Profile VALUES ('ryan.seagram', '0', 'Don’t be afraid to shine.');
INSERT INTO User_Profile VALUES ('elvisrodrig', '12', 'Not all those who wander are lost');
INSERT INTO User_Profile VALUES ('travissnott', '34', 'Be yourself fam');
INSERT INTO User_Profile VALUES ('jamesthekidd', '5', 'The name is james');
INSERT INTO User_Profile VALUES ('richard.benson15', '10', 'WHS 15 | Football WR');
INSERT INTO User_Profile VALUES ('sneakerplug404', '60', 'buy-sell-trade | Atlanta |Good prices| ');
INSERT INTO User_Profile VALUES ('rxchardwilson', '42', 'Making History.');
INSERT INTO User_Profile VALUES ('real.mayo', '11', 'It always seems impossible until it’s done.');
INSERT INTO User_Profile VALUES ('_josehernandez_', '4', 'ATL');
INSERT INTO User_Profile VALUES ('bryangarcia_', '5', 'Life is short smile more');
INSERT INTO User_Profile VALUES ('poblanopablo', '8', 'For the outdoor enthusiast, #getoutdoors');
INSERT INTO User_Profile VALUES ('balenciaga.benny', '19', 'Fashion | Lifestyle | Fitness');

INSERT INTO Stories VALUES ('4081', '59', '20'); 
INSERT INTO Stories VALUES ('5494', '42', '34'); 
INSERT INTO Stories VALUES ('9108', '64', '500'); 
INSERT INTO Stories VALUES ('4238', '33', '675'); 
INSERT INTO Stories VALUES ('6772', '41', '574'); 
INSERT INTO Stories VALUES ('9437', '87', '22'); 
INSERT INTO Stories VALUES ('9520', '36', '89'); 
INSERT INTO Stories VALUES ('5030', '23', '72'); 
INSERT INTO Stories VALUES ('2557', '42', '35'); 
INSERT INTO Stories VALUES ('0739', '16', '85'); 
INSERT INTO Stories VALUES ('3434', '6', '48'); 
INSERT INTO Stories VALUES ('4666', '82', '96'); 
INSERT INTO Stories VALUES ('2802', '71', '89'); 
INSERT INTO Stories VALUES ('7538', '66', '100'); 
INSERT INTO Stories VALUES ('6106', '13', '20'); 
INSERT INTO Stories VALUES ('2381', '36', '50'); 
INSERT INTO Stories VALUES ('2326', '11', '70'); 
INSERT INTO Stories VALUES ('2327', '28', '235'); 
INSERT INTO Stories VALUES ('6723', '14', '68'); 
INSERT INTO Stories VALUES ('0938', '2', '97'); 
INSERT INTO Stories VALUES ('0932', '15', '54'); 

INSERT INTO Story_Archive VALUES ('0265', '4081', 'leslieisthename','2017-05-05','Archived');
INSERT INTO Story_Archive VALUES ('0284', '5494', 'jacobibewylin','2017-05-31','Archived');
INSERT INTO Story_Archive VALUES ('1264', '4238', 'mistertwotimes','2017-06-14','Archived');
INSERT INTO Story_Archive VALUES ('2987', '6772', 'racecarjeff','2022-08-11','Archived');
INSERT INTO Story_Archive VALUES ('5609', '9437', 'wealthbuilder','2018-04-06','Archived');
INSERT INTO Story_Archive VALUES ('7860', '9520', 'liluziburp','2021-04-26','Archived');
INSERT INTO Story_Archive VALUES ('6745', '5030', 'sirsavagethe21st','2021-03-22','Archived');
INSERT INTO Story_Archive VALUES ('7854', '2557', 'jerrydahmer','2021-07-26','Archived');
INSERT INTO Story_Archive VALUES ('8796', '0739', 'rich_ricardo','2017-08-02','Archived');
INSERT INTO Story_Archive VALUES ('5643', '3434', 'ryan.seagram','2020-02-11','Archived');
INSERT INTO Story_Archive VALUES ('5634', '4666', 'elvisrodrig','2020-03-17','Archived');
INSERT INTO Story_Archive VALUES ('9806', '2802', 'travissnott','2021-08-05','Archived');
INSERT INTO Story_Archive VALUES ('4508', '7538', 'jamesthekidd','2018-04-20','Archived');
INSERT INTO Story_Archive VALUES ('2695', '6106', 'richard.benson15','2020-04-28','Archived');
INSERT INTO Story_Archive VALUES ('9845', '2381', 'sneakerplug404','2018-10-15','Archived');
INSERT INTO Story_Archive VALUES ('6721', '2381', 'rxchardwilson','2021-08-20','Archived');
INSERT INTO Story_Archive VALUES ('7834', '2327', 'real.mayo','2018-06-27','Archived');
INSERT INTO Story_Archive VALUES ('3595', '6773', '_josehernandez_','2018-04-20','Archived');
INSERT INTO Story_Archive VALUES ('6753', '6723', 'bryangarcia_','2022-08-11','Archived');
INSERT INTO Story_Archive VALUES ('7684', '0938', 'poblanopablo','2022-07-26','Archived');
INSERT INTO Story_Archive VALUES ('7421', '0932', 'balenciaga.benny','2022-01-12','Archived');

UPDATE User_Profile
SET UserID = 'jose_p' WHERE UserID = '_josehernandez_';

SELECT * FROM User_Profile
WHERE Posts = 8; 


DELETE FROM User_Profile
WHERE UserID = 'balecniaga.benny';

SELECT StoryID FROM Story_Archive
WHERE SDateArchived IN
(SELECT DISTINCT StoryID FROM Stories
WHERE Likes_S <= 20);


SELECT User_Profile.UserID, Story_Archive.UserID, Posts, StoryID 
FROM User_Profile, Story_Archive
WHERE User_Profile.UserID = Story_Archive.UserID;

SELECT SDateArchived
FROM Story_Archive
WHERE Story_Archive.UserID =
(SELECT User_Profile.UsererID
FROM User_Profile
WHERE UserID = 'leslieisthename');


