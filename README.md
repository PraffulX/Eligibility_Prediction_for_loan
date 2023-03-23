# Eligibility_Prediction_for_loan

Project aims to automate the loan eligibility process (real time) based on customer detail provided while filling online application form. These details are Gender, Marital Status, Education, Number of Dependents, Income, Loan Amount, Credit History and others. To automate this process, here is a dataset to identify the customers segments that are eligible for loan amount so that they can specifically target the customers.


Dataset Glossary (Column-wise)


Train file: CSV containing the customers for whom loan eligibility is known as 'Loan_Status'

Loan_ID	                Unique Loan ID
Gender	                Male/ Female
Married	                Applicant married (Y/N)
Dependents	            Number of dependents
Education	              Applicant Education (Graduate/ Under Graduate)
Self_Employed	          Self employed (Y/N)
ApplicantIncome	        Applicant income
CoapplicantIncome     	Coapplicant income
LoanAmount	            Loan amount in thousands
Loan_Amount_Term	      Term of loan in months
Credit_History	        credit history meets guidelines
Property_Area	          Urban/ Semi Urban/ Rural
Loan_Status	(Target)    Loan approved (Y/N)
