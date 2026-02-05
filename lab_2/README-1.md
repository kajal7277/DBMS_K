# DBMS Lab Assignment 2 – College Database Design

## 📘 About the Assignment
This assignment focuses on designing a College Database System using Entity–Relationship (ER) modeling and converting it into relational tables.
The SQL implementation includes proper primary keys, foreign keys, and constraints as required for DBMS lab work.

This repository follows the submission guidelines provided by the instructor, ensuring that SQL code is written manually in a .sql file and uploaded to GitHub.

---

## 📂 File Structure
College-DB-Lab/
├── lab2solution.sql     # SQL script containing CREATE TABLE statements
├── README.md            # Description and execution instructions
└── questions.pdf        # Assignment questions (provided by instructor)

---

## 🧩 Database Tables Included
1. Department – Stores department details
2. Faculty – Stores faculty information and department mapping
3. Course – Stores course details taught by faculty
4. Student – Stores student information
5. Enrollment – Represents many-to-many relationship between students and courses

---

## ⚙️ How to Execute the SQL File
1. Open Oracle SQL Developer (or SQL*Plus)
2. Connect to your Oracle database
3. Open the file lab2solution.sql
4. Run the script (Press F5 or use @lab2solution.sql in SQL*Plus)
5. All tables will be created successfully if no errors appear

---

## ✅ Assumptions
- One faculty member belongs to only one department
- A course is taught by one faculty member
- Students can enroll in multiple courses
- Enrollment table resolves the many-to-many relationship

---

## 👨‍🎓 Author
Amarjeet Kumar  
DBMS Lab – Assignment 2

---

## 📌 Note
This repository is maintained for academic purposes and future reference.
