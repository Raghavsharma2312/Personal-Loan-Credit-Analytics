/*Business Challenge -- The company wants to use its customer, loan application, loan, and repayment data to understand:

How well is the personal-loan business performing, and what is the credit/repayment risk? */


-- Step 1 — Overall Business Overview--

/* Business question:

How many customers, loan applications, loans, and payments are present in our database? */

SELECT
    (SELECT COUNT(*) FROM Customers) AS TotalCustomers,
    (SELECT COUNT(*) FROM LoanApplications) AS TotalApplications,
    (SELECT COUNT(*) FROM Loans) AS TotalLoans,
    (SELECT COUNT(*) FROM Payments) AS TotalPayments;


    /*Step 2 — Total Loan Disbursement

Business Question:

What is the total amount of loans that the bank has disbursed?*/

Select sum(Loanamount)  as [Total_Amount] from Loans ;



/*  Step 3 — Average Loan Amount

Business Question:

What is the average loan amount disbursed by the bank? */


Select avg(loanamount) as [Average_loan_disbursed] from Loans;



/* Step 4 — Highest Loan Amount

Business Question:

What is the highest loan amount disbursed by the bank?  */

select max(loanamount) as [Highest_loan_amount] from Loans ;



/* Step 5 — Lowest Loan Amount

Business Question:

What is the lowest loan amount disbursed by the bank? */

select min(loanamount) as [lowest_loan_amount] from Loans ;


/* Step 6 — Loan Status Analysis

How many loans are Active, Closed, and Defaulted?*/


Select loanstatus, count(loanstatus) as counts_per_status from Loans
group by LoanStatus;

/* Step 7 — Loan Status by Amount

Business Question:

How much total loan amount is associated with each loan status? */

SELECT Loanstatus, sum(loanamount) as [Total loan amount] from loans
group by loanstatus;



/* Step 8 — Approval Analysis
Business Question:
How many loan applications were Approved and how many were Rejected? */


select applicationstatus, count(applicationstatus) as [aprroval_count]  from LoanApplications
group by ApplicationStatus ;



/*Step 9 — Approval Rate analysis  

What percentage of loan applications were approved?*/

select * from LoanApplications


SELECT
    SUM(CASE
            WHEN ApplicationStatus = 'Approved' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*) AS Approval_Rate
FROM LoanApplications;

/* Step 10 — Rejection Rate

Business Question:

What percentage of loan applications were rejected? */

SELECT
    SUM(CASE
            WHEN ApplicationStatus = 'REJECTED' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*) AS REJECTION_Rate
FROM LoanApplications;


/* Step 11 — Average Customer Income

Business Question:

What is the average annual income of our customers? */

SELECT AVG(ANNUALINCOME) AS AVERAGE_ANNUAL_INCOME FROM Customers;


/* Step 12 — Customer Count by Employment Type

Business Question:

How many customers belong to each employment type? */

SELECT * FROM Customers;

SELECT COUNT(CUSTOMERID) AS COUNT_OF_CUSTOMERS, EMPLOYMENTTYPE FROM Customers
GROUP BY EMPLOYMENTTYPE ;


/* Step 13 — Average Credit Score by Employment Type

Business Question:

What is the average credit score for each employment type? */

Select employmenttype, avg(creditscore)  as [Average_credit_score] from Customers
group by EmploymentType ;


/* Step 14 — Average Loan Amount by Loan Status

Business Question:
What is the average loan amount for each loan status? */ 

select loanstatus, avg(loanamount) as Average_loan_amount from loans group by LoanStatus;


/* Step 15 — Total Loan Amount by Branch

Business Question:

How much total loan amount has been disbursed by each branch? */

select * from Loans;
select * from branches;


select b.branchname , sum(l.loanamount) as disbursed_amount from Branches b 
left join loans l on l.BranchID = b.BranchID  group by b.BranchName ;


/* Step 16 — Number of Loans by Branch

Now let's answer:

How many loans has each branch disbursed? */    

select * from Loans;
select * from branches;


select b.branchname , count(l.loanamount) as count_of_disbursedloan from Branches b 
left join loans l on l.BranchID = b.BranchID  group by b.BranchName ;


/* Step 17 — Loan Amount by City

Business Question:

What is the total loan amount disbursed to customers in each city? */

select * from Customers ;

select * from loans ;


select c.city , sum(l.loanamount) as [total loan amount] from Customers c 
left join Loans l on c.CustomerID = l.customerid 
group by c.city ;


/* Step 18 — Average Credit Score by City

Business Question:

What is the average credit score of customers in each city? */


select * from Customers;

select city , avg(creditscore) as [avg_credit_score] from Customers
group by City ;


/* Step 19 — Customers With Multiple Loans

Business Question:

Which customers have more than one loan? */

select * from Loans;


select customerid  , count(LoanID) as [total_count]  from loans group by CustomerID having count(loanid) > 1


/* Step 20 — Customer Name + Multiple Loans

Business Question:

Which customers have taken more than one loan, and how many loans have they taken? */

select * from Customers;
select * from Loans ;


select c.CustomerID, c.customername,  count(l.loanid) as total_loancounts from Customers c 
inner join loans l on c.CustomerID = l.CustomerID 
group by c.CustomerName  , c.CustomerID
having count(l.LoanID) > 1 ;


/*step 21 — Customers with NO Loan

Business Question:

Which customers have never taken a loan? */

select *  from Customers;
select * from loans ;


select c.customerid, c.customername , count(l.loanid) as loan_count from Customers c
left  join loans l on c.CustomerID = l.CustomerID 
group by  c.customerid, c.customername
having count(l.loanid) <1


/* Step 22 — High Credit Score Customers

Business Question:

Find customers whose credit score is greater than 750. */


select * from Customers ;


select customerid, customername , creditscore from Customers
where CreditScore > 750;

/* Step 23 — High Credit Score + Loan

Business Question:

Find customers who have a CreditScore > 750 and have taken at least one loan. */ 

select *  from Customers;
select * from loans ;

select c.customerid , c.customername , count(l.loanid) as no_of_loans  from Customers c
inner join loans l on c.CustomerID = l.CustomerID
where c.CreditScore > 750
group by c.customerid , c.customername
having count(l.loanid) >= 1 ;



/* Step 24 — Above Average Loan Amount

Business Question:

Find all loans whose LoanAmount is greater than the average loan amount. */

select * from Loans;

select loanid , loanamount from loans where LoanAmount > (select avg(loanamount) from loans) ;


/* Step 25 — Customer Above Average Income

Business Question:

Find customers whose AnnualIncome is greater than the average AnnualIncome of all customers.*/ 

select * from Customers ;


select customerid, customername , annualincome from Customers where AnnualIncome 
> ( select avg(annualincome) as avg_income from Customers) ;

/* Step 26 — Loans Above Average Within Their Own Loan Status

Business Question:

Find loans whose LoanAmount is greater than the average loan amount for their own LoanStatus. */

select * from loans ;

SELECT
    l.LoanID,
    l.LoanAmount,
    l.LoanStatus
FROM Loans l
WHERE l.LoanAmount > (
    SELECT AVG(l2.LoanAmount)
    FROM Loans l2
    WHERE l2.LoanStatus = l.LoanStatus
);


/* Step 27 — Highest Loan in Each Loan Status

Business Question:

Find the highest loan amount for each LoanStatus.*/ 

select max(loanamount) as  highest_loanamount , loanstatus from loans 
group by LoanStatus ;


/* Step 28 — Highest Loan + Customer Name

Business Question:

Find the customer who has taken the highest-value loan. */


select * from Customers;
select * from Loans;


select c.customerid , c.customername , l.loanamount from customers c 
inner join loans l on c.CustomerID = l.CustomerID
where l.LoanAmount = (select max(l2.loanamount) from loans l2);


/* Step 29 — now this one:

Find customers whose CreditScore is greater than the average CreditScore of their own EmploymentType.*/


select * from Customers ;


select c.customername , c.creditscore from customers c 
where c.CreditScore > (select avg(c2.creditscore) from Customers c2 where c.EmploymentType = c2.EmploymentType) ;


/* Step 30 — 
 Find the CustomerID, CustomerName, EmploymentType, and AnnualIncome of the highest-income customer in each EmploymentType.  */

SELECT
    c.CustomerID,
    c.CustomerName,
    c.EmploymentType,
    c.AnnualIncome
FROM Customers c
WHERE c.AnnualIncome = (
    SELECT MAX(c2.AnnualIncome)
    FROM Customers c2
    WHERE c2.EmploymentType = c.EmploymentType
);
 

 /* Step 31 — 
 Highest Income Customer in Each Employment Type.  */


 select * from customers;

 with cte  as (
 select customerid, annualincome, 
 DENSE_RANK() over(partition by employmenttype order by annualincome desc) as rnk
 from Customers ) 

 select customerid, annualincome from cte 
 where rnk <=2



 /*Step 32 — Top 2 Loans in Each Loan Status

Business Question:

Find the top 2 highest-value loans for each LoanStatus.*/



select * from Loans;


with loanstatus as (

select loanid,loantype,customerid,loanamount, DENSE_RANK() over (partition by loanstatus order by loanamount desc) as rankingno
from Loans)


select loanid,customerid,loanamount,loantype from loanstatus
where rankingno <=2;


/*Step 33 — Running Total of Loan Amount

Business Question:

Show each loan along with a running total of loan amount, ordered by DisbursementDate.*/


select  loanid, disbursementdate, loanamount , sum(loanamount) over (order by disbursementdate) as running_total
from Loans;



/*
Step 34 — Previous Loan Amount

For each loan, show the previous loan's amount based on DisbursementDate.*/

 select loanid,disbursementdate, loanamount, lag(loanamount) over ( order by disbursementdate) as previousloanamount
 from Loans


 /*Step 35 — Loan Amount Difference

For each loan, calculate the difference between the current loan amount and the previous loan amount, based on DisbursementDate.*/





Select loanid, disbursementdate, loanamount, lag(loanamount) over ( order by disbursementdate) as previousloanamount , 
loanamount-lag(loanamount) over ( order by disbursementdate) as loanamountdifferernce from Loans;


/*Step 36 — Loan Status Ranking

Business Question:

Rank loans by LoanAmount from highest to lowest within each LoanStatus.*/

select * from Loans ;


select loanid, customerid, loantype, loanamount , DENSE_RANK() over (partition by loanstatus order by loanamount desc) as ranking
from loans;



/*Step 37 — Payment Analysis

Business Question:

Find the total amount due and total amount paid for each LoanID.*/

SELECT
    LoanID,
    SUM(DueAmount) AS TotalAmountDue,
    SUM(PaidAmount) AS TotalAmountPaid
FROM Payments
GROUP BY LoanID;


/*  Step 38 -Outstanding Amount

Business Question:

For each LoanID, calculate the total outstanding amount.*/


SELECT
    LoanID,
    SUM(DueAmount) AS TotalDue,
    SUM(PaidAmount) AS TotalPaid,
    SUM(DueAmount) - SUM(PaidAmount) AS OutstandingAmount
FROM Payments
GROUP BY LoanID;


/*Step 39 — Payment Status Analysis

Business Question:

How many payments are Paid, Partial, and Late*/


select * from Payments


select Paymentstatus, count(paymentstatus)  as countoffields from Payments
group by PaymentStatus;



/*Step 40 — Late Payment Amount

Business Question:

What is the total DueAmount and total PaidAmount for Late payments?*/


select sum(dueamount)as totaldueamount, sum(paidamount) as totalpaidamount from Payments
where PaymentStatus = 'late'


/*Step 41 — Late Payment Rate

Business Question:

What percentage of all payments are Late?*/


select * from Payments;



SELECT
    SUM(CASE
            WHEN PaymentStatus = 'Late' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(PaymentStatus) AS Late_Payment_Rate
FROM Payments;




/*Step 42 — Default Loan Percentage


What percentage of all loans are in Default status?*/

select * from loans;    


select sum(case when loanstatus = 'default' then 1 else 0 end ) *100.00 / count(loanstatus) as defaultloanpercentage from Loans;



/* Step 43 — Default Rate by Employment Type

Business Question:

What percentage of loans are in Default for each Employment Type? */


select * from Customers;
select * from Loans;


select c.employmenttype ,concat( sum(case when l.loanstatus = 'default' then 1 else 0 end )*100 / count(l.loanstatus),'%') as percentageofdefeault 
from Customers c left join loans l on c.CustomerID = l.CustomerID group by c.employmenttype ;

/*Step 44 — Average Credit Score of Defaulted Customers

Business Question:

What is the average credit score of customers who have a Default loan?*/

select  avg(c.creditscore) as averagescore  from Customers c
inner join loans l on c.CustomerID = l.CustomerID
where l.LoanStatus = 'default';


/*
Step 45 — Default Customers with Low Credit Score

Business Question:

Find customers who have a Default loan and a CreditScore below 700. */


SELECT C.CUSTOMERNAME , C.CUSTOMERID , L.LOANSTATUS, C.CreditScore FROM 
CUSTOMERS C INNER JOIN LOANS L ON C.CustomerID = L.CustomerID
WHERE L.LoanStatus = 'DEFAULT' AND CreditScore < 700 ;



/*Step 46 — Default Rate by Credit Score Category

Business Question:

Find the number of Default loans for customers with CreditScore below 700.*/

SELECT COUNT(L.LoanStatus) AS COUNTOFLOANS FROM Customers C 
INNER JOIN LOANS L  ON C.CustomerID = L.CustomerID 
WHERE L.LoanStatus = 'DEFAULT'  AND C.CreditScore < 700;



/*Step 47 — Payment Delay

Business Question:

Find the number of days delayed for each payment.*/

SELECT * FROM Payments;

SELECT
    PaymentID,
    DueDate,
    PaymentDate,
    DATEDIFF(DAY, DueDate, PaymentDate) AS DelayedDays
FROM Payments;


/* Step 48 — Late Payments per Loan
Business Question:
Find the number of Late payments for each LoanID.*/



select * from Payments ;




select loanid , count(paymentstatus)  as countoflatepayments 
from Payments 
where PaymentStatus = 'late'
group by Loanid;


/*Step 49 — High-Risk Loans

Business Question:

Find loans where the customer has CreditScore < 700 and the loan status is Default.*/

Find:

/*LoanID
CustomerID
CustomerName
CreditScore
LoanAmount
LoanStatus
*/

select * from Loans;
select * from Customers;



select l.loanid , c.customerid, c.customername, c.creditscore , l.loanamount , l.loanstatus
from Customers c join loans l on c.CustomerID = l.CustomerID
where c.CreditScore < 700 and l.LoanStatus = 'defAULT';



/*Step 50 — Final Task 

Business Question:

Find the top 3 customers based on total loan amount they have taken.*/

/*Output:

CustomerID
CustomerName
TotalLoanAmount*/


WITH CTE AS
( SELECT c.CustomerID,
        c.CustomerName,
        SUM(l.LoanAmount) AS TotalLoanAmount,
        DENSE_RANK() OVER (
            ORDER BY SUM(l.LoanAmount) DESC
        ) AS rnk
    FROM Customers c
    INNER JOIN Loans l
        ON c.CustomerID = l.CustomerID
    GROUP BY
        c.CustomerID,
        c.CustomerName
)
SELECT
    CustomerID,
    CustomerName,
    TotalLoanAmount
FROM CTE
WHERE rnk <= 3;
