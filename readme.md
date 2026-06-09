Title:
<h1>Hospital Management System</h1>
Project Description
Hospital Management System is a database project designed to manage and organize hospital activities in an efficient way. The system helps hospitals store important information such as patient records, doctor details, appointments, billing, rooms, and staff data in a computerized form.
In traditional hospitals, records are often managed manually, which can cause errors and waste time. This system reduces paperwork and makes data management faster, easier, and more
secure.

Feature:
1.	Patient Registration
The system stores patient information and assigns a unique Patient ID to each patient.
2.	Doctor Management
The system stores doctor details such as name, specialization, and contact information.
3.	Appointment Management
The system allows patients to book appointments with doctors.
4.	Room Allocation
The system assigns available hospital rooms to patients during treatment.
5.	Billing System
The system manages patient billing details, payment amounts, and payment status.
6.	Staff Management
The system stores and manages information about hospital staff members.
7.	Patient Search System
The system allows staff to search patient records using Patient ID or patient name.
8.	Update Patient Information
The system allows updating patient details such as phone number, address, and age.
9.	Discharge Patient & Room Release
The system discharges patients and releases allocated rooms for future use.
10.	Doctor Appointment Report
The system generates reports of doctor appointments with patient details and schedules.


Project Outcome
The final outcome of this project is a complete database system that:
•	Reduces manual work
•	Saves time
•	Improves data security
•	Organizes hospital records properly
•	Makes hospital management easier and faster


Entities and Attributes
1.	Patient Entity
This entity stores patient information.
Attributes:
•	Patient_ID (Primary Key)


















 
•	Patient_Name
•	Age
•	Gender
•	Phone
•	Address


2.	Doctor Entity
This entity stores doctor information.
Attributes:
•	Doctor_ID (PK)
•	Doctor_Name
•	Specialization
•	Phone


3.	Appointment Entity
This entity stores appointment details between patients and doctors.
Attributes:
•	Appointment_ID (PK)
•	Patient_ID (FK)
•	Doctor_ID (FK)
•	Appointment_Date
•	Appointment_Time


4.	Room Entity
This entity stores hospital room details.
Attributes:
•	Room_ID (PK)
 
•	Room_Type
•	Charges


5.	Billing Entity
This entity stores payment and billing information.
Attributes:
•	Bill_ID (PK)
•	Patient_ID (FK)
•	Amount
•	Payment_Status


6.	Staff Entity
This entity stores staff information.
Attributes:
•	Staff_ID (PK)
•	Staff_Name
•	Role
•	Salary


Relationships Explanation Patient and Appointment
A patient can book many appointments, but each appointment belongs to one patient.
Doctor and Appointment
A doctor can handle many appointments, while each appointment is assigned to one doctor.
Patient and Billing
Each patient receives billing details for hospital services.
Patient and Room
 
Patients are assigned hospital rooms during treatment.
Hospital and Staff
The hospital manages different staff members such as nurses and receptionists.
Staff and Patient
The staff handles and takes care of different patients during treatment.
