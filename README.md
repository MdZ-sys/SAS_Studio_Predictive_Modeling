# SAS_Studio_Predictive_Modeling
This project works to reduce the manpower required to calculate loan eligibility and improve the determination of loan eligibility by building a prediction model based of the data acquired from Lasiandra Finance Inc. 

5.	EXPLORATION OF DATASET
This project uses the "TRAINING DS.csv" and "TESTING DS.csv" data sets. These datasets contain 13 variables. 
•	8 categorical variables,
•	4 continuous variables, and
•	1 variable that shows the loan ID
The two provided data sets' organizational structure is as follows – 
Variable Name	Description	Categorical/Continuous	Data Type	Length	Sample Data
SME_LOAN_ID_NO	Loan reference number
(unique ID)	Categorical	Char	8	LP001015; LP001003; …
GENDER	Applicant gender
(Male or Female)	Categorical	Char	6	Male; Female
MARITAL_STATUS	Applicant marital status
(Married or not married)	Categorical	Char	11	Married; Not Married
FAMILY_MEMBERS	Number of family members owned by applicant	Categorical	Char	2	0;1; 2; 3+
QUALIFICATION	Applicant qualification
(graduate or undergraduate)	Categorical	Char	14	Graduate; Undergraduate
EMPLOYMENT	Applicant employment status
(yes or no)	Categorical	Char	3	Yes, No.
CANDIDATE_INCOME	Applicant’s monthly salary/income	Continuous	Numeric	8	5720; 4666; …
GUARANTEE_INCOME	Earnings of both applicants	Continuous	Numeric	8	1800; 2358; …
LOAN_AMOUNT	Loan amount
(in thousands)	Continuous	Numeric	8	110; 66; …
LOAN_DURATION	The loan’s repayment period (in months)	Categorical	Numeric	8	360; 180; …
LOAN_HISTORY	Records of previous loans	Categorical	Numeric	8	0; 1
LOAN_LOCATION	The location of loan (city/village/town)	Categorical	Char	7	City; Village; Town
LOAN_APPROVAL_STATUS	Approval status of loan	Categorical	Char	1	Y; N


6.	METHODOLOGY
The workflow presented in this assignment is as shown by figure – 
Each step in the process has significance. 
Step 1 – Sample the dataset 
To find patterns and trends in the broader data set being reviewed, data sampling is a statistical analysis approach that is used to choose, modify, and analyze a representative selection of data points. For this project, we choose past data points of customers of Lasiandra Finance Inc. to build a predictive model for loan eligibility. 614 past customer details are chosen to build the model. Due to the big data characteristics, i.e., the abundance of data, found in data sets connected to banking and finance, sampling is particularly helpful in these cases. (Biscobing, 2018)
Step 2 – Explore the dataset 
One of the first phases in data preparation is exploration, which is a means to get to know data before using it. Large datasets are prepared for deeper, more organized examination through survey and study. In contrast, exploratory data analysis (EDA) employs statistical graphics and other techniques for data visualization. (What Is Data Exploration & Why Is It Important? | Alteryx, n.d.)
A dataset may be better understood through exploration, which also makes it simpler to explore and utilize the data in the future. The quality of an analyst's analysis will depend on how well they understand the data they are using.
Outcomes of this process include understanding of the variables, detecting any outliers and examining the patterns and relationships in the data. 
Step 3 – Modify the dataset 
Data modification step includes the techniques employed on the data to make it suitable for model building. 
Two advantages of correctly formatted and validated data that is acquired by data modification are improved data quality and protection from potential landmines like null values, unanticipated duplication, incorrect indexing, and incompatible formats.
Step 4 – Model building
A file that has been taught to detect particular patterns is known as a machine learning model. A model is trained using a set of data and an algorithm that allows it to analyze and learn from the data. Once the model has been trained, it is used to analyze previously unexplored data and make predictions about it. (What Is a Machine Learning Model?, 2021)
 
