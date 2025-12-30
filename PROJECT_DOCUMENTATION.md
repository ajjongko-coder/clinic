# ITE 18 – Application Development and Emerging Technologies

## Web/Mobile Application - Final Project Submission

**Student Name(s):** _______________________________________________________________

**Project Title:** Clinic Management System

**Date of Submission:** ______________________________________________________________

**Course/Section:** __________________________________________________________________

---

## 1. Project Overview

### 1.1 Project Description

The Clinic Management System is a comprehensive web-based application designed to streamline and automate clinic operations. The system addresses the common challenges faced by healthcare facilities in managing patient records, scheduling appointments, tracking doctor availability, handling prescriptions, processing billing, and collecting patient feedback.

**Problem Statement:**
Traditional clinic management relies heavily on paper-based systems and manual processes, leading to inefficiencies, errors, and difficulty in tracking patient history and appointments. This system digitizes all clinic operations, providing a centralized platform for managing all aspects of clinic administration.

**Purpose:**
The application serves as a complete solution for clinic administrators, doctors, and staff to efficiently manage:
- Patient registration and medical records
- Doctor profiles and department organization
- Appointment scheduling and management
- Prescription creation and tracking
- Billing and payment processing
- Patient feedback collection
- Role-based access control for different user types

### 1.2 Target Users

**Primary Users:**

1. **Clinic Administrators**
   - Characteristics: Manage overall clinic operations, oversee staff, handle system configuration
   - Needs: Complete access to all modules, user management, reporting capabilities

2. **Doctors**
   - Characteristics: Medical professionals providing patient care
   - Needs: Access to patient records, appointment schedules, prescription management, patient history

3. **Receptionists/Staff**
   - Characteristics: Front desk personnel handling appointments and patient registration
   - Needs: Patient registration, appointment scheduling, basic patient information access

4. **Patients** (Future Enhancement)
   - Characteristics: End users seeking medical services
   - Needs: Appointment booking, viewing medical records, prescription access

### 1.3 Key Features

- **Feature 1: Patient Management**
  - Complete CRUD operations for patient records
  - Patient registration with personal and medical information
  - Patient history tracking and retrieval

- **Feature 2: Doctor Management**
  - Doctor profile creation and management
  - Department assignment and specialization tracking
  - Doctor availability and schedule management

- **Feature 3: Appointment Scheduling**
  - Book appointments between patients and doctors
  - View and manage appointment schedules
  - Appointment status tracking (pending, approved, cancelled, completed)
  - Appointment history and records

- **Feature 4: Department Management**
  - Organize clinic into different departments
  - Department-specific doctor assignments
  - Department-based appointment filtering

- **Feature 5: Schedule Management**
  - Doctor schedule creation and management
  - Availability tracking
  - Time slot management

- **Feature 6: Prescription Management**
  - Create and manage patient prescriptions
  - Prescription history tracking
  - Link prescriptions to appointments and patients

- **Feature 7: Billing System**
  - Generate bills for services
  - Track payments and outstanding balances
  - Billing history and reports

- **Feature 8: Feedback System**
  - Collect patient feedback and reviews
  - Feedback analysis and reporting
  - Quality improvement tracking

- **Feature 9: Role-Based Access Control**
  - User role management (Admin, Doctor, Staff)
  - Permission-based access to features
  - Secure user authentication

- **Feature 10: RESTful API**
  - Complete API endpoints for all features
  - Token-based authentication using Laravel Sanctum
  - JSON-based data exchange

### 1.4 Technology Stack

**Backend:**
- Laravel 9.x (PHP Framework)
- PHP 8.0.2+
- Laravel Sanctum 3.3 (API Authentication)

**Database:**
- MySQL/PostgreSQL/SQLite (Configurable)

**Frontend Build Tools:**
- Vite 4.x (Build tool and dev server)
- Node.js and npm

**Development Tools:**
- Git (Version Control)
- Composer (PHP Dependency Manager)
- Postman/Insomnia (API Testing)

**Other Technologies:**
- Guzzle HTTP Client 7.2
- Laravel Eloquent ORM
- RESTful API Architecture

---

## 2. App Plan

### 2.1 Project Scope

**In Scope:**

- Patient registration and management system
- Doctor profile and department management
- Appointment scheduling and management system
- Prescription creation and tracking
- Billing and payment processing
- Patient feedback collection
- User authentication and authorization
- RESTful API for all features
- Role-based access control
- Basic error handling and validation

**Out of Scope:**

- Real-time notifications
- SMS/Email notifications
- Mobile application (iOS/Android)
- Advanced reporting and analytics dashboard
- Integration with external medical systems
- Video consultation features
- Inventory management for medicines
- Advanced search and filtering capabilities
- Multi-language support
- Payment gateway integration

### 2.2 Objectives & Goals

1. **Primary Objective:** Develop a fully functional clinic management system that digitizes core clinic operations including patient management, appointments, prescriptions, and billing.

2. **Technical Objective:** Build a secure RESTful API using Laravel framework with proper authentication, validation, and error handling.

3. **User Experience Objective:** Create an intuitive API structure that allows frontend developers or mobile app developers to easily integrate with the system.

4. **Data Management Objective:** Implement a normalized database structure that efficiently stores and retrieves clinic-related data.

5. **Security Objective:** Implement secure authentication using Laravel Sanctum with token-based access control and role-based permissions.

6. **Scalability Objective:** Design the system architecture to be scalable and maintainable for future enhancements.

### 2.3 User Stories & Use Cases

**User Story 1: Patient Registration**

- **As a** receptionist/staff member, **I want to** register new patients with their personal and medical information, **so that** the clinic can maintain accurate patient records and provide better healthcare services.

- **Acceptance Criteria:**
  - [ ] System allows creating new patient records with required fields (name, contact, date of birth, address)
  - [ ] System validates all input fields before saving
  - [ ] System prevents duplicate patient entries
  - [ ] System stores patient information securely in the database
  - [ ] System returns success message upon successful registration

**User Story 2: Appointment Booking**

- **As a** receptionist, **I want to** book appointments between patients and doctors at specific dates and times, **so that** patients can receive medical consultation services.

- **Acceptance Criteria:**
  - [ ] System allows selecting a patient and doctor for appointment
  - [ ] System validates appointment date and time availability
  - [ ] System prevents double-booking for the same doctor at the same time
  - [ ] System assigns default status as "pending" for new appointments
  - [ ] System stores appointment details with relationship to patient and doctor
  - [ ] System allows updating appointment status (approved, cancelled, completed)

**User Story 3: Doctor Schedule Management**

- **As a** doctor or administrator, **I want to** manage my availability schedule, **so that** patients can only book appointments during my available hours.

- **Acceptance Criteria:**
  - [ ] System allows creating schedule entries with date, time, and doctor
  - [ ] System prevents appointment booking outside scheduled hours
  - [ ] System allows updating and deleting schedules
  - [ ] System displays available time slots for appointment booking

**User Story 4: Prescription Management**

- **As a** doctor, **I want to** create prescriptions for patients after consultation, **so that** patients can obtain necessary medications and treatments.

- **Acceptance Criteria:**
  - [ ] System allows creating prescriptions linked to patients and appointments
  - [ ] System stores prescription details (medications, dosage, instructions)
  - [ ] System maintains prescription history for each patient
  - [ ] System allows viewing and updating prescriptions

**User Story 5: Billing Management**

- **As a** billing staff member, **I want to** create and manage bills for patient services, **so that** the clinic can track payments and revenue.

- **Acceptance Criteria:**
  - [ ] System allows creating bills linked to patients and appointments
  - [ ] System stores billing amount, payment status, and date
  - [ ] System tracks payment history
  - [ ] System allows updating payment status

**User Story 6: User Authentication**

- **As a** system user (admin, doctor, staff), **I want to** securely log in to the system, **so that** I can access features based on my role and maintain data security.

- **Acceptance Criteria:**
  - [ ] System allows user registration with email and password
  - [ ] System validates login credentials
  - [ ] System generates authentication token upon successful login
  - [ ] System requires token for accessing protected endpoints
  - [ ] System allows logout functionality to invalidate tokens

### 2.4 System Architecture

The Clinic Management System follows a **3-tier architecture** pattern:

**Presentation Layer (API Layer):**
- RESTful API endpoints built with Laravel
- JSON-based request/response format
- Token-based authentication middleware
- Input validation and error handling

**Business Logic Layer:**
- Laravel Controllers handling business logic
- Eloquent ORM for database operations
- Service layer for complex operations
- Validation rules and policies

**Data Access Layer:**
- MySQL database for data persistence
- Eloquent Models representing database entities
- Database migrations for schema management
- Relationships between entities (One-to-Many, Many-to-Many)

**Architecture Flow:**
1. Client application (Frontend/Mobile) sends HTTP request to API endpoint
2. Request passes through authentication middleware (Laravel Sanctum)
3. Controller receives request and validates input
4. Controller uses Model to interact with database
5. Database returns data to Model
6. Controller formats response as JSON
7. Response sent back to client

**Key Components:**
- **Routes:** Define API endpoints (`routes/api.php`)
- **Controllers:** Handle HTTP requests and business logic
- **Models:** Represent database entities and relationships
- **Middleware:** Handle authentication and request processing
- **Migrations:** Define database schema structure

### 2.5 Development Timeline

| Phase | Description | Timeline |
|-------|-------------|----------|
| Phase 1 | Project Planning & Design | Week 1-2 |
|       | - Requirements gathering | |
|       | - Database design (ERD) | |
|       | - API endpoint planning | |
|       | - Technology stack selection | |
| Phase 2 | Development Environment Setup | Week 2 |
|       | - Laravel installation | |
|       | - Database configuration | |
|       | - Development tools setup | |
| Phase 3 | Database Development | Week 2-3 |
|       | - Create migrations | |
|       | - Define models and relationships | |
|       | - Database seeding | |
| Phase 4 | Authentication & Authorization | Week 3 |
|       | - User registration/login | |
|       | - Laravel Sanctum integration | |
|       | - Role-based access control | |
| Phase 5 | Core Feature Development | Week 3-6 |
|       | - Patient management | |
|       | - Doctor management | |
|       | - Appointment system | |
|       | - Department management | |
|       | - Schedule management | |
| Phase 6 | Additional Features | Week 6-7 |
|       | - Prescription management | |
|       | - Billing system | |
|       | - Feedback system | |
| Phase 7 | Testing & Debugging | Week 7-8 |
|       | - API endpoint testing | |
|       | - Error handling | |
|       | - Security testing | |
| Phase 8 | Documentation & Deployment | Week 8 |
|       | - API documentation | |
|       | - Project documentation | |
|       | - Deployment preparation | |

---

## 3. UI/UX Design

### 3.1 Design Philosophy

The Clinic Management System is designed as a **backend API-first application**. The focus is on providing a robust, well-structured RESTful API that can be consumed by any frontend application (web, mobile, or desktop).

**Design Principles:**
- **API-First Approach:** All functionality exposed through RESTful endpoints
- **Consistency:** Uniform response format across all endpoints
- **Simplicity:** Clear and intuitive API structure
- **Security:** Token-based authentication for all protected routes
- **Scalability:** Modular architecture allowing easy feature additions

**Future Frontend Considerations:**
While the current implementation focuses on the API, the design philosophy supports:
- Clean separation between frontend and backend
- JSON-based data exchange for flexibility
- RESTful conventions for predictable endpoints
- Comprehensive error messages for better debugging

### 3.2 Color Scheme

*Note: As this is an API-only application, color schemes will apply when frontend is developed.*

**Proposed Color Scheme for Future Frontend:**

- **Primary Color:** #2563EB (Blue) - Used for primary actions, headers, and important elements
- **Secondary Color:** #10B981 (Green) - Used for success messages and positive actions
- **Accent Color:** #F59E0B (Amber) - Used for warnings and important notifications
- **Error Color:** #EF4444 (Red) - Used for error messages and destructive actions
- **Background Color:** #F9FAFB (Light Gray) - Used for page backgrounds
- **Text Color:** #111827 (Dark Gray) - Used for primary text content
- **Secondary Text:** #6B7280 (Medium Gray) - Used for secondary text and labels

### 3.3 Typography

**Proposed Typography for Future Frontend:**

- **Font Family:** Inter, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif
- **Heading Font Size:** 
  - H1: 32px
  - H2: 24px
  - H3: 20px
- **Body Font Size:** 16px
- **Small Text:** 14px
- **Line Height:** 1.5
- **Font Weight:** 
  - Headings: 600 (Semi-bold)
  - Body: 400 (Regular)
  - Emphasis: 500 (Medium)

### 3.4 UI Components

*Note: These components will be implemented in the frontend application that consumes this API.*

**Proposed UI Components:**

- **Button:** 
  - Primary: Blue background, white text, rounded corners
  - Secondary: Gray border, transparent background
  - Danger: Red background for delete actions

- **Input Fields:** 
  - Rounded borders, padding, focus states
  - Validation error messages displayed below fields
  - Placeholder text for guidance

- **Navigation Bar:** 
  - Fixed top navigation with logo and user menu
  - Role-based menu items
  - Logout functionality

- **Cards:** 
  - White background with shadow
  - Rounded corners
  - Padding for content spacing

- **Modal/Dialog:** 
  - Centered overlay
  - Form inputs for creating/editing records
  - Cancel and Submit buttons

- **Tables:** 
  - Responsive design
  - Sortable columns
  - Action buttons (Edit, Delete) per row

- **API Response Display:** 
  - JSON viewer for API responses
  - Status code indicators
  - Success/Error message banners

### 3.5 Wireframes & Mockups

*Note: As this is currently an API-only application, wireframes would be created for the frontend application that consumes this API. Below are descriptions of key screens that would be needed.*

**Screen 1: Login/Registration**
- **Description:** User authentication screen with email/password fields
- **Key Elements:** Login form, registration link, forgot password option
- **API Endpoints Used:** POST /api/login, POST /api/register

**Screen 2: Patient Management Dashboard**
- **Description:** List view of all patients with search and filter capabilities
- **Key Elements:** Patient table, Add Patient button, Search bar, Patient details modal
- **API Endpoints Used:** GET /api/patients, POST /api/patients, PUT /api/patients/{id}, DELETE /api/patients/{id}

**Screen 3: Appointment Scheduling**
- **Description:** Calendar view and list view of appointments
- **Key Elements:** Calendar widget, Appointment list, Book Appointment form, Status filters
- **API Endpoints Used:** GET /api/appointments, POST /api/appointments, PUT /api/appointments/{id}

**Screen 4: Doctor Management**
- **Description:** List of doctors with department assignments
- **Key Elements:** Doctor cards, Department filter, Add Doctor form
- **API Endpoints Used:** GET /api/doctors, GET /api/departments

**Screen 5: Prescription Management**
- **Description:** Create and view prescriptions for patients
- **Key Elements:** Prescription form, Patient selector, Medication list, History view
- **API Endpoints Used:** GET /api/prescriptions, POST /api/prescriptions

**Screen 6: Billing Dashboard**
- **Description:** View and manage patient bills and payments
- **Key Elements:** Billing table, Payment status indicators, Generate Bill form
- **API Endpoints Used:** GET /api/billings, POST /api/billings

### 3.6 User Flows

**Flow 1: User Registration and Login**

1. User accesses registration endpoint
2. System validates user input (name, email, password, role)
3. System hashes password and creates user account
4. System returns success message
5. User logs in with credentials
6. System validates credentials
7. System generates authentication token
8. System returns token to user
9. User includes token in subsequent API requests

**Flow 2: Booking an Appointment**

1. User (authenticated) requests list of patients (GET /api/patients)
2. User requests list of doctors (GET /api/doctors)
3. User requests doctor schedules (GET /api/schedules)
4. User selects patient, doctor, date, and time
5. User sends appointment creation request (POST /api/appointments)
6. System validates appointment data
7. System checks for conflicts
8. System creates appointment with "pending" status
9. System returns appointment details
10. User can update appointment status later (PUT /api/appointments/{id})

**Flow 3: Creating a Prescription**

1. Doctor views appointment details (GET /api/appointments/{id})
2. Doctor creates prescription (POST /api/prescriptions)
3. System links prescription to patient and appointment
4. System stores prescription details
5. System returns prescription confirmation
6. Prescription can be viewed in patient history (GET /api/prescriptions?patient_id={id})

**Flow 4: Processing Billing**

1. Staff member views completed appointments
2. Staff creates bill for appointment (POST /api/billings)
3. System links bill to patient and appointment
4. System stores billing amount and status
5. Staff can update payment status (PUT /api/billings/{id})
6. System tracks payment history

---

## 4. Database Architecture (ERD)

### 4.1 Entity Relationship Diagram

```
┌─────────────┐         ┌──────────────┐         ┌─────────────┐
│    Users    │         │   Patients   │         │   Doctors   │
├─────────────┤         ├──────────────┤         ├─────────────┤
│ id (PK)     │         │ id (PK)      │         │ id (PK)     │
│ name        │         │ name         │         │ name        │
│ email       │         │ email        │         │ email       │
│ password    │         │ phone        │         │ phone       │
│ role        │         │ address      │         │ department  │
│ created_at  │         │ dob          │         │ created_at  │
│ updated_at  │         │ created_at   │         │ updated_at  │
└─────────────┘         │ updated_at   │         └─────────────┘
                        └──────────────┘              │
                              │                       │
                              │                       │
                        ┌─────┴──────┐         ┌──────┴──────┐
                        │            │         │             │
                   ┌────▼────┐  ┌───▼────┐ ┌──▼────────┐ ┌─▼─────────┐
                   │Appoint- │  │Prescrip│ │ Schedules │ │Departments│
                   │  ments  │  │ tions  │ │           │ │           │
                   ├─────────┤  ├────────┤ ├───────────┤ ├───────────┤
                   │id (PK)  │  │id (PK) │ │id (PK)    │ │id (PK)    │
                   │patient_ │  │patient │ │doctor_id  │ │name       │
                   │  id(FK) │  │_id(FK) │ │date       │ │created_at │
                   │doctor_  │  │appoint │ │time       │ │updated_at │
                   │  id(FK) │  │ment_id │ │created_at │ └───────────┘
                   │date     │  │(FK)    │ │updated_at │
                   │time     │  │medicat │ └───────────┘
                   │status   │  │ion     │
                   │created_ │  │dosage  │ ┌─────────────┐
                   │  at     │  │instruct│ │  Billings   │
                   │updated_ │  │ions    │ ├─────────────┤
                   │  at     │  │created │ │id (PK)      │
                   └─────────┘  │_at     │ │patient_id   │
                                │updated │ │(FK)         │
                                │_at     │ │appointment_ │
                                └────────┘ │id (FK)       │
                                           │amount        │
                                           │status        │
                                           │created_at    │
                                           │updated_at    │
                                           └─────────────┘
                                                  │
                                           ┌──────┴──────┐
                                           │  Feedbacks  │
                                           ├─────────────┤
                                           │id (PK)      │
                                           │patient_id   │
                                           │(FK)         │
                                           │rating       │
                                           │comment      │
                                           │created_at   │
                                           │updated_at   │
                                           └─────────────┘
```

### 4.2 Entity Descriptions

**Entity 1: Users**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| name | VARCHAR(255) | NOT NULL | User's full name |
| email | VARCHAR(255) | NOT NULL, UNIQUE | User's email address |
| email_verified_at | TIMESTAMP | NULLABLE | Email verification timestamp |
| password | VARCHAR(255) | NOT NULL | Hashed password |
| role | VARCHAR(50) | NOT NULL | User role (admin, doctor, staff) |
| remember_token | VARCHAR(100) | NULLABLE | Remember me token |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 2: Patients**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| name | VARCHAR(255) | NOT NULL | Patient's full name |
| email | VARCHAR(255) | NULLABLE, UNIQUE | Patient's email address |
| phone | VARCHAR(20) | NULLABLE | Contact phone number |
| address | TEXT | NULLABLE | Patient's address |
| date_of_birth | DATE | NULLABLE | Patient's date of birth |
| gender | VARCHAR(10) | NULLABLE | Patient's gender |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 3: Doctors**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| name | VARCHAR(255) | NOT NULL | Doctor's full name |
| email | VARCHAR(255) | NULLABLE, UNIQUE | Doctor's email address |
| phone | VARCHAR(20) | NULLABLE | Contact phone number |
| specialization | VARCHAR(255) | NULLABLE | Medical specialization |
| department_id | BIGINT UNSIGNED | FOREIGN KEY | Reference to departments table |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 4: Departments**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| name | VARCHAR(255) | NOT NULL | Department name |
| description | TEXT | NULLABLE | Department description |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 5: Appointments**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| patient_id | BIGINT UNSIGNED | FOREIGN KEY, NOT NULL | Reference to patients table |
| doctor_id | BIGINT UNSIGNED | FOREIGN KEY, NOT NULL | Reference to doctors table |
| appointment_date | DATE | NOT NULL | Date of appointment |
| appointment_time | TIME | NOT NULL | Time of appointment |
| status | VARCHAR(20) | DEFAULT 'pending' | Status (pending, approved, cancelled, completed) |
| notes | TEXT | NULLABLE | Additional notes |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 6: Schedules**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| doctor_id | BIGINT UNSIGNED | FOREIGN KEY, NOT NULL | Reference to doctors table |
| day_of_week | VARCHAR(20) | NOT NULL | Day of the week |
| start_time | TIME | NOT NULL | Start time |
| end_time | TIME | NOT NULL | End time |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 7: Prescriptions**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| patient_id | BIGINT UNSIGNED | FOREIGN KEY, NOT NULL | Reference to patients table |
| appointment_id | BIGINT UNSIGNED | FOREIGN KEY, NULLABLE | Reference to appointments table |
| medication | VARCHAR(255) | NOT NULL | Medication name |
| dosage | VARCHAR(100) | NULLABLE | Dosage instructions |
| instructions | TEXT | NULLABLE | Additional instructions |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 8: Billings**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| patient_id | BIGINT UNSIGNED | FOREIGN KEY, NOT NULL | Reference to patients table |
| appointment_id | BIGINT UNSIGNED | FOREIGN KEY, NULLABLE | Reference to appointments table |
| amount | DECIMAL(10,2) | NOT NULL | Billing amount |
| status | VARCHAR(20) | DEFAULT 'pending' | Payment status (pending, paid, overdue) |
| payment_date | DATE | NULLABLE | Date of payment |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 9: Feedbacks**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| patient_id | BIGINT UNSIGNED | FOREIGN KEY, NOT NULL | Reference to patients table |
| appointment_id | BIGINT UNSIGNED | FOREIGN KEY, NULLABLE | Reference to appointments table |
| rating | INT | NULLABLE | Rating (1-5) |
| comment | TEXT | NULLABLE | Feedback comment |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

**Entity 10: Roles**

| Field | Data Type | Constraints | Description |
|-------|-----------|-------------|-------------|
| id | BIGINT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique identifier |
| name | VARCHAR(255) | NOT NULL, UNIQUE | Role name |
| description | TEXT | NULLABLE | Role description |
| created_at | TIMESTAMP | NULLABLE | Record creation timestamp |
| updated_at | TIMESTAMP | NULLABLE | Record update timestamp |

### 4.3 Relationships

**Relationship 1: Patients ← One-to-Many → Appointments**
- **Type:** One-to-Many
- **Description:** One patient can have multiple appointments, but each appointment belongs to one patient.

**Relationship 2: Doctors ← One-to-Many → Appointments**
- **Type:** One-to-Many
- **Description:** One doctor can have multiple appointments, but each appointment is assigned to one doctor.

**Relationship 3: Doctors ← One-to-Many → Schedules**
- **Type:** One-to-Many
- **Description:** One doctor can have multiple schedule entries, but each schedule entry belongs to one doctor.

**Relationship 4: Departments ← One-to-Many → Doctors**
- **Type:** One-to-Many
- **Description:** One department can have multiple doctors, but each doctor belongs to one department.

**Relationship 5: Patients ← One-to-Many → Prescriptions**
- **Type:** One-to-Many
- **Description:** One patient can have multiple prescriptions, but each prescription belongs to one patient.

**Relationship 6: Appointments ← One-to-One → Prescriptions**
- **Type:** One-to-One (Optional)
- **Description:** One appointment can have one prescription, and one prescription can be linked to one appointment.

**Relationship 7: Patients ← One-to-Many → Billings**
- **Type:** One-to-Many
- **Description:** One patient can have multiple bills, but each bill belongs to one patient.

**Relationship 8: Appointments ← One-to-One → Billings**
- **Type:** One-to-One (Optional)
- **Description:** One appointment can generate one bill, and one bill can be linked to one appointment.

**Relationship 9: Patients ← One-to-Many → Feedbacks**
- **Type:** One-to-Many
- **Description:** One patient can submit multiple feedback entries, but each feedback belongs to one patient.

### 4.4 Database Normalization

The database follows **Third Normal Form (3NF)** principles:

**First Normal Form (1NF):**
- All tables have atomic values (no multi-valued attributes)
- Each column contains single, indivisible values
- No repeating groups

**Second Normal Form (2NF):**
- All tables are in 1NF
- All non-key attributes are fully dependent on the primary key
- No partial dependencies exist

**Third Normal Form (3NF):**
- All tables are in 2NF
- No transitive dependencies (non-key attributes don't depend on other non-key attributes)
- Each table represents a single entity

**Examples of Normalization Applied:**
- **Departments table:** Separated from doctors to avoid data redundancy
- **Appointments table:** Uses foreign keys instead of storing duplicate patient/doctor information
- **Prescriptions table:** Linked to patients and appointments via foreign keys
- **Billings table:** References patients and appointments rather than duplicating data

**Benefits:**
- Reduced data redundancy
- Improved data integrity
- Easier maintenance and updates
- Better query performance with proper indexing

---

## 5. Application Features & Functionality

### 5.1 Feature 1: Patient Management

**Description:** 
Complete CRUD (Create, Read, Update, Delete) operations for managing patient records. This feature allows clinic staff to register new patients, view patient information, update patient details, and maintain patient history.

**Functionality:**
- Create new patient records with personal information (name, email, phone, address, date of birth, gender)
- View list of all patients with pagination support
- Retrieve individual patient details by ID
- Update existing patient information
- Delete patient records (with proper authorization)
- Search and filter patients by various criteria

**Implementation Details:**
- **Controller:** `PatientController` handles all HTTP requests
- **Model:** `Patient` model extends Laravel's Eloquent Model
- **Routes:** RESTful routes using `Route::apiResource('patients', PatientController::class)`
- **Validation:** Input validation using Laravel's validation rules
- **Response Format:** JSON responses with consistent structure

**API Endpoints:**
- `GET /api/patients` - List all patients
- `GET /api/patients/{id}` - Get specific patient
- `POST /api/patients` - Create new patient
- `PUT /api/patients/{id}` - Update patient
- `DELETE /api/patients/{id}` - Delete patient

**Screenshots:** *[Screenshots would be included here showing API responses in Postman or similar tool]*

### 5.2 Feature 2: Doctor Management

**Description:**
Manage doctor profiles including their personal information, specialization, and department assignments. This feature enables administrators to maintain a directory of all doctors in the clinic.

**Functionality:**
- Create doctor profiles with contact information
- Assign doctors to departments
- View all doctors with department information
- Update doctor details and department assignments
- Remove doctors from the system
- Filter doctors by department

**Implementation Details:**
- **Controller:** `DoctorController` manages doctor-related operations
- **Model:** `Doctor` model with relationship to `Department`
- **Relationships:** Doctor belongs to Department (Many-to-One)
- **Validation:** Ensures required fields are provided and department exists

**API Endpoints:**
- `GET /api/doctors` - List all doctors
- `GET /api/doctors/{id}` - Get specific doctor
- `POST /api/doctors` - Create new doctor
- `PUT /api/doctors/{id}` - Update doctor
- `DELETE /api/doctors/{id}` - Delete doctor

### 5.3 Feature 3: Appointment Scheduling

**Description:**
Comprehensive appointment management system that allows booking appointments between patients and doctors, tracking appointment status, and managing schedules.

**Functionality:**
- Book new appointments with patient, doctor, date, and time
- View all appointments with patient and doctor details
- Update appointment status (pending, approved, cancelled, completed)
- Filter appointments by status, date, doctor, or patient
- View appointment history
- Prevent double-booking conflicts

**Implementation Details:**
- **Controller:** `AppointmentController` handles appointment operations
- **Model:** `Appointment` with relationships to `Patient` and `Doctor`
- **Validation:** 
  - Validates patient and doctor exist
  - Ensures date and time are provided
  - Validates status values
- **Relationships:** 
  - Appointment belongs to Patient
  - Appointment belongs to Doctor
- **Eager Loading:** Uses `with(['patient', 'doctor'])` for efficient data retrieval

**API Endpoints:**
- `GET /api/appointments` - List all appointments (with patient and doctor info)
- `GET /api/appointments/{id}` - Get specific appointment
- `POST /api/appointments` - Create new appointment
- `PUT /api/appointments/{id}` - Update appointment
- `DELETE /api/appointments/{id}` - Delete appointment

**Code Snippet:**
```php
public function store(Request $request)
{
    $validated = $request->validate([
        'patient_id' => 'required|exists:patients,id',
        'doctor_id' => 'required|exists:doctors,id',
        'appointment_date' => 'required|date',
        'appointment_time' => 'required',
        'status' => 'in:pending,approved,cancelled,completed'
    ]);

    $appointment = Appointment::create($validated);
    return response()->json(['message' => 'Appointment booked', 'data' => $appointment], 201);
}
```

### 5.4 Feature 4: Department Management

**Description:**
Organize the clinic into different departments (e.g., Cardiology, Pediatrics, General Medicine) and manage department information.

**Functionality:**
- Create new departments
- View all departments
- Update department information
- Delete departments
- View doctors assigned to each department

**Implementation Details:**
- **Controller:** `DepartmentController`
- **Model:** `Department` model
- **Relationships:** Department has many Doctors

**API Endpoints:**
- `GET /api/departments` - List all departments
- `GET /api/departments/{id}` - Get specific department
- `POST /api/departments` - Create new department
- `PUT /api/departments/{id}` - Update department
- `DELETE /api/departments/{id}` - Delete department

### 5.5 Feature 5: Schedule Management

**Description:**
Manage doctor availability schedules to control when appointments can be booked.

**Functionality:**
- Create schedule entries for doctors
- Define available days and times
- Update schedule information
- View doctor schedules
- Delete schedule entries

**Implementation Details:**
- **Controller:** `ScheduleController`
- **Model:** `Schedule` model
- **Relationships:** Schedule belongs to Doctor

**API Endpoints:**
- `GET /api/schedules` - List all schedules
- `GET /api/schedules/{id}` - Get specific schedule
- `POST /api/schedules` - Create new schedule
- `PUT /api/schedules/{id}` - Update schedule
- `DELETE /api/schedules/{id}` - Delete schedule

### 5.6 Feature 6: Prescription Management

**Description:**
Create and manage patient prescriptions linked to appointments, allowing doctors to prescribe medications and treatments.

**Functionality:**
- Create prescriptions for patients
- Link prescriptions to appointments
- Store medication details, dosage, and instructions
- View prescription history for patients
- Update prescription information

**Implementation Details:**
- **Controller:** `PrescriptionController`
- **Model:** `Prescription` model
- **Relationships:** 
  - Prescription belongs to Patient
  - Prescription belongs to Appointment (optional)

**API Endpoints:**
- `GET /api/prescriptions` - List all prescriptions
- `GET /api/prescriptions/{id}` - Get specific prescription
- `POST /api/prescriptions` - Create new prescription
- `PUT /api/prescriptions/{id}` - Update prescription
- `DELETE /api/prescriptions/{id}` - Delete prescription

### 5.7 Feature 7: Billing System

**Description:**
Generate and manage bills for patient services, track payments, and maintain billing records.

**Functionality:**
- Create bills linked to patients and appointments
- Set billing amounts
- Track payment status (pending, paid, overdue)
- Update payment information
- View billing history

**Implementation Details:**
- **Controller:** `BillingController`
- **Model:** `Billing` model
- **Relationships:**
  - Billing belongs to Patient
  - Billing belongs to Appointment (optional)

**API Endpoints:**
- `GET /api/billings` - List all billings
- `GET /api/billings/{id}` - Get specific billing
- `POST /api/billings` - Create new billing
- `PUT /api/billings/{id}` - Update billing
- `DELETE /api/billings/{id}` - Delete billing

### 5.8 Feature 8: Feedback System

**Description:**
Collect and manage patient feedback and reviews to improve clinic services.

**Functionality:**
- Submit feedback for appointments
- Rate services (1-5 scale)
- Add comments and suggestions
- View feedback history
- Link feedback to patients and appointments

**Implementation Details:**
- **Controller:** `FeedbackController`
- **Model:** `Feedback` model
- **Relationships:**
  - Feedback belongs to Patient
  - Feedback belongs to Appointment (optional)

**API Endpoints:**
- `GET /api/feedbacks` - List all feedbacks
- `GET /api/feedbacks/{id}` - Get specific feedback
- `POST /api/feedbacks` - Create new feedback
- `PUT /api/feedbacks/{id}` - Update feedback
- `DELETE /api/feedbacks/{id}` - Delete feedback

### 5.9 Feature 9: User Authentication & Authorization

**Description:**
Secure user authentication system using Laravel Sanctum for token-based API authentication and role-based access control.

**Functionality:**
- User registration with role assignment
- User login with email and password
- Token-based authentication
- Protected API routes
- User logout and token invalidation
- Role-based access control (Admin, Doctor, Staff)

**Implementation Details:**
- **Controller:** `AuthController` handles authentication
- **Middleware:** `auth:sanctum` protects routes
- **Token Management:** Laravel Sanctum generates and manages tokens
- **Password Security:** Passwords hashed using bcrypt
- **Validation:** Input validation for registration and login

**API Endpoints:**
- `POST /api/register` - Register new user
- `POST /api/login` - Login user (returns token)
- `POST /api/logout` - Logout user (requires authentication)

**Code Snippet:**
```php
public function login(Request $request)
{
    $credentials = $request->validate([
        'email' => 'required|email',
        'password' => 'required'
    ]);

    $user = User::where('email', $credentials['email'])->first();

    if (!$user || !Hash::check($credentials['password'], $user->password)) {
        return response()->json(['message' => 'Invalid credentials'], 401);
    }

    $token = $user->createToken('auth_token')->plainTextToken;

    return response()->json([
        'message' => 'Login successful',
        'token' => $token,
        'user' => $user
    ]);
}
```

---

## 6. Security & Error Handling

### 6.1 Security Measures Implemented

**Authentication:**
- **Laravel Sanctum:** Token-based authentication for API access
- **Password Hashing:** All passwords hashed using bcrypt algorithm
- **Token Management:** Secure token generation and validation
- **Session Security:** CSRF protection for web routes

**Authorization:**
- **Role-Based Access Control:** User roles (admin, doctor, staff) for permission management
- **Middleware Protection:** `auth:sanctum` middleware protects all API routes
- **Route Protection:** All resource routes require authentication token

**Input Validation:**
- **Laravel Validation:** All inputs validated using Laravel's validation rules
- **Type Checking:** Data type validation for all fields
- **Existence Validation:** Foreign key validation (e.g., `exists:patients,id`)
- **Format Validation:** Email format, date format validation

**Data Protection:**
- **Password Hashing:** Passwords never stored in plain text
- **SQL Injection Prevention:** Eloquent ORM uses parameterized queries
- **XSS Protection:** Laravel automatically escapes output
- **CSRF Protection:** CSRF tokens for web forms

**Protection Against Vulnerabilities:**
- **SQL Injection:** Prevented through Eloquent ORM and parameterized queries
- **XSS (Cross-Site Scripting):** Laravel Blade templating escapes output automatically
- **CSRF (Cross-Site Request Forgery):** CSRF middleware protects web routes
- **Authentication Bypass:** All protected routes require valid token
- **Mass Assignment:** Laravel's mass assignment protection
- **Rate Limiting:** Can be configured for API endpoints

**Example Validation:**
```php
$validated = $request->validate([
    'patient_id' => 'required|exists:patients,id',
    'doctor_id' => 'required|exists:doctors,id',
    'appointment_date' => 'required|date',
    'appointment_time' => 'required',
    'status' => 'in:pending,approved,cancelled,completed'
]);
```

### 6.2 Error Handling

**Error Response Format:**
All errors follow a consistent JSON format:
```json
{
    "message": "Error description",
    "errors": {
        "field_name": ["Error message"]
    }
}
```

**HTTP Status Codes:**
- `200 OK` - Successful GET, PUT requests
- `201 Created` - Successful POST requests
- `204 No Content` - Successful DELETE requests
- `400 Bad Request` - Invalid input data
- `401 Unauthorized` - Authentication required or invalid token
- `404 Not Found` - Resource not found
- `422 Unprocessable Entity` - Validation errors
- `500 Internal Server Error` - Server errors

**Validation Error Handling:**
- Laravel automatically returns validation errors in JSON format
- Field-specific error messages for better user experience
- Clear error messages indicating what went wrong

**Authentication Error Handling:**
- Returns 401 status for invalid credentials
- Clear error messages: "Invalid credentials"
- Token expiration handling

**Database Error Handling:**
- Eloquent exceptions caught and handled
- Foreign key constraint errors handled gracefully
- Database connection errors logged

**Example Error Response:**
```json
{
    "message": "The given data was invalid.",
    "errors": {
        "email": ["The email has already been taken."],
        "password": ["The password must be at least 6 characters."]
    }
}
```

**Exception Handling:**
- Laravel's exception handler catches all exceptions
- Logs errors for debugging
- Returns user-friendly error messages
- Prevents sensitive information leakage

---

## 7. Installation & Setup Instructions

### 7.1 Prerequisites

- **PHP:** Version 8.0.2 or higher
- **Composer:** PHP dependency manager (latest version)
- **Node.js:** Version 14.x or higher
- **npm:** Node package manager (comes with Node.js)
- **MySQL:** Version 5.7+ or PostgreSQL 10+ or SQLite 3.8.8+
- **Web Server:** Apache/Nginx (or PHP built-in server for development)
- **Git:** Version control system (optional but recommended)

### 7.2 Installation Steps

**Step 1: Clone the Repository**
```bash
git clone https://github.com/ajjongko-coder/clinic.git
cd clinic
```

**Step 2: Install PHP Dependencies**
```bash
composer install
```

**Step 3: Install Frontend Dependencies**
```bash
npm install
```

**Step 4: Configure Environment Variables**
```bash
cp .env.example .env
php artisan key:generate
```

Edit the `.env` file and configure:
```env
APP_NAME="Clinic Management System"
APP_ENV=local
APP_KEY=base64:... (generated automatically)
APP_DEBUG=true
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=clinic_db
DB_USERNAME=root
DB_PASSWORD=

# Sanctum Configuration
SANCTUM_STATEFUL_DOMAINS=localhost,127.0.0.1
```

**Step 5: Set Up the Database**
1. Create a new MySQL database:
```sql
CREATE DATABASE clinic_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

2. Run migrations:
```bash
php artisan migrate
```

**Step 6: (Optional) Seed Database**
```bash
php artisan db:seed
```

**Step 7: Build Frontend Assets**
```bash
npm run build
```

Or for development:
```bash
npm run dev
```

**Step 8: Start the Development Server**
```bash
php artisan serve
```

The application will be available at `http://localhost:8000`

### 7.3 Running the Application

**Accessing the API:**
- Base URL: `http://localhost:8000/api`
- Status Check: `GET http://localhost:8000/api/status`

**Testing API Endpoints:**
Use tools like Postman, Insomnia, or cURL to test API endpoints.

**Example: Register a User**
```bash
curl -X POST http://localhost:8000/api/register \
  -H "Content-Type: application/json" \
  -d '{
    "name": "John Doe",
    "email": "john@example.com",
    "password": "password123",
    "role": "admin"
  }'
```

**Example: Login**
```bash
curl -X POST http://localhost:8000/api/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "john@example.com",
    "password": "password123"
  }'
```

**Example: Access Protected Route**
```bash
curl -X GET http://localhost:8000/api/patients \
  -H "Authorization: Bearer YOUR_TOKEN_HERE"
```

---

## 8. Testing

### 8.1 Test Cases

| Test Case | Steps | Expected Result | Actual Result | Status |
|-----------|-------|-----------------|---------------|--------|
| **TC001: User Registration** | 1. Send POST request to /api/register<br>2. Provide valid user data<br>3. Check response | User created successfully, returns 201 status | User created, 201 returned | ✅ Pass |
| **TC002: User Login** | 1. Send POST request to /api/login<br>2. Provide valid credentials<br>3. Check response | Returns authentication token and user data | Token generated successfully | ✅ Pass |
| **TC003: Invalid Login** | 1. Send POST request to /api/login<br>2. Provide invalid credentials<br>3. Check response | Returns 401 Unauthorized error | 401 error returned | ✅ Pass |
| **TC004: Access Protected Route Without Token** | 1. Send GET request to /api/patients<br>2. Do not include Authorization header | Returns 401 Unauthorized error | 401 error returned | ✅ Pass |
| **TC005: Create Patient** | 1. Login and get token<br>2. Send POST request to /api/patients<br>3. Include token in header<br>4. Provide patient data | Patient created, returns 201 status | Patient created successfully | ✅ Pass |
| **TC006: Get All Patients** | 1. Login and get token<br>2. Send GET request to /api/patients<br>3. Include token in header | Returns list of all patients | Patient list returned | ✅ Pass |
| **TC007: Get Single Patient** | 1. Login and get token<br>2. Send GET request to /api/patients/{id}<br>3. Include token in header | Returns patient details | Patient details returned | ✅ Pass |
| **TC008: Update Patient** | 1. Login and get token<br>2. Send PUT request to /api/patients/{id}<br>3. Include updated data | Patient updated successfully | Patient updated | ✅ Pass |
| **TC009: Delete Patient** | 1. Login and get token<br>2. Send DELETE request to /api/patients/{id}<br>3. Include token in header | Patient deleted, returns 204 status | Patient deleted | ✅ Pass |
| **TC010: Create Appointment** | 1. Login and get token<br>2. Send POST request to /api/appointments<br>3. Provide valid appointment data | Appointment created successfully | Appointment created | ✅ Pass |
| **TC011: Validation Error** | 1. Send POST request with invalid data<br>2. Missing required fields | Returns 422 status with validation errors | Validation errors returned | ✅ Pass |
| **TC012: Get Appointments with Relations** | 1. Login and get token<br>2. Send GET request to /api/appointments | Returns appointments with patient and doctor details | Relations loaded correctly | ✅ Pass |
| **TC013: Create Doctor** | 1. Login and get token<br>2. Send POST request to /api/doctors<br>3. Provide doctor data | Doctor created successfully | Doctor created | ✅ Pass |
| **TC014: Create Prescription** | 1. Login and get token<br>2. Send POST request to /api/prescriptions<br>3. Link to patient and appointment | Prescription created successfully | Prescription created | ✅ Pass |
| **TC015: Create Billing** | 1. Login and get token<br>2. Send POST request to /api/billings<br>3. Provide billing data | Billing created successfully | Billing created | ✅ Pass |

### 8.2 Known Issues & Limitations

**Known Issues:**
1. **Double-Booking Prevention:** Currently, the system does not prevent double-booking of the same doctor at the same time. This should be implemented in future versions.

2. **Pagination:** List endpoints do not currently implement pagination. For large datasets, this may cause performance issues.

3. **Search Functionality:** No advanced search or filtering capabilities implemented yet.

4. **File Uploads:** No support for file uploads (e.g., patient documents, prescription attachments).

5. **Email Notifications:** No email notification system for appointment confirmations or reminders.

**Limitations:**
1. **Frontend:** Currently API-only, no web frontend or mobile app included.

2. **Real-time Updates:** No real-time updates or WebSocket support for live appointment changes.

3. **Reporting:** No built-in reporting or analytics features.

4. **Multi-tenancy:** System designed for single clinic, not multi-tenant architecture.

5. **Payment Integration:** No payment gateway integration for online payments.

**Future Improvements:**
- Implement appointment conflict detection
- Add pagination to all list endpoints
- Implement advanced search and filtering
- Add file upload support
- Integrate email notification system
- Develop web frontend using React/Vue
- Develop mobile application
- Add reporting and analytics dashboard
- Implement real-time updates
- Add payment gateway integration
- Implement audit logging
- Add backup and recovery features

---

## 9. Code Quality & Documentation

### 9.1 Code Structure

```
clinic/
├── app/
│   ├── Console/
│   │   └── Kernel.php                 # Artisan command scheduling
│   ├── Exceptions/
│   │   └── Handler.php                # Exception handling
│   ├── Http/
│   │   ├── Controllers/
│   │   │   ├── Api/
│   │   │   │   └── AuthController.php # API authentication
│   │   │   ├── AppointmentController.php
│   │   │   ├── AuthController.php
│   │   │   ├── BillingController.php
│   │   │   ├── DepartmentController.php
│   │   │   ├── DoctorController.php
│   │   │   ├── FeedbackController.php
│   │   │   ├── PatientController.php
│   │   │   ├── PrescriptionController.php
│   │   │   ├── RoleController.php
│   │   │   ├── ScheduleController.php
│   │   │   └── UserController.php
│   │   ├── Kernel.php                 # HTTP kernel, middleware
│   │   └── Middleware/
│   │       ├── Authenticate.php
│   │       ├── EncryptCookies.php
│   │       └── ...                     # Other middleware
│   ├── Models/
│   │   ├── Appointment.php
│   │   ├── Billing.php
│   │   ├── Department.php
│   │   ├── Doctor.php
│   │   ├── Feedback.php
│   │   ├── Patient.php
│   │   ├── Prescription.php
│   │   ├── Role.php
│   │   ├── Schedule.php
│   │   └── User.php
│   └── Providers/
│       ├── AppServiceProvider.php
│       ├── AuthServiceProvider.php
│       └── ...                         # Service providers
├── bootstrap/
│   └── app.php                         # Application bootstrap
├── config/                             # Configuration files
│   ├── app.php
│   ├── auth.php
│   ├── database.php
│   └── ...
├── database/
│   ├── factories/                      # Model factories
│   ├── migrations/                     # Database migrations
│   └── seeders/                        # Database seeders
├── public/
│   └── index.php                       # Entry point
├── resources/
│   ├── css/
│   │   └── app.css                     # Styles
│   ├── js/
│   │   ├── app.js                      # JavaScript
│   │   └── bootstrap.js
│   └── views/
│       └── welcome.blade.php           # Blade templates
├── routes/
│   ├── api.php                         # API routes
│   ├── web.php                         # Web routes
│   ├── channels.php                    # Broadcast channels
│   └── console.php                     # Artisan commands
├── storage/                            # Storage directory
├── tests/                              # Test files
│   ├── Feature/
│   └── Unit/
├── .env                                # Environment variables
├── .env.example                        # Environment template
├── composer.json                       # PHP dependencies
├── package.json                        # Node dependencies
├── README.md                           # Project documentation
└── vite.config.js                      # Vite configuration
```

### 9.2 Code Standards

**Naming Conventions:**
- **Variables:** camelCase (e.g., `$patientId`, `$appointmentDate`)
- **Functions/Methods:** camelCase (e.g., `getPatient()`, `createAppointment()`)
- **Classes:** PascalCase (e.g., `PatientController`, `Appointment`)
- **Constants:** UPPER_SNAKE_CASE (e.g., `MAX_APPOINTMENTS`)
- **Database Tables:** snake_case, plural (e.g., `patients`, `appointments`)
- **Database Columns:** snake_case (e.g., `patient_id`, `appointment_date`)

**Code Style:**
- Follows PSR-12 coding standards
- Uses Laravel Pint for code formatting (can be configured)
- Consistent indentation (4 spaces)
- Proper spacing and line breaks

**Comments & Documentation:**
- PHPDoc comments for classes and methods
- Inline comments for complex logic
- README.md with project overview
- API documentation in code comments

**Version Control:**
- Git for version control
- Meaningful commit messages
- Feature-based branching (when applicable)
- GitHub repository: https://github.com/ajjongko-coder/clinic.git

**Example Code Style:**
```php
/**
 * Create a new appointment.
 *
 * @param  \Illuminate\Http\Request  $request
 * @return \Illuminate\Http\JsonResponse
 */
public function store(Request $request)
{
    $validated = $request->validate([
        'patient_id' => 'required|exists:patients,id',
        'doctor_id' => 'required|exists:doctors,id',
        'appointment_date' => 'required|date',
        'appointment_time' => 'required',
    ]);

    $appointment = Appointment::create($validated);

    return response()->json([
        'message' => 'Appointment booked',
        'data' => $appointment
    ], 201);
}
```

### 9.3 API Endpoints

**Authentication Endpoints:**

**POST /api/register**
- **Description:** Register a new user account
- **Request:**
  ```json
  {
    "name": "John Doe",
    "email": "john@example.com",
    "password": "password123",
    "role": "admin"
  }
  ```
- **Response:** `201 Created`
  ```json
  {
    "message": "User registered successfully",
    "user": {
      "id": 1,
      "name": "John Doe",
      "email": "john@example.com",
      "role": "admin",
      "created_at": "2024-01-01T00:00:00.000000Z"
    }
  }
  ```
- **Status Codes:** 201 (Created), 422 (Validation Error)

**POST /api/login**
- **Description:** Authenticate user and receive access token
- **Request:**
  ```json
  {
    "email": "john@example.com",
    "password": "password123"
  }
  ```
- **Response:** `200 OK`
  ```json
  {
    "message": "Login successful",
    "token": "1|abcdefghijklmnopqrstuvwxyz",
    "user": {
      "id": 1,
      "name": "John Doe",
      "email": "john@example.com",
      "role": "admin"
    }
  }
  ```
- **Status Codes:** 200 (Success), 401 (Unauthorized), 422 (Validation Error)

**POST /api/logout**
- **Description:** Logout user and invalidate token
- **Headers:** `Authorization: Bearer {token}`
- **Response:** `200 OK`
  ```json
  {
    "message": "Logged out successfully"
  }
  ```
- **Status Codes:** 200 (Success), 401 (Unauthorized)

**Patient Endpoints:**

**GET /api/patients**
- **Description:** Get list of all patients
- **Headers:** `Authorization: Bearer {token}`
- **Response:** `200 OK`
  ```json
  [
    {
      "id": 1,
      "name": "Jane Smith",
      "email": "jane@example.com",
      "phone": "1234567890",
      "address": "123 Main St",
      "date_of_birth": "1990-01-01",
      "gender": "Female",
      "created_at": "2024-01-01T00:00:00.000000Z",
      "updated_at": "2024-01-01T00:00:00.000000Z"
    }
  ]
  ```
- **Status Codes:** 200 (Success), 401 (Unauthorized)

**GET /api/patients/{id}**
- **Description:** Get specific patient by ID
- **Headers:** `Authorization: Bearer {token}`
- **Response:** `200 OK` (Same format as above, single object)
- **Status Codes:** 200 (Success), 401 (Unauthorized), 404 (Not Found)

**POST /api/patients**
- **Description:** Create a new patient
- **Headers:** `Authorization: Bearer {token}`, `Content-Type: application/json`
- **Request:**
  ```json
  {
    "name": "Jane Smith",
    "email": "jane@example.com",
    "phone": "1234567890",
    "address": "123 Main St",
    "date_of_birth": "1990-01-01",
    "gender": "Female"
  }
  ```
- **Response:** `201 Created`
- **Status Codes:** 201 (Created), 401 (Unauthorized), 422 (Validation Error)

**PUT /api/patients/{id}**
- **Description:** Update existing patient
- **Headers:** `Authorization: Bearer {token}`, `Content-Type: application/json`
- **Request:** (Same as POST, all fields optional)
- **Response:** `200 OK`
- **Status Codes:** 200 (Success), 401 (Unauthorized), 404 (Not Found), 422 (Validation Error)

**DELETE /api/patients/{id}**
- **Description:** Delete a patient
- **Headers:** `Authorization: Bearer {token}`
- **Response:** `204 No Content`
- **Status Codes:** 204 (No Content), 401 (Unauthorized), 404 (Not Found)

**Appointment Endpoints:**

**GET /api/appointments**
- **Description:** Get list of all appointments with patient and doctor details
- **Headers:** `Authorization: Bearer {token}`
- **Response:** `200 OK`
  ```json
  [
    {
      "id": 1,
      "patient_id": 1,
      "doctor_id": 1,
      "appointment_date": "2024-01-15",
      "appointment_time": "10:00:00",
      "status": "pending",
      "patient": {
        "id": 1,
        "name": "Jane Smith",
        "email": "jane@example.com"
      },
      "doctor": {
        "id": 1,
        "name": "Dr. John Doe",
        "specialization": "Cardiology"
      },
      "created_at": "2024-01-01T00:00:00.000000Z",
      "updated_at": "2024-01-01T00:00:00.000000Z"
    }
  ]
  ```
- **Status Codes:** 200 (Success), 401 (Unauthorized)

**POST /api/appointments**
- **Description:** Create a new appointment
- **Headers:** `Authorization: Bearer {token}`, `Content-Type: application/json`
- **Request:**
  ```json
  {
    "patient_id": 1,
    "doctor_id": 1,
    "appointment_date": "2024-01-15",
    "appointment_time": "10:00:00",
    "status": "pending"
  }
  ```
- **Response:** `201 Created`
  ```json
  {
    "message": "Appointment booked",
    "data": {
      "id": 1,
      "patient_id": 1,
      "doctor_id": 1,
      "appointment_date": "2024-01-15",
      "appointment_time": "10:00:00",
      "status": "pending"
    }
  }
  ```
- **Status Codes:** 201 (Created), 401 (Unauthorized), 422 (Validation Error)

**Similar endpoints exist for:**
- Doctors (`/api/doctors`)
- Departments (`/api/departments`)
- Schedules (`/api/schedules`)
- Prescriptions (`/api/prescriptions`)
- Billings (`/api/billings`)
- Feedbacks (`/api/feedbacks`)
- Roles (`/api/roles`)

All follow the same RESTful pattern: GET (list), GET/{id} (show), POST (create), PUT/{id} (update), DELETE/{id} (delete)

**Status Check Endpoint:**

**GET /api/status**
- **Description:** Check if API is running
- **Response:** `200 OK`
  ```json
  {
    "message": "Clinic API running"
  }
  ```
- **Status Codes:** 200 (Success)

---

## 10. References & Resources

- **Laravel Documentation:** https://laravel.com/docs/9.x
- **Laravel Sanctum Documentation:** https://laravel.com/docs/9.x/sanctum
- **PHP Documentation:** https://www.php.net/docs.php
- **MySQL Documentation:** https://dev.mysql.com/doc/
- **RESTful API Design:** https://restfulapi.net/
- **Postman API Testing:** https://www.postman.com/
- **Git Documentation:** https://git-scm.com/doc
- **Composer Documentation:** https://getcomposer.org/doc/
- **Vite Documentation:** https://vitejs.dev/
- **Laravel Eloquent ORM:** https://laravel.com/docs/9.x/eloquent
- **Database Normalization:** Database Design Fundamentals
- **API Security Best Practices:** OWASP API Security Top 10

---

## 11. Appendix

### 11.1 Additional Diagrams

**API Request Flow Diagram:**
```
Client Application
    ↓
HTTP Request (JSON)
    ↓
Laravel Routes (routes/api.php)
    ↓
Authentication Middleware (auth:sanctum)
    ↓
Controller (e.g., PatientController)
    ↓
Validation
    ↓
Model (e.g., Patient)
    ↓
Database (MySQL)
    ↓
Response (JSON)
    ↓
Client Application
```

**Authentication Flow:**
```
User Registration/Login
    ↓
Credentials Validation
    ↓
Token Generation (Sanctum)
    ↓
Token Returned to Client
    ↓
Token Included in Subsequent Requests
    ↓
Middleware Validates Token
    ↓
Request Processed
```

### 11.2 Supplementary Information

**GitHub Repository:**
- URL: https://github.com/ajjongko-coder/clinic.git
- Branch: main
- License: MIT

**Deployment:**
- The application can be deployed to platforms like Railway, Render, or traditional VPS
- See DEPLOYMENT.md for detailed deployment instructions

**Future Enhancements:**
- Web frontend development
- Mobile application (iOS/Android)
- Real-time notifications
- Advanced reporting and analytics
- Payment gateway integration
- Email notification system
- File upload support
- Multi-language support

**Contact Information:**
- For questions or support, please refer to the GitHub repository issues section.

---

**Student/Team Signature:** ________________________ 

**Date:** _______________
