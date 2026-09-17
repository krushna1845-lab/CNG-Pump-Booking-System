# 🚗 CNG Pump Booking System

A Java-based full-stack web application that allows users to find and book CNG pumps while providing administrative functionality to manage CNG pumps and bookings.

## 📌 Overview

The CNG Pump Booking System is designed to simplify the process of finding and booking CNG pumps.

The system provides separate functionalities for:

- 👤 Users
- ⛽ CNG Pump Operators
- 🔐 Administrators

Users can register, log in, view available CNG pumps, and make bookings. CNG pump operators can manage their pump information and view bookings. Administrators can manage registered CNG pumps and bookings.

---

## ✨ Features

### 👤 User

- User registration
- User login
- View available CNG pumps
- Search/view CNG pump details
- Book a CNG pump
- View booking information
- Booking confirmation

### ⛽ CNG Pump Management

- CNG pump registration
- Update CNG pump information
- View CNG pump details
- Delete CNG pump
- View bookings associated with pumps

### 🔐 Admin

- Admin login
- View registered CNG pumps
- Approve CNG pumps
- Delete CNG pumps
- View and manage bookings

---

## 🛠️ Technologies Used

### Backend

- Java
- Java Servlets
- JDBC

### Frontend

- HTML
- CSS
- JavaScript
- JSP

### Database

- MySQL

### Development Environment

- Eclipse IDE
- Java Development Kit (JDK)

---

## 🏗️ Project Structure

```text
CNGBooking/
│
├── database/
│   └── cng_booking.sql
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── java/
│       │           ├── CNG_Pumps.java
│       │           ├── CNG_Pumps_Register.java
│       │           ├── ConnectionDB.java
│       │           ├── User.java
│       │           ├── User_Register.java
│       │           ├── Users.java
│       │           └── admin.java
│       │
│       └── webapp/
│           ├── css/
│           ├── js/
│           ├── img/
│           ├── WEB-INF/
│           ├── *.html
│           └── *.jsp
│
├── .gitignore
└── README.md
