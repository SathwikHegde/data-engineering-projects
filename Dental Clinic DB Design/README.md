# Dental Office Database Design

A comprehensive data modeling project for a modern multi-location dental office system. This project captures a normalized relational database schema that supports key operations such as patient management, appointments, treatment history, billing, and more.

---

## 🏥 Project Summary

This project designs a complete relational database system for a dental office chain. It includes:

- 30+ normalized entities
- Detailed entity-relationship (ER) modeling
- Business rules integration
- Support for appointments, medical history, prescriptions, and billing

---

## 🗃️ Folder Structure

dental-office-data-modeling/ 
├── README.md # Project documentation 
├── docs/ # PDF and design documentation 
├── database/ # Schema + sample data 
└── .gitignore / LICENSE 


---

## 📚 Key Features

- 📌 Multi-location support (branches, rooms, dentists)
- 🧾 Complete patient tracking: visits, allergies, disorders, COVID history
- 💊 Treatment plans and prescriptions
- 💳 Billing and payments
- 📅 Room and dentist availability system
- 📊 Business rules baked into design

---

## 🔧 How to Use

1. Clone the repository:
```bash
git clone https://github.com/SathwikHegde/data-engineering-projects/dental-office-data-modeling.git

2. Load schema and sample data (optional):

psql -U youruser -d yourdb -f database/schema.sql
psql -U youruser -d yourdb -f database/seed_data.sql

3. Open docs/Dental_Office_Database_Design.pdf to explore the full design.

🧠 Learnings
Hands-on experience with real-world data modeling

Business logic translation into schema rules

Use of ER diagrams and normalization techniques

Integration of healthcare-specific entities (e.g. prescriptions, COVID history)

📜 License
MIT License

#### 4. **Add Files to Git & Push**
```bash
git add .
git commit -m "Initial commit: Dental Clinic DB Design project"
git branch -M main
git remote add origin https://github.com/SathwikHegde/data-engineering-projects/dental-office-data-modeling.git
git push -u origin main