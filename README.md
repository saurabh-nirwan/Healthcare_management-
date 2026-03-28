# 🏥 Healthcare Management System (SQL Project)

## 📌 Project Description

This project is a **Healthcare Management System Database** built using SQL. It manages patients, doctors, appointments, prescriptions, medicines, and billing in a structured relational database.

---

## 🧩 Database Tables

The system consists of the following tables:

* **Patients** – Stores patient details
* **Doctors** – Stores doctor information and specialization
* **Appointments** – Links patients with doctors
* **Medicines** – Stores medicine details and prices
* **Prescriptions** – Tracks medicines prescribed in appointments
* **Billing** – Stores billing information

---

## 🔗 Table Relationships

* A patient can have multiple appointments
* A doctor can handle multiple patients
* Each appointment can have multiple prescriptions
* Medicines are linked through prescriptions
* Billing is generated per patient

---

## 🛠️ Technologies Used

* SQL (PostgreSQL / MySQL compatible)
* Relational Database Design

---

## 🚀 How to Run the Project

1. Open your SQL environment (PostgreSQL / MySQL)

2. Run the SQL file:

   ```sql
   SOURCE healthcare.sql;
   ```

3. The script will:

   * Create all tables
   * Insert sample data
   * Execute queries

---

## 📊 Sample Data Included

* Patient: Rahul Sharma
* Doctor: Dr. Amit (Cardiologist)
* Appointment: Completed
* Medicine: Paracetamol
* Billing: ₹500

---

## 🔍 SQL Features Used

* PRIMARY KEY & FOREIGN KEY
* CHECK constraints
* UNIQUE constraints
* JOIN operations
* GROUP BY aggregation
* CASCADE delete

---

## 📈 Queries Implemented

### 1. View All Patients

```sql
SELECT * FROM patients;
```

### 2. Appointment Details (JOIN)

```sql
SELECT 
    p.name AS patient_name,
    d.name AS doctor_name,
    a.appointment_date,
    a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;
```

### 3. Billing Details

```sql
SELECT 
    p.name,
    b.total_amount,
    b.bill_date
FROM billing b
JOIN patients p ON b.patient_id = p.patient_id;
```

### 4. Medicines Usage Report

```sql
SELECT 
    m.name AS medicine_name,
    SUM(pr.quantity) AS total_used
FROM prescriptions pr
JOIN medicines m ON pr.medicine_id = m.medicine_id
GROUP BY m.name;
```

---

## 📸 Output

(Add screenshots of query results here)

---

## 💡 Future Enhancements

* Add user authentication system
* Implement stored procedures
* Add triggers for automation
* Build frontend (Web/App interface)
* Generate automated billing

---

## 👨‍💻 Author

Your Name

---

## 📄 License

This project is open-source and available under the MIT License.
# Healthcare_management-
