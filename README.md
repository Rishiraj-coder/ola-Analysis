
# 🚖 Ola Ride Booking Data Analysis & Dashboard

## 📌 Project Overview

This project analyzes **Ola ride booking data** using **SQL Server and Power BI** to uncover business insights such as ride success rate, cancellations, revenue, customer behavior, vehicle performance, and payment trends.

The goal of this project is to demonstrate:

* SQL data analysis skills
* Data cleaning and transformation
* Business KPI creation
* Power BI dashboard development
* Real-world problem-solving using ride-booking data

---

## 📂 Project Files

| File Name            | Description                                            |
| -------------------- | ------------------------------------------------------ |
| `Bookings.csv`       | Raw dataset containing ride booking details            |
| `SQLQuery1.sql`      | SQL scripts for database creation, views, and analysis |
| `ola dashboard.pbix` | Power BI dashboard file with interactive visuals       |

---

## 🗄️ Dataset Description

The dataset contains booking-level ride information with the following key columns:

* Date & Time
* Booking_ID
* Booking_Status (Success, Canceled by Customer, Canceled by Driver)
* Customer_ID
* Vehicle_Type (Mini, Prime Sedan, Prime SUV, Bike, eBike, etc.)
* Pickup & Drop Location
* Ride_Distance
* Booking_Value
* Payment_Method (Cash, UPI, Credit Card)
* Driver_Ratings
* Customer_Rating
* Cancellation Reasons
* Incomplete Ride Reasons

---

## 🛠️ Tools & Technologies Used

* **SQL Server** – Data querying and business logic creation
* **Power BI** – Dashboard and visualization
* **Excel/CSV** – Raw data storage
* **DAX** – KPI calculations in Power BI

---

## 🧠 SQL Analysis Performed

The SQL file (`SQLQuery1.sql`) includes:

### ✔ Database Creation

```sql
create database Ola;
use Ola;
```

### ✔ Business Views Created

* Successful Bookings
* Ride distance per vehicle type
* Total rides canceled by customers
* Top 5 customers by ride count
* Cancellations by driver
* Prime Sedan rating analysis
* UPI payments analysis
* Average customer rating per vehicle
* Total revenue from successful rides
* Incomplete rides with reasons

These views simulate real-world business reporting scenarios.

---

## 📊 Power BI Dashboard Features

The Power BI dashboard provides:

### 📈 Key KPIs

* Total Bookings
* Successful Rides
* Cancellation Rate
* Total Revenue
* Average Ride Distance
* Average Ratings

### 📊 Visualizations

* Booking Status Distribution (Success vs Cancellations)
* Revenue by Vehicle Type
* Average Ride Distance per Vehicle
* Top 5 Customers
* Payment Method Distribution
* Customer & Driver Ratings Analysis
* Cancellation Reason Analysis

---

## 📌 Key Insights Derived

* Identified top-performing vehicle categories
* Measured cancellation patterns by customers and drivers
* Analyzed revenue contribution by vehicle type
* Evaluated customer & driver satisfaction using ratings
* Identified most preferred payment methods
* Highlighted incomplete ride trends

---

## ▶ How to Run This Project

### 🔹 Step 1: SQL Setup

1. Open SQL Server Management Studio (SSMS)
2. Create database `Ola`
3. Import `Bookings.csv` into SQL Server table `Bookings`
4. Run `SQLQuery1.sql` file

### 🔹 Step 2: Power BI

1. Open `ola dashboard.pbix`
2. Connect to the SQL database (if needed)
3. Refresh data
4. Explore interactive dashboard

---

## 💼 Business Use Case

This project simulates a real-world **ride-hailing company analytics case study**, where management needs insights on:

* Revenue optimization
* Customer retention
* Driver performance
* Cancellation reduction
* Operational efficiency

---

## 🎯 Skills Demonstrated

* SQL Query Writing
* View Creation
* Aggregations & Grouping
* Business KPI Calculation
* Data Visualization
* Dashboard Design
* Analytical Thinking

