SELECT * FROM loan_data.loan_data;

select count(*) from loan_data.loan_data;

# WRITE AN SQL QUERY TO FIND THE DETAIL OF APPLICANT UNDER OAN DATA HAVING LOAN AMOUNT LESS THAN 500 AND APPLICANT INCOME IS MORE THAN 10000

SELECT * 
FROM loan_data
WHERE ApplicantIncome > 10000
AND LoanAmount < 500;

# who require the highest loan amount?

SELECT * 
FROM loan_data
order by LoanAmount desc
limit 1

# which gender have more application ?

SELECT COUNT(*) as c , Gender
from loan_data
group by gender
order by c desc

# what are top three values of total applicants ?

select * from loan_data
order by LoanAmount desc
limit 3

# find the total loanamount for which applicant have applied respectively on basis of gender ?

select sum(LoanAmount) as total_loanamount, Gender
from loan_data
group by gender 
order by total_loanamount desc

# write a query to return the graduate, their credit history with credit more than once and property area in urban? 

select *
from loan_data
WHERE Education = "Graduate"
AND Credit_History > 0
AND Property_Area = "Urban" 
AND Self_Employed = "Yes"

# To Approve all the applicant who have urban property_area in the dataset, write a query that return the applicant name with loan status as approved?

select * from applicant
select * from loan_data


select *
from applicant
join loan_data on applicant.serial_no =loan_data.serial_no
where Loan_Status = "Y"
AND Property_Area = "urban"

# How many loan application were denied due to insufficient coapplicant's income?

SELECT count(*) as denied_loan_applications
from loan_data
where Loan_Status = 'N' and CoapplicantIncome < LoanAmount

# How many loan applications were submitted by self employed individuals ?

SELECT count(*) as Total_loan_applications
from loan_data
where Self_Employed = "Yes"

# write a query to return applicant's name its property area as urban and their loan status as approved

select applicant.first_name,  applicant.last_name, loan_data.Property_Area, loan_data.Loan_Status
from applicant
join loan_data on applicant.serial_no = loan_data.serial_no
where loan_status = 'Y'
and Property_Area = 'Urban'