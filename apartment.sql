
DROP TABLE AccountDetails;
 CREATE TABLE AccountDetails(
  BSSN integer,
  AccountNumber  integer,
  AccountType  varchar(40),
  primary key (AccountNumber)
);

insert into AccountDetails values(432093120,2334412345,'Checking');
insert into AccountDetails values(432093121,2334412346,'Savings');
insert into AccountDetails values(432093122,2334412347,'Checking');
insert into AccountDetails values(432093123,2334412348,'Checking');
insert into AccountDetails values(432093124,2334412349,'Savings');

select * from AccountDetails;

DROP TABLE Pets;
 CREATE TABLE Pets(
  RSSN integer,
  Ptype  varchar(20),
  Age integer NOT NULL,
  PetName  varchar(40),
  primary key (RSSN,PetName)
);

insert into Pets values(432093120,'Dog',4,'scooby');
insert into Pets values(432093121,'Dog',6,'tuffy');
insert into Pets values(432093122,'Cat',7,'tommy');
insert into Pets values(432093123,'Dog',8,'gilbert');
insert into Pets values(432093123,'Dog',8,'simon');
insert into Pets values(432093124,'Cat',9,'gipsy');

select * from Pets;

DROP TABLE LeasingAgent;
 CREATE TABLE LeasingAgent(
  AgentID integer,
  AgentName varchar(40),
  Email  varchar(40) NOT NULL,
  pNumber  Integer NOT NULL,
  primary key (AgentID)
);

insert into LeasingAgent values(73,'jason','jason@gmail.com',1234556346);
insert into LeasingAgent values(20,'mark','mark@gmail.com',6356435345);
insert into LeasingAgent values(93,'ross','ross@gmail.com',5345354567);
insert into LeasingAgent values(09,'jeff','jeff@gmail.com',8465653222);
insert into LeasingAgent values(32,'ted','ted@gmail.com',9243325325);


select * from LeasingAgent;

DROP TABLE Resident;
CREATE TABLE Resident(
  SSN integer,
  ResidentName varchar(30),
  LAgentID integer,
  MboxNo integer,
  Salary integer,
  TotalPets integer DEFAULT 0,
  Profession varchar(40),
  Email  varchar(40) NOT NULL,
  pNumber  varchar(20) NOT NULL,
  primary key (SSN)
);

insert into Resident values(432093120,'Zoey',73,24,50000,DEFAULT,'Professor','Zoey@gmail.com',235325666);
insert into Resident values(432093127,'zack',73,24,60000,DEFAULT,'Professor','zack@gmail.com',235325766);
insert into Resident values(432093121,'Chandler',20,69,60000,DEFAULT,'Banker','Chandler@gmail.com',4664344534);
insert into Resident values(432093122,'Phoebe',93,10,40000,1,'Clerk','Phoebe@gmail.com',4776542754);
insert into Resident values(432093123,'Rachel',93,47,80000,2,'Manager','Rachel@gmail.com',8654374265);
insert into Resident values(432093124,'Monica',32,70,70000,1,'Analyst','Monica@gmail.com',6538542256);


insert into Resident values(43209345,'Monidog',32,70,70000,7,'Analyst','Monica@gmail.com',6538542256);


select * from Resident;

--delete from Resident where SSN='43209345';

DROP TABLE Stays;
 CREATE TABLE Stays(
  RSSN integer,
  RoomNo  integer,
  LeaseStartDate  Date NOT NULL,
  LeaseEndDate  Date NOT NULL,
  primary key (RSSN,RoomNo)
);

insert into Stays values(432093120,1524,'20-may-15','12-june-20');
insert into Stays values(432093120,1627,'11-oct-16','12-jul-20');
insert into Stays values(432093121,2226,'11-dec-17','12-feb-19');
insert into Stays values(432093123,403,'11-aug-17','12-sep-19');
insert into Stays values(432093124,003,'11-nov-18','12-oct-20');

insert into Stays values(432093124,1524,'11-nov-20','12-oct-18');






--delete from Stays where RSSN='432093124' and RoomNo=1524;


select * from Stays;

DROP TABLE Payment;
 CREATE TABLE Payment(
  RoomNo integer,
  RentAmount integer,
  DueDate Date NOT NULL,
  Rentpaid varchar(10) DEFAULT 'NO',
  primary key (RoomNo,RentAmount)
);

insert into Payment values(1524,1500,'11-dec-18',DEFAULT);
insert into Payment values(1627,1400,'11-dec-18','yes');
insert into Payment values(2226,1300,'11-dec-18',DEFAULT);
insert into Payment values(403,1800,'11-dec-18','yes');
insert into Payment values(003,1700,'11-dec-18',DEFAULT);
insert into payment values(104,1700,'19-oct-18',DEFAULT);
insert into payment values(6604,2700,'1-oct-18',DEFAULT);

select * from Payment where RentPaid='NO';

DROP TABLE Flat;
 CREATE TABLE Flat(
  RoomNo integer,
  TotalResidents integer DEFAULT 0,
  Area integer,
  primary key (RoomNo)
);

insert into Flat values(1524,4,1200);
insert into Flat values(1627,2,1400);
insert into Flat values(2226,3,1700);
insert into Flat values(403,5,1400);
insert into Flat values(003,6,2000);
insert into Flat values(004,DEFAULT,1000);
insert into Flat values(104,DEFAULT,1200);
insert into Flat values(6604,DEFAULT,1500);
insert into Flat values(1004,DEFAULT,1400);

select * from Flat;

DROP TABLE Amenities;
 CREATE TABLE Amenities(
  ARoomNo integer,
  Membership varchar(40) default 'silver',
  Price integer DEFAULT 50,
  primary key (ARoomNo,Membership)
);

insert into Amenities values(1524,'gold',100);
insert into Amenities values(1524,'platinum',150);
insert into Amenities values(403,default,40);
insert into Amenities values(1627,'silver',70);
insert into Amenities values(3,'platinum',40);
insert into Amenities values(4,'gold',70);


select * from Amenities;


DROP TABLE MailBox;
 CREATE TABLE MailBox(
  BoxNo integer,
  MLocation varchar(30),
  BSize varchar(20),
  primary key (BoxNo)
);

insert into MailBox values(10,'A-block','small');
insert into MailBox values(24,'A-block','medium');
insert into MailBox values(35,'B-block','large');
insert into MailBox values(47,'B-block','large');
insert into MailBox values(58,'C-block','small');
insert into MailBox values(69,'C-block','medium');
insert into MailBox values(70,'C-block','small');

select * from MailBox;

DROP TABLE ElectronicBox;
 CREATE TABLE ElectronicBox(
  EBoxNo integer,
  Code integer,
  primary key (EBoxNo)
);

insert into ElectronicBox values(10,1467);
insert into ElectronicBox values(35,4678);
insert into ElectronicBox values(58,0986);
insert into ElectronicBox values(70,4673);

select * from ElectronicBox;

DROP TABLE LetterBox;
 CREATE TABLE LetterBox(
  LBoxNo integer,
  KeyNo integer,
  primary key (LBoxNo)
);

insert into LetterBox values(24,1524);
insert into LetterBox values(47,403);
insert into LetterBox values(69,2226);

select * from LetterBox;

DROP TABLE  MaintenanceTeam;
 CREATE TABLE MaintenanceTeam(
  EId integer,
  MName varchar(30) NOT NULL,
  Age integer,
  EmailId varchar(40),
  primary key (EId)
);

insert into MaintenanceTeam values(1000,'Joe Root',28,'root@gmail.com');
insert into MaintenanceTeam values(1001,'Virat Kohli',30,'kohli@gmail.com');
insert into MaintenanceTeam values(1002,'Steven Smith',29,'ssmith@gmail.com');
insert into MaintenanceTeam values(1003,'Kane Williamson',29,'kw123@gmail.com');
insert into MaintenanceTeam values(1004,'AB Devilliers',34,'abd@gmail.com');
insert into MaintenanceTeam values(1005,'David Warner',33,'warnerd@gmail.com');

select * from MaintenanceTeam;

DROP TABLE Technician;
 CREATE TABLE Technician(
  TEId integer,
  TGrade varchar(20),
  primary key (TEId)
);


insert into Technician values(1000,'Intermediate');
insert into Technician values(1005,'Professional');

select * from Technician;

DROP TABLE Engineer;
 CREATE TABLE Engineer(
  EEId integer,
  Specilization varchar(20),
  primary key (EEId)
);

insert into Engineer values(1001,'Plumber');
insert into Engineer values(1002,'Carpenter');

select * from Engineer;

DROP TABLE Gardener;
 CREATE TABLE Gardener(
  GEId integer,
  Gtype varchar(10),
  primary key (GEId)
);

insert into Gardener values(1003,'watering');
insert into Gardener values(1004,'trimming');

select * from Gardener;

DROP TABLE Maintains;
 CREATE TABLE Maintains(
  RequestID integer,
  MEId integer,
  MSSN integer,
  MRoomNo integer,
  RequestDate Date DEFAULT (SYSDATE),
  Comments varchar(100),
  primary key (RequestID,MEId,MSSN,MRoomNo)
);


insert into Maintains values(1,1000,432093120,1524,DEFAULT,'Fan Not working');
insert into Maintains values(2,1001,432093123,403,'19-nov-18','Sink pipe broken');
insert into Maintains values(3,1002,432093120,1524,DEFAULT,'Wooden door broken');

select * from Maintains;



ALTER TABLE ElectronicBox ADD CONSTRAINT ak1 FOREIGN KEY(EBoxNo) REFERENCES MailBox(BoxNo) ON DELETE CASCADE;	
ALTER TABLE LetterBox ADD CONSTRAINT ak2 FOREIGN KEY(LBoxNo) REFERENCES MailBox(BoxNo) ON DELETE CASCADE;	
ALTER TABLE Resident ADD CONSTRAINT ak3 FOREIGN KEY(LAgentID) REFERENCES LeasingAgent(AgentID) ON DELETE SET NULL;	
ALTER TABLE Resident ADD CONSTRAINT ak4 FOREIGN KEY(MboxNo) REFERENCES MailBox(BoxNo) ON DELETE SET NULL;	
ALTER TABLE Pets ADD CONSTRAINT ak5 FOREIGN KEY(RSSN) REFERENCES Resident(SSN) ON DELETE CASCADE;	
ALTER TABLE AccountDetails ADD CONSTRAINT ak6 FOREIGN KEY(BSSN) REFERENCES Resident(SSN) ON DELETE CASCADE;	
ALTER TABLE Stays ADD CONSTRAINT ak7 FOREIGN KEY(RSSN) REFERENCES Resident(SSN) ON DELETE CASCADE;
ALTER TABLE Stays ADD CONSTRAINT ak8 FOREIGN KEY(RoomNo) REFERENCES Flat(RoomNo) ON DELETE CASCADE;
ALTER TABLE Payment ADD CONSTRAINT ak9 FOREIGN KEY(RoomNo) REFERENCES Flat(RoomNo) ON DELETE CASCADE;
ALTER TABLE Amenities ADD CONSTRAINT ak10 FOREIGN KEY(ARoomNo) REFERENCES Flat(RoomNo) ON DELETE CASCADE;
ALTER TABLE Technician ADD CONSTRAINT ak11 FOREIGN KEY(TEId) REFERENCES MaintenanceTeam(EId) ON DELETE CASCADE;
ALTER TABLE Engineer ADD CONSTRAINT ak12 FOREIGN KEY(EEId) REFERENCES MaintenanceTeam(EId) ON DELETE CASCADE;
ALTER TABLE Gardener ADD CONSTRAINT ak13 FOREIGN KEY(GEId) REFERENCES MaintenanceTeam(EId) ON DELETE CASCADE;
ALTER TABLE Maintains ADD CONSTRAINT ak14 FOREIGN KEY(MSSN) REFERENCES Resident(SSN)ON DELETE CASCADE;
ALTER TABLE Maintains ADD CONSTRAINT ak15 FOREIGN KEY(MEId) REFERENCES MaintenanceTeam(EId)ON DELETE CASCADE;
ALTER TABLE Maintains ADD CONSTRAINT ak16 FOREIGN KEY(MRoomNo) REFERENCES Flat(RoomNo)ON DELETE CASCADE;



CREATE OR REPLACE TRIGGER maxpet
BEFORE INSERT OR UPDATE OF TotalPets ON Resident
FOR EACH ROW
DECLARE
BEGIN
IF (:new.TotalPets > 4) THEN
RAISE_APPLICATION_ERROR(-20001,'MAX PET LIMIT REACHED');
END IF;
END;


CREATE OR REPLACE TRIGGER Lease
  BEFORE INSERT OR UPDATE OF LeaseStartDate ON Stays  
  FOR EACH row 
  DECLARE 
  BEGIN
    IF :new.LeaseEndDate < :new.LeaseStartDate THEN
      raise_application_error(-20002, ('Lease End date is before Lease Start Date'));
    END IF;
  END;
  
  
  

Drop PROCEDURE amail;
CREATE PROCEDURE
 amail( thismail IN MailBox.BoxNo%TYPE) AS
BEGIN
INSERT INTO MailBox VALUES(thismail,'C-block','small');
END;

BEGIN
amail(190);
amail(200);
END;
SELECT * FROM MailBox;

DROP PROCEDURE lp4;
CREATE PROCEDURE
lp4 (thisAgentID IN LeasingAgent.AgentID%TYPE) AS
BEGIN
insert into LeasingAgent values(thisAgentID,'shaw','shaw@gmail.com',1234556349);
END;

BEGIN
lp4(100);
END;

select * from LeasingAgent;



CREATE OR REPLACE PROCEDURE p1 AS 
 CURSOR c1 IS
 SELECT payment.RoomNo,payment.duedate,payment.rentpaid,payment.rentamount FROM Payment WHERE rentpaid = 'NO'; 
 Dd c1%ROWTYPE; 
BEGIN 
 OPEN c1; 
LOOP 
FETCH c1 INTO Dd;
EXIT WHEN (c1%NOTFOUND);?
DBMS_OUTPUT.PUT_LINE('Due Date '||Dd.RoomNo); 
END LOOP; 
CLOSE c1; 
END; 

EXECUTE p1;






