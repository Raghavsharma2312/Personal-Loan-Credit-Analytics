-- =====================================================
-- Personal Loan & Credit Risk Analytics
-- Database Setup
-- =====================================================

CREATE DATABASE PersonalLoanAnalytics;
GO

USE PersonalLoanAnalytics;
GO


-- =====================================================
-- 1. Customers
-- =====================================================

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(20),
    AnnualIncome DECIMAL(12,2),
    EmploymentType VARCHAR(50),
    City VARCHAR(50),
    CreditScore INT
);
GO


-- =====================================================
-- 2. Branches
-- =====================================================

CREATE TABLE Branches
(
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Region VARCHAR(50)
);
GO


-- =====================================================
-- 3. Loan Applications
-- =====================================================

CREATE TABLE LoanApplications
(
    ApplicationID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ApplicationDate DATE NOT NULL,
    RequestedAmount DECIMAL(12,2),
    CreditScore INT,
    ApplicationStatus VARCHAR(20),

    CONSTRAINT FK_LoanApplications_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
GO


-- =====================================================
-- 4. Loans
-- =====================================================

CREATE TABLE Loans
(
    LoanID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    BranchID INT NOT NULL,
    LoanType VARCHAR(50),
    LoanAmount DECIMAL(12,2),
    InterestRate DECIMAL(5,2),
    LoanTermMonths INT,
    DisbursementDate DATE,
    LoanStatus VARCHAR(20),

    CONSTRAINT FK_Loans_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID),

    CONSTRAINT FK_Loans_Branches
        FOREIGN KEY (BranchID)
        REFERENCES Branches(BranchID)
);
GO


-- =====================================================
-- 5. Payments
-- =====================================================

CREATE TABLE Payments
(
    PaymentID INT PRIMARY KEY,
    LoanID INT NOT NULL,
    DueDate DATE NOT NULL,
    PaymentDate DATE,
    DueAmount DECIMAL(12,2),
    PaidAmount DECIMAL(12,2),
    PaymentStatus VARCHAR(20),

    CONSTRAINT FK_Payments_Loans
        FOREIGN KEY (LoanID)
        REFERENCES Loans(LoanID)
);
GO
