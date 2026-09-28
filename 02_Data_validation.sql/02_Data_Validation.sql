USE PersonalLoanAnalytics;

-- Check total records in each table

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

SELECT COUNT(*) AS TotalBranches
FROM Branches;

SELECT COUNT(*) AS TotalApplications
FROM LoanApplications;

SELECT COUNT(*) AS TotalLoans
FROM Loans;

SELECT COUNT(*) AS TotalPayments
FROM Payments;