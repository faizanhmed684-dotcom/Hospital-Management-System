# 🏥 Hospital Management System (Database Project)

## 📌 Project Overview

Hospital Management System is a database project designed to manage and organize hospital activities in an efficient way. The system helps hospitals store important information such as patient records, doctor details, appointments, billing, rooms, and staff data in a computerized form.

In traditional hospital systems, records are managed manually, which can cause errors, delays, and data loss. This system reduces paperwork and makes data management faster, easier, and more secure.

---

## ⭐ Features

### 🧍 Patient Registration
Stores patient information and assigns a unique Patient ID to each patient.

### 👨‍⚕️ Doctor Management
Stores doctor details such as name, specialization, and contact information.

### 📅 Appointment Management
Allows patients to book appointments with doctors.

### 🏨 Room Allocation
Assigns available hospital rooms to patients during treatment.

### 💳 Billing System
Manages patient billing details, payment amounts, and payment status.

### 👨‍💼 Staff Management
Stores and manages hospital staff information such as nurses, receptionists, etc.

### 🔍 Patient Search System
Allows staff to search patient records using Patient ID or patient name.

### ✏️ Update Patient Information
Enables updating patient details such as phone number, address, and age.

### 🚪 Discharge Patient & Room Release
Handles patient discharge and releases allocated rooms for future use.

### 📊 Doctor Appointment Report
Generates reports showing doctor appointments with patient details and schedules.

---

## 🎯 Project Outcome

The final system provides a complete database solution that:

- Reduces manual work  
- Saves time  
- Improves data security  
- Organizes hospital records properly  
- Makes hospital management easier and faster  

---

## 🧩 Entities and Attributes

### 👤 Patient Entity
- **Patient_ID** (Primary Key)  
- Patient_Name  
- Age  
- Gender  
- Phone  
- Address  

---

### 👨‍⚕️ Doctor Entity
- **Doctor_ID** (Primary Key)  
- Doctor_Name  
- Specialization  
- Phone  

---

### 📅 Appointment Entity
- **Appointment_ID** (Primary Key)  
- **Patient_ID** (Foreign Key)  
- **Doctor_ID** (Foreign Key)  
- Appointment_Date  
- Appointment_Time  

---

### 🏨 Room Entity
- **Room_ID** (Primary Key)  
- Room_Type  
- Charges  

---

### 💳 Billing Entity
- **Bill_ID** (Primary Key)  
- **Patient_ID** (Foreign Key)  
- Amount  
- Payment_Status  

---

### 👨‍💼 Staff Entity
- **Staff_ID** (Primary Key)  
- Staff_Name  
- Role  
- Salary  

---

## 🔗 Relationships

- **Patient ↔ Appointment:** A patient can have multiple appointments, but each appointment belongs to one patient.  
- **Doctor ↔ Appointment:** A doctor can handle multiple appointments, but each appointment is assigned to one doctor.  
- **Patient ↔ Billing:** Each patient has billing records for hospital services.  
- **Patient ↔ Room:** Patients are assigned rooms during treatment.  
- **Staff ↔ Patient:** Staff members manage and take care of patients during treatment.  

---

## 🚀 Tech Stack (Optional Section)
- Database: MySQL / SQL Server  
- Design: ER Diagram  
- Language: SQL  

---

## 📂 Project Structure (Optional)
