
-- HOSPITAL MANAGEMENT SYSTEM
-- DATABASE PROJECT


-- DROP TABLES (OPTIONAL)
DROP TABLE IF EXISTS Room_Allocation CASCADE;
DROP TABLE IF EXISTS Billing CASCADE;
DROP TABLE IF EXISTS Appointment CASCADE;
DROP TABLE IF EXISTS Staff CASCADE;
DROP TABLE IF EXISTS Room CASCADE;
DROP TABLE IF EXISTS Doctor CASCADE;
DROP TABLE IF EXISTS Patient CASCADE;


-- CREATE TABLES
CREATE TABLE Patient (
    patient_id SERIAL PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(20),
    address TEXT
);

CREATE TABLE Doctor (
    doctor_id SERIAL PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Room (
    room_id SERIAL PRIMARY KEY,
    room_type VARCHAR(50),
    charges DECIMAL(10,2),
    status VARCHAR(20)
);


CREATE TABLE Staff (
    staff_id SERIAL PRIMARY KEY,
    staff_name VARCHAR(100),
    role VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE Appointment (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patient(patient_id),
    doctor_id INT REFERENCES Doctor(doctor_id),
    appointment_date DATE,
    appointment_time TIME
);

CREATE TABLE Billing (
    bill_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patient(patient_id),
    amount DECIMAL(10,2),
    payment_status VARCHAR(20)
);

CREATE TABLE Room_Allocation (
    allocation_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES Patient(patient_id),
    room_id INT REFERENCES Room(room_id),
    admission_date DATE
);


-- SAMPLE DATA
INSERT INTO Patient
(patient_name, age, gender, phone, address)
VALUES
('Ali Ahmed',25,'Male','03001234567','Lahore'),
('Sara Khan',30,'Female','03111234567','Karachi'),
('Usman Malik',40,'Male','03221234567','Islamabad');

select * from patient;
select * from Doctor;

INSERT INTO Doctor
(doctor_name,specialization,phone)
VALUES
('Dr Aslam','Cardiologist','03009998888'),
('Dr Sana','Dermatologist','03117776666');

INSERT INTO Room
(room_type,charges,status)
VALUES
('General',3000,'Available'),
('Private',7000,'Available');
select * from Room

INSERT INTO Staff
(staff_name,role,salary)
VALUES
('Nadia','Nurse',45000),
('Bilal','Receptionist',35000);

INSERT INTO Appointment
(patient_id,doctor_id,appointment_date,appointment_time)
VALUES
(1,1,'2026-06-20','10:00'),
(2,2,'2026-06-21','11:00');

INSERT INTO Billing
(patient_id,amount,payment_status)
VALUES
(1,12000,'Pending'),
(2,8000,'Paid');

INSERT INTO Room_Allocation
(patient_id,room_id,admission_date)
VALUES
(1,1,CURRENT_DATE),
(2,2,CURRENT_DATE);


-- FEATURE 1
-- PATIENT REGISTRATION
INSERT INTO Patient
(patient_name,age,gender,phone,address)
VALUES
('Hamza Ali',28,'Male','03005556666','Faisalabad');
SELECT * FROM Patient;


-- FEATURE 2
-- DOCTOR MANAGEMENT
INSERT INTO Doctor
(doctor_name,specialization,phone)
VALUES
('Dr Ahmed','Neurologist','03001112222');
SELECT * FROM Doctor;


-- FEATURE 3
-- APPOINTMENT BOOKING
INSERT INTO Appointment
(patient_id,doctor_id,appointment_date,appointment_time)
VALUES
(1,1,'2026-07-10','09:30');
SELECT * FROM Appointment;


-- FEATURE 4
-- ROOM ALLOCATION
INSERT INTO Room_Allocation
(patient_id,room_id,admission_date)
VALUES
(3,1,CURRENT_DATE);
SELECT * FROM Room_Allocation;


-- FEATURE 5
-- BILLING MANAGEMENT
INSERT INTO Billing
(patient_id,amount,payment_status)
VALUES
(3,15000,'Pending');
SELECT * FROM Billing;


-- FEATURE 6
-- STAFF MANAGEMENT
INSERT INTO Staff
(staff_name,role,salary)
VALUES
('Ayesha','Nurse',50000);
SELECT * FROM Staff;


-- FEATURE 7
-- SEARCH PATIENT
SELECT * FROM Patient
WHERE patient_name LIKE '%Ali%';


-- FEATURE 8
-- UPDATE PATIENT
UPDATE Patient
SET phone='03009990000'
WHERE patient_id=1;
SELECT * FROM Patient;


-- FEATURE 9
-- DELETE APPOINTMENT
DELETE FROM Appointment
WHERE appointment_id=2;
SELECT * FROM Appointment;


-- FEATURE 10
-- HOSPITAL REPORT SYSTEM
SELECT
p.patient_name,
d.doctor_name,
a.appointment_date,
a.appointment_time
FROM Appointment a
JOIN Patient p
ON a.patient_id=p.patient_id
JOIN Doctor d
ON a.doctor_id=d.doctor_id;


-- EXTRA JOIN QUERY #1
-- BILLING REPORT
SELECT
p.patient_name,
b.amount,
b.payment_status
FROM Patient p
JOIN Billing b
ON p.patient_id=b.patient_id;


-- EXTRA JOIN QUERY #2
-- ROOM REPORT
SELECT
p.patient_name,
r.room_type,
r.charges
FROM Patient p
JOIN Room_Allocation ra
ON p.patient_id=ra.patient_id
JOIN Room r
ON ra.room_id=r.room_id;


-- DCL COMMANDS
CREATE ROLE receptionist
LOGIN
PASSWORD 'hospital123';

GRANT SELECT, INSERT
ON Patient
TO receptionist;

REVOKE DELETE
ON Patient
FROM receptionist;

