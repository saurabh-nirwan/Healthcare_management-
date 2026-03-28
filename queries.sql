-- ================================
-- QUERIES
-- ================================

-- View all patients
SELECT * FROM patients;

-- View billing
SELECT * FROM billing;

-- Appointment Details (JOIN)
SELECT 
    p.name AS patient_name,
    d.name AS doctor_name,
    a.appointment_date,
    a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

-- Billing Details
SELECT 
    p.name,
    b.total_amount,
    b.bill_date
FROM billing b
JOIN patients p ON b.patient_id = p.patient_id;

---Medicines Used in Prescriptions
SELECT 
    m.name AS medicine_name,
    SUM(pr.quantity) AS total_used
FROM prescriptions pr
JOIN medicines m ON pr.medicine_id = m.medicine_id
GROUP BY m.name;

-- Drop tables if already exist (avoid errors)
DROP TABLE IF EXISTS prescriptions;
DROP TABLE IF EXISTS billing;
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS medicines;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS patients;