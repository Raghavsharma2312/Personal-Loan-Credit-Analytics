 /* Data Insertion into Branch tables */


 INSERT INTO Branches
    (BranchID, BranchName, City, Region)
VALUES
    (101, 'MG Road Branch', 'Bangalore', 'South'),
    (102, 'HSR Layout Branch', 'Bangalore', 'South'),
    (103, 'Andheri Branch', 'Mumbai', 'West'),
    (104, 'Powai Branch', 'Mumbai', 'West'),
    (105, 'Connaught Place Branch', 'Delhi', 'North'),
    (106, 'Noida Sector 18 Branch', 'Noida', 'North'),
    (107, 'Salt Lake Branch', 'Kolkata', 'East'),
    (108, 'Whitefield Branch', 'Bangalore', 'South'),
    (109, 'Pune Central Branch', 'Pune', 'West'),
    (110, 'Chennai Central Branch', 'Chennai', 'South');


 /* Data Insertion into Customer tables */

 INSERT INTO Customers
    (CustomerID, CustomerName, Age, Gender, AnnualIncome, EmploymentType, City, CreditScore)
VALUES
    (1001, 'Aarav Sharma', 29, 'Male', 650000, 'Salaried', 'Bangalore', 742),
    (1002, 'Priya Mehta', 34, 'Female', 850000, 'Salaried', 'Mumbai', 781),
    (1003, 'Rahul Verma', 41, 'Male', 1200000, 'Self-Employed', 'Delhi', 720),
    (1004, 'Sneha Iyer', 27, 'Female', 550000, 'Salaried', 'Chennai', 755),
    (1005, 'Vikram Singh', 45, 'Male', 1500000, 'Business Owner', 'Pune', 690),
    (1006, 'Ananya Rao', 31, 'Female', 720000, 'Salaried', 'Bangalore', 810),
    (1007, 'Karan Malhotra', 38, 'Male', 950000, 'Self-Employed', 'Mumbai', 705),
    (1008, 'Neha Kapoor', 26, 'Female', 480000, 'Salaried', 'Delhi', 768),
    (1009, 'Rohit Nair', 36, 'Male', 880000, 'Salaried', 'Bangalore', 735),
    (1010, 'Meera Joshi', 43, 'Female', 1100000, 'Business Owner', 'Pune', 682),
    (1011, 'Aditya Gupta', 30, 'Male', 600000, 'Salaried', 'Noida', 749),
    (1012, 'Pooja Shah', 33, 'Female', 780000, 'Salaried', 'Mumbai', 795),
    (1013, 'Arjun Patel', 39, 'Male', 1050000, 'Self-Employed', 'Ahmedabad', 715),
    (1014, 'Riya Sen', 28, 'Female', 520000, 'Salaried', 'Kolkata', 773),
    (1015, 'Manish Kumar', 47, 'Male', 1350000, 'Business Owner', 'Delhi', 675),
    (1016, 'Ishita Das', 25, 'Female', 450000, 'Salaried', 'Kolkata', 802),
    (1017, 'Siddharth Jain', 35, 'Male', 900000, 'Salaried', 'Pune', 728),
    (1018, 'Nisha Reddy', 32, 'Female', 700000, 'Self-Employed', 'Hyderabad', 760),
    (1019, 'Varun Bhat', 40, 'Male', 1150000, 'Business Owner', 'Bangalore', 698),
    (1020, 'Kavya Menon', 29, 'Female', 620000, 'Salaried', 'Chennai', 785);

     /* Data Insertion into Loan Application tables */

     INSERT INTO LoanApplications
    (ApplicationID, CustomerID, ApplicationDate, RequestedAmount, CreditScore, ApplicationStatus)
VALUES
    (5001, 1001, '2025-01-10', 500000, 742, 'Approved'),
    (5002, 1002, '2025-01-15', 800000, 781, 'Approved'),
    (5003, 1003, '2025-01-20', 1000000, 720, 'Approved'),
    (5004, 1004, '2025-01-25', 400000, 755, 'Rejected'),
    (5005, 1005, '2025-02-02', 1200000, 690, 'Approved'),
    (5006, 1006, '2025-02-08', 600000, 810, 'Approved'),
    (5007, 1007, '2025-02-15', 750000, 705, 'Rejected'),
    (5008, 1008, '2025-02-20', 350000, 768, 'Approved'),
    (5009, 1009, '2025-03-01', 650000, 735, 'Approved'),
    (5010, 1010, '2025-03-05', 900000, 682, 'Rejected'),

    (5011, 1011, '2025-03-12', 450000, 749, 'Approved'),
    (5012, 1012, '2025-03-18', 700000, 795, 'Approved'),
    (5013, 1013, '2025-03-25', 850000, 715, 'Approved'),
    (5014, 1014, '2025-04-02', 300000, 773, 'Approved'),
    (5015, 1015, '2025-04-10', 1100000, 675, 'Rejected'),
    (5016, 1016, '2025-04-15', 250000, 802, 'Approved'),
    (5017, 1017, '2025-04-20', 600000, 728, 'Approved'),
    (5018, 1018, '2025-05-01', 550000, 760, 'Approved'),
    (5019, 1019, '2025-05-08', 950000, 698, 'Rejected'),
    (5020, 1020, '2025-05-15', 500000, 785, 'Approved'),

    (5021, 1001, '2025-06-01', 300000, 742, 'Approved'),
    (5022, 1003, '2025-06-10', 700000, 720, 'Rejected'),
    (5023, 1005, '2025-06-18', 900000, 690, 'Approved'),
    (5024, 1007, '2025-07-02', 500000, 705, 'Approved'),
    (5025, 1010, '2025-07-12', 650000, 682, 'Rejected'),
    (5026, 1012, '2025-07-20', 400000, 795, 'Approved'),
    (5027, 1015, '2025-08-05', 800000, 675, 'Rejected'),
    (5028, 1017, '2025-08-15', 450000, 728, 'Approved'),
    (5029, 1019, '2025-09-01', 750000, 698, 'Rejected'),
    (5030, 1020, '2025-09-10', 350000, 785, 'Approved');


     /* Data Insertion into Loan tables */


     INSERT INTO Loans
    (LoanID, CustomerID, BranchID, LoanType, LoanAmount,
     InterestRate, LoanTermMonths, DisbursementDate, LoanStatus)
VALUES
    (7001, 1001, 101, 'Personal Loan', 500000, 11.50, 36, '2025-01-20', 'Active'),
    (7002, 1002, 103, 'Personal Loan', 800000, 10.25, 48, '2025-01-25', 'Active'),
    (7003, 1003, 105, 'Personal Loan', 1000000, 12.00, 60, '2025-01-30', 'Active'),
    (7004, 1005, 109, 'Personal Loan', 1200000, 13.25, 60, '2025-02-05', 'Default'),
    (7005, 1006, 108, 'Personal Loan', 600000, 9.75, 36, '2025-02-15', 'Closed');

  INSERT INTO Loans
    (LoanID, CustomerID, BranchID, LoanType, LoanAmount,
     InterestRate, LoanTermMonths,  LoanStatus)
VALUES
    (7006, 1008, 105, 'Personal Loan', 350000, 10.50, 24,  'Closed'),
    (7007, 1009, 101, 'Personal Loan', 650000, 11.25, 36,  'Active'),
    (7008, 1011, 106, 'Personal Loan', 450000, 10.75, 36, 'Active'),
    (7009, 1012, 103, 'Personal Loan', 700000, 9.50, 48, 'Closed'),
    (7010, 1013, 104, 'Personal Loan', 850000, 12.25, 48, 'Active'),

    (7011, 1014, 107, 'Personal Loan', 300000, 10.00, 24, 'Closed'),
    (7012, 1016, 107, 'Personal Loan', 250000, 9.25, 24, 'Closed'),
    (7013, 1017, 109, 'Personal Loan', 600000, 11.75, 36, 'Active'),
    (7014, 1018, 110, 'Personal Loan', 550000, 10.50, 36, 'Active'),
    (7015, 1020, 110, 'Personal Loan', 500000, 9.75, 36, 'Active'),

    (7016, 1001, 101, 'Personal Loan', 300000, 12.50, 24, 'Active'),
    (7017, 1005, 109, 'Personal Loan', 900000, 13.50, 48, 'Default'),
    (7018, 1007, 102, 'Personal Loan', 500000, 12.75, 36, 'Default'),
    (7019, 1012, 103, 'Personal Loan', 400000, 9.25, 24, 'Active'),
    (7020, 1017, 109, 'Personal Loan', 450000, 11.50, 36, 'Active');



UPDATE Loans
SET DisbursementDate =
    CASE LoanID
        WHEN 7006 THEN '2025-02-20'
        WHEN 7007 THEN '2025-03-05'
        WHEN 7008 THEN '2025-03-15'
        WHEN 7009 THEN '2025-03-25'
        WHEN 7010 THEN '2025-04-05'
        WHEN 7011 THEN '2025-04-15'
        WHEN 7012 THEN '2025-04-25'
        WHEN 7013 THEN '2025-05-10'
        WHEN 7014 THEN '2025-05-20'
        WHEN 7015 THEN '2025-06-01'
        WHEN 7016 THEN '2025-06-15'
        WHEN 7017 THEN '2025-07-05'
        WHEN 7018 THEN '2025-07-20'
        WHEN 7019 THEN '2025-08-10'
        WHEN 7020 THEN '2025-08-25'
    END
WHERE LoanID BETWEEN 7006 AND 7020;




     /* Data Insertion into Payments tables */




     INSERT INTO Payments
    (PaymentID, LoanID, DueDate, PaymentDate, DueAmount, PaidAmount, PaymentStatus)
VALUES
    (8001, 7001, '2025-02-20', '2025-02-19', 16500, 16500, 'Paid'),
    (8002, 7001, '2025-03-20', '2025-03-22', 16500, 16500, 'Late'),
    (8003, 7001, '2025-04-20', '2025-04-20', 16500, 16500, 'Paid'),

    (8004, 7002, '2025-02-25', '2025-02-25', 20000, 20000, 'Paid'),
    (8005, 7002, '2025-03-25', '2025-03-27', 20000, 20000, 'Late'),

    (8006, 7003, '2025-03-30', '2025-03-30', 22200, 22200, 'Paid'),
    (8007, 7003, '2025-04-30', '2025-04-30', 22200, 22200, 'Paid'),
    (8008, 7003, '2025-05-30', NULL, 22200, 0, 'Missed'),

    (8009, 7004, '2025-03-05', '2025-03-10', 28000, 15000, 'Late'),
    (8010, 7004, '2025-04-05', NULL, 28000, 0, 'Missed'),

    (8011, 7005, '2025-03-15', '2025-03-15', 19000, 19000, 'Paid'),
    (8012, 7005, '2025-04-15', '2025-04-15', 19000, 19000, 'Paid'),

    (8013, 7006, '2025-03-20', '2025-03-19', 15500, 15500, 'Paid'),
    (8014, 7006, '2025-04-20', '2025-04-20', 15500, 15500, 'Paid'),

    (8015, 7007, '2025-04-05', '2025-04-07', 21000, 21000, 'Late'),
    (8016, 7007, '2025-05-05', '2025-05-05', 21000, 21000, 'Paid'),

    (8017, 7008, '2025-04-15', '2025-04-15', 14500, 14500, 'Paid'),
    (8018, 7008, '2025-05-15', NULL, 14500, 0, 'Missed'),

    (8019, 7009, '2025-04-25', '2025-04-25', 17500, 17500, 'Paid'),
    (8020, 7009, '2025-05-25', '2025-05-25', 17500, 17500, 'Paid'),

    (8021, 7010, '2025-05-05', '2025-05-08', 22000, 22000, 'Late'),
    (8022, 7010, '2025-06-05', '2025-06-05', 22000, 22000, 'Paid'),

    (8023, 7013, '2025-06-10', '2025-06-10', 18500, 18500, 'Paid'),
    (8024, 7013, '2025-07-10', '2025-07-12', 18500, 18500, 'Late'),

    (8025, 7014, '2025-06-20', '2025-06-20', 17000, 17000, 'Paid'),
    (8026, 7014, '2025-07-20', NULL, 17000, 0, 'Missed'),

    (8027, 7015, '2025-07-01', '2025-07-01', 16000, 16000, 'Paid'),
    (8028, 7016, '2025-07-15', '2025-07-15', 14500, 14500, 'Paid'),
    (8029, 7017, '2025-08-05', NULL, 25000, 0, 'Missed'),
    (8030, 7018, '2025-08-20', '2025-08-25', 18000, 10000, 'Late');