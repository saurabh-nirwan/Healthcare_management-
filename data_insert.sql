-- ================================
-- INSERT SAMPLE DATA
-- ================================

INSERT INTO patients (name, age, gender, phone, address)
VALUES ('Rahul Sharma', 30, 'Male', '9876543210', 'Delhi');

INSERT INTO doctors (name, specialization, phone)
VALUES ('Dr. Amit', 'Cardiologist', '9999999999');

INSERT INTO appointments (patient_id, doctor_id, appointment_date, status)
VALUES (1, 1, '2026-03-28', 'Completed');

INSERT INTO medicines (name, price)
VALUES ('Paracetamol', 50.00);

INSERT INTO prescriptions (appointment_id, medicine_id, quantity)
VALUES (1, 1, 2);

INSERT INTO billing (patient_id, total_amount)
VALUES (1, 500.00);
