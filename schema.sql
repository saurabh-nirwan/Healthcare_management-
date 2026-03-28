-- ================================
-- HEALTHCARE MANAGEMENT SYSTEM DB
-- ================================

-- ================================
-- PATIENTS TABLE
-- ================================
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    gender VARCHAR(10),
    phone VARCHAR(15) UNIQUE,
    address TEXT
);

-- ================================
-- DOCTORS TABLE
-- ================================
CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15) UNIQUE
);

-- ================================
-- APPOINTMENTS TABLE
-- ================================
CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id) ON DELETE CASCADE,
    doctor_id INT REFERENCES doctors(doctor_id) ON DELETE CASCADE,
    appointment_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending'
);

-- ================================
-- MEDICINES TABLE
-- ================================
CREATE TABLE medicines (
    medicine_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) CHECK (price >= 0)
);

-- ================================
-- PRESCRIPTIONS TABLE
-- ================================
CREATE TABLE prescriptions (
    prescription_id SERIAL PRIMARY KEY,
    appointment_id INT REFERENCES appointments(appointment_id) ON DELETE CASCADE,
    medicine_id INT REFERENCES medicines(medicine_id),
    quantity INT CHECK (quantity > 0)
);

-- ================================
-- BILLING TABLE
-- ================================
CREATE TABLE billing (
    bill_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id) ON DELETE CASCADE,
    total_amount NUMERIC(10,2) CHECK (total_amount >= 0),
    bill_date DATE DEFAULT CURRENT_DATE
);
