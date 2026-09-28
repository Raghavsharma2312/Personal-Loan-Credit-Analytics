# Personal Loan & Credit Risk Analytics

## Project Overview

This project analyzes personal loan and credit data for a financial institution using SQL Server.

The project focuses on customer profiles, loan applications, loan portfolio, repayment behavior, and credit risk.

## Business Objectives

* Analyze customer profiles and credit scores
* Analyze loan applications and approval rates
* Analyze loan portfolio and loan amounts
* Analyze repayment and payment delays
* Identify default loans and high-risk customers
* Generate business insights using SQL

## Database Tables

The project contains the following tables:

1. Customers
2. Branches
3. LoanApplications
4. Loans
5. Payments

### Relationships

```text
Customers
    │
    ├──────────────< LoanApplications
    │
    └──────────────< Loans
                       │
                       └──────────────< Payments

Branches
    │
    └──────────────< Loans
```

## Business Analysis

The SQL analysis covers:

* Customer Analysis
* Loan Application Analysis
* Loan Portfolio Analysis
* Repayment Analysis
* Credit Risk Analysis

## SQL Concepts Used

* SELECT and WHERE
* GROUP BY and HAVING
* Aggregate Functions
* CASE Statements
* INNER JOIN and LEFT JOIN
* Subqueries
* CTEs
* Window Functions
* RANK, DENSE_RANK and ROW_NUMBER
* LAG and LEAD
* Date Functions
* NULL Handling
* Conditional Calculations

## Tools & Technologies

* SQL Server
* SQL Server Management Studio (SSMS)
* GitHub

## Project Structure

```text
Personal-Loan-Credit-Analytics
│
├── SQL
│   ├── 01_Database_Setup.sql
│   ├── 02_Data_Validation.sql
│   └── 03_Business_Analysis.sql
│
├── Data
│   └── sample_data.sql
│
└── Documentation
    └── Project_Documentation.txt
```

## Project Purpose
The purpose of this project is to demonstrate practical SQL skills by solving real-world business problems related to personal loans, repayment behavior, and credit risk.

The purpose of this project is to demonstrate practical SQL skills by solving real-world business problems related to personal loans, repayment behavior, and credit risk.
