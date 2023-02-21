/* Name: Mr. Mohamed Zahid (TP067803)
Name of Program: mydapproject_067803.sas
Description: 
Date First Written:  26-Oct-2022
Date Last Modified:  25-Nov-2022

Project Folder Name: DAPASSIGNMENT_LAPS_FT_SEPT_2022_TP067803
Library Name: LIB803
*/ 

/*Structure of Dataset - LIB803.TRAINING_DS*/
TITLE ' Structure of Dataset - LIB803.TRAINING_DS ';
PROC CONTENTS DATA = LIB803.TRAINING_DS;
RUN;

/*Univariate Analysis*/
TITLE ' Univariate analysis of - MARITAL_STATUS ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE MARITAL_STATUS;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR MARITAL_STATUS;
TITLE ' Figure of univariate analysis of - MARITAL_STATUS ';
RUN;
/*--*/
TITLE ' Univariate analysis of - GENDER ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE GENDER;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR GENDER;
TITLE ' Figure of univariate analysis of - GENDER ';
RUN;
/*--*/
TITLE ' Univariate analysis of - FAMILY_MEMBERS ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE FAMILY_MEMBERS;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR FAMILY_MEMBERS;
TITLE ' Figure of univariate analysis of - FAMILY_MEMBERS ';
RUN;
/*--*/
TITLE ' Univariate analysis of - EMPLOYMENT ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE EMPLOYMENT;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR EMPLOYMENT;
TITLE ' Figure of univariate analysis of - EMPLOYMENT ';
RUN;
/*--*/
TITLE ' Univariate analysis of - LOAN_APPROVAL_STATUS ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE LOAN_APPROVAL_STATUS;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR LOAN_APPROVAL_STATUS;
TITLE ' Figure of univariate analysis of - LOAN_APPROVAL_STATUS ';
RUN;
/*--*/
TITLE ' Univariate analysis of - LOAN_LOCATION ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE LOAN_LOCATION;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR LOAN_LOCATION;
TITLE ' Figure of univariate analysis of - LOAN_LOCATION ';
RUN;
/*--*/
TITLE ' Univariate analysis of - QUALIFICATION ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE QUALIFICATION;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR QUALIFICATION;
TITLE ' Figure of univariate analysis of - QUALIFICATION ';
RUN;
/*--*/
TITLE ' Univariate analysis of - LOAN_HISTORY ';
PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE LOAN_HISTORY;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
VBAR LOAN_HISTORY;
TITLE ' Figure of univariate analysis of - LOAN_HISTORY ';
RUN;
/*--*/
/*NUMERIC VARIABLES*/
/*--*/
TITLE ' Univariate analysis of - LOAN_AMOUNT ';
PROC MEANS DATA = LIB803.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_AMOUNT;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
HISTOGRAM LOAN_AMOUNT;
TITLE ' Figure of univariate analysis of - LOAN_AMOUNT ';
RUN;
/*--*/
TITLE ' Univariate analysis of - CANDIDATE_INCOME ';
PROC MEANS DATA = LIB803.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR CANDIDATE_INCOME;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
HISTOGRAM CANDIDATE_INCOME;
TITLE ' Figure of univariate analysis of - CANDIDATE_INCOME ';
RUN;
/*--*/
TITLE ' Univariate analysis of - GUARANTEE_INCOME ';
PROC MEANS DATA = LIB803.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR GUARANTEE_INCOME;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
HISTOGRAM GUARANTEE_INCOME;
TITLE ' Figure of univariate analysis of - GUARANTEE_INCOME ';
RUN;
/*--*/
TITLE ' Univariate analysis of - LOAN_DURATION ';
PROC MEANS DATA = LIB803.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_DURATION;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TRAINING_DS;
HISTOGRAM LOAN_DURATION;
TITLE ' Figure of univariate analysis of - LOAN_DURATION ';
RUN;
/*------*/

TITLE1 'Bivariate Analysis of Variables: ';
TITLE2 'MARITAL STATUS ver LOAN_APPROVAL_STATUS';
FOOTNOTE '--END--';

PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE MARITAL_STATUS*LOAN_APPROVAL_STATUS /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

RUN; 
/*------*/

TITLE1 'Bivariate Analysis of Variables: ';
TITLE2 'GENDER ver CANDIDATE_INCOME';
FOOTNOTE '--END--';

PROC MEANS DATA = LIB803.TRAINING_DS;
CLASS GENDER; 
VAR CANDIDATE_INCOME;
RUN;
PROC SGPLOT DATA  = LIB803.TRAINING_DS;
VBOX CANDIDATE_INCOME / CATEGORY=GENDER; /*gender in x axis and income in y axis*/
RUN; 
/*------*/

TITLE1 'Bivariate Analysis of Variables: ';
TITLE2 'QUALIFICATION ver CANDIDATE_INCOME';
FOOTNOTE '--END--';

PROC MEANS DATA = LIB803.TRAINING_DS;
CLASS QUALIFICATION; 
VAR CANDIDATE_INCOME;
RUN;
PROC SGPLOT DATA  = LIB803.TRAINING_DS;
VBOX CANDIDATE_INCOME / CATEGORY=QUALIFICATION; /*qualification in x axis and candidate_income in y axis*/
RUN; 
/*------*/

TITLE1 'Bivariate Analysis of Variables: ';
TITLE2 'FAMILY_MEMBERS ver LOAN_APPROVAL_STATUS';
FOOTNOTE '--END--';

PROC FREQ DATA = LIB803.TRAINING_DS;
TABLE FAMILY_MEMBERS*LOAN_APPROVAL_STATUS /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

RUN; 
/*------*/
/*IMPUTING MISSING VALUES IN MARITAL_STATUS*/
/*STEP 1-Find details of applicants who submitted their loan applications with blank marital_status*/
TITLE 'Details of applicants who submitted their loan applicantions with blank marital_status';
FOOTNOTE '--END--';
PROC SQL;
SELECT * 
FROM LIB803.TRAINING_DS t
WHERE ( t.marital_status IS MISSING OR t.marital_status eq '' );
QUIT;

/*STEP 2-Find number of applicants who submitted their loan applications with blank marital_status*/
TITLE 'Number of applicants who submitted their loan applicantions with blank marital_status';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TRAINING_DS t
WHERE ( t.marital_status IS MISSING OR t.marital_status eq '' );
QUIT;

/*STEP 3-Hold statistics of variable in a temporary dataset LIB803.TRAINING_MS_DS*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_MS_DS AS
SELECT marital_status, COUNT(*) AS counts
FROM LIB803.TRAINING_DS t
WHERE ( ( t.marital_status IS NOT MISSING ) OR
		(t.marital_status ne '' ) )
GROUP BY marital_status; 
QUIT;

/*STEP 4-Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_BK_DS AS
SELECT *
FROM LIB803.TRAINING_DS;
QUIT;

/*STEP 5-Find the mod of marital_status*/
PROC SQL;
SELECT to.marital_status
FROM LIB803.TRAINING_MS_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TRAINING_MS_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 6-Impute the missing values found in marital_status*/
PROC SQL;
UPDATE LIB803.TRAINING_DS
SET marital_status = ( SELECT to.marital_status
					   FROM LIB803.TRAINING_MS_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TRAINING_MS_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( marital_status IS MISSING ) OR 
	    ( marital_status eq '' ) );
QUIT; 

/*STEP 7-After imputation, finding details of applicants who submitted their loan applications with blank marital_status*/
TITLE 'Details of applicants who submitted their loan applicantions with blank marital_status';
FOOTNOTE '--END--';
PROC SQL;
SELECT * 
FROM LIB803.TRAINING_DS t
WHERE ( t.marital_status IS MISSING OR t.marital_status eq '' );
QUIT;

/*STEP 8-After imputation, find number of applicants who submitted their loan applications with blank marital_status*/
TITLE 'Number of applicants who submitted their loan applicantions with blank marital_status';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TRAINING_DS t
WHERE ( t.marital_status IS MISSING OR t.marital_status eq '' );
QUIT;

/*IMPUTING MISSING VALUES IN GENDER*/
/*STEP 1-Find details of applicants who submitted their loan applications with blank gender*/
TITLE 'Details of applicants who submitted their loan applicantions with blank gender';
FOOTNOTE '--END--';
PROC SQL;
SELECT * 
FROM LIB803.TRAINING_DS t
WHERE ( t.gender IS MISSING OR t.gender eq '' );
QUIT;

/*STEP 2-Find number of applicants who submitted their loan applications with blank gender*/
TITLE 'Number of applicants who submitted their loan applicantions with gender';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TRAINING_DS t
WHERE ( t.gender IS MISSING OR t.gender eq '' );
QUIT;

/*STEP 3-Hold statistics of variable in a temporary dataset LIB803.TRAINING_GENDER_DS*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_GENDER_DS AS
SELECT gender, COUNT(*) AS counts
FROM LIB803.TRAINING_DS t
WHERE ( ( t.gender IS NOT MISSING ) OR
		(t.gender ne '' ) )
GROUP BY gender; 
QUIT;

/*STEP 4-Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_BK_DS AS
SELECT *
FROM LIB803.TRAINING_DS;
QUIT;

/*STEP 5-Find the mod of gender*/
PROC SQL;
SELECT to.gender
FROM LIB803.TRAINING_GENDER_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TRAINING_GENDER_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 6-Impute the missing values found in gender*/
PROC SQL;
UPDATE LIB803.TRAINING_DS
SET gender = ( SELECT to.gender
					   FROM LIB803.TRAINING_GENDER_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TRAINING_GENDER_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( gender IS MISSING ) OR 
	    ( gender eq '' ) );
QUIT; 

/*STEP 1-Find number of applicants who submitted their loan applications with blank family_members*/
TITLE 'Number of applicants who submitted their loan applicantions with blank family_members';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TRAINING_DS t
WHERE ( t.family_members IS MISSING OR t.family_members eq '' );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TRAINING_FAMILY_DS*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_FAMILY_DS AS
SELECT family_members, COUNT(*) AS counts
FROM LIB803.TRAINING_DS t
WHERE ( ( t.family_members IS NOT MISSING ) OR
		(t.family_members ne '' ) )
GROUP BY family_members; 
QUIT;

/*STEP 3-Find the mod of family_members*/
PROC SQL;
SELECT to.family_members
FROM LIB803.TRAINING_FAMILY_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TRAINING_FAMILY_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 4-Impute the missing values found in family_members*/
PROC SQL;
UPDATE LIB803.TRAINING_DS
SET family_members = ( SELECT to.family_members
					   FROM LIB803.TRAINING_FAMILY_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TRAINING_FAMILY_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( family_members IS MISSING ) OR 
	    ( family_members eq '' ) );
QUIT; 

/*STEP 1-Find number of applicants who submitted their loan applications with blank employment*/
TITLE 'Number of applicants who submitted their loan applicantions with blank employment';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TRAINING_DS t
WHERE ( t.employment IS MISSING OR t.employment eq '' );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TRAINING_EMP_DS*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_EMP_DS AS
SELECT employment, COUNT(*) AS counts
FROM LIB803.TRAINING_DS t
WHERE ( ( t.employment IS NOT MISSING ) OR
		(t.employment ne '' ) )
GROUP BY employment; 
QUIT;

/*STEP 3-Find the mod of employment*/
PROC SQL;
SELECT to.employment
FROM LIB803.TRAINING_EMP_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TRAINING_EMP_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 4-Impute the missing values found in employment*/
PROC SQL;
UPDATE LIB803.TRAINING_DS
SET employment = ( SELECT to.employment
					   FROM LIB803.TRAINING_EMP_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TRAINING_EMP_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( employment IS MISSING ) OR 
	    ( employment eq '' ) );
QUIT; 

/*STEP 1-Find number of applicants who submitted their loan applications with blank loan_history*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_history';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TRAINING_DS t
WHERE ( t.loan_history IS MISSING OR t.loan_history eq . );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TRAINING_LH_DS*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_LH_DS AS
SELECT loan_history, COUNT(*) AS counts
FROM LIB803.TRAINING_DS t
WHERE ( ( t.loan_history IS NOT MISSING ) OR
		(t.loan_history ne . ) )
GROUP BY loan_history; 
QUIT;

/*STEP 3-Find the mod of loan_history*/
PROC SQL;
SELECT to.loan_history
FROM LIB803.TRAINING_LH_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TRAINING_LH_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 4-Impute the missing values found in loan_history*/
PROC SQL;
UPDATE LIB803.TRAINING_DS
SET loan_history = ( SELECT to.loan_history
					   FROM LIB803.TRAINING_LH_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TRAINING_LH_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( loan_history IS MISSING ) OR 
	    ( loan_history eq . ) );
QUIT; 

/*NUMERICAL VARIABLES*/
/*STEP 1-Find number of applicants who submitted their loan applications with blank loan_amount*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_amount';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TRAINING_DS t
WHERE ( t.loan_amount IS MISSING OR t.loan_amount eq . );
QUIT; 

/*EXTRA STEP*/
/*STEP -Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_BK_DS AS
SELECT *
FROM LIB803.TRAINING_DS;
QUIT;

/*STEP 2-Impute the missing values found in loan_amount*/
PROC STDIZE DATA = LIB803.TRAINING_DS REPONLY
METHOD=MEAN OUT = LIB803.TRAINING_DS;
VAR loan_amount;
QUIT;

/*STEP 3-After imputation, find number of applicants who submitted their loan applications with blank loan_amount*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_amount';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TRAINING_DS t
WHERE ( t.loan_amount IS MISSING OR t.loan_amount eq . );
QUIT; 

/*STEP 1-Find number of applicants who submitted their loan applications with blank loan_duration*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_duration';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TRAINING_DS t
WHERE ( t.loan_duration IS MISSING OR t.loan_duration eq . );
QUIT; 

/*EXTRA STEP*/
/*STEP -Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TRAINING_BK_DS AS
SELECT *
FROM LIB803.TRAINING_DS;
QUIT;

/*STEP 2-Impute the missing values found in loan_duration*/
PROC STDIZE DATA = LIB803.TRAINING_DS REPONLY
METHOD=MEAN OUT = LIB803.TRAINING_DS;
VAR loan_duration;
QUIT;

/*STEP 3-After imputation, find number of applicants who submitted their loan applications with blank loan_duration*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_duration';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TRAINING_DS t
WHERE ( t.loan_duration IS MISSING OR t.loan_duration eq . );
QUIT; 


/*Univariate Analysis of Testing Dataset*/


TITLE ' Univariate analysis of - MARITAL_STATUS ';
PROC FREQ DATA = LIB803.TESTING_DS;
TABLE MARITAL_STATUS;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TESTING_DS;
VBAR MARITAL_STATUS;
TITLE ' Figure of univariate analysis of - MARITAL_STATUS ';
RUN;
/*--*/
TITLE ' Univariate analysis of - GENDER ';
PROC FREQ DATA = LIB803.TESTING_DS;
TABLE GENDER;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TESTING_DS;
VBAR GENDER;
TITLE ' Figure of univariate analysis of - GENDER ';
RUN;
/*--*/
TITLE ' Univariate analysis of - FAMILY_MEMBERS ';
PROC FREQ DATA = LIB803.TESTING_DS;
TABLE FAMILY_MEMBERS;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA = LIB803.TESTING_DS;
VBAR FAMILY_MEMBERS;
TITLE ' Figure of univariate analysis of - FAMILY_MEMBERS ';
RUN;
/*--*/

/*SAS MACRO*/
%MACRO MACRO_UVACATE_803(pds_name, pcate_variname, ptitle_name); 
PROC FREQ DATA = LIB803.TESTING_DS;

TABLE &pcate_variname;
TITLE &ptitle_name;

QUIT;

%MEND MACRO_UVACATE_803; /*MACRO ends with MEND*/
/*Call the SAS MACRO*/
%MACRO_UVACATE_803(LIB803.TESTING_DS, EMPLOYMENT, "UVA of variable - EMPLOYMENT");
%MACRO_UVACATE_803(LIB803.TESTING_DS, LOAN_LOCATION, "UVA of variable - LOAN_LOCATION");
%MACRO_UVACATE_803(LIB803.TESTING_DS, QUALIFICATION, "UVA of variable - QUALIFICATION");
%MACRO_UVACATE_803(LIB803.TESTING_DS, LOAN_HISTORY, "UVA of variable - LOAN_HISTORY");

/*MACRO For Numeric Variables*/
%MACRO MACRO_UVACONT_803(pds_name, pcont_variname, ptitle_name); 
TITLE &ptitle_name;
PROC MEANS DATA = &pds_name N NMISS MIN MAX MEAN MEDIAN STD;
VAR &pcont_variname;
QUIT;

%MEND MACRO_UVACONT_803; /*MACRO ends with MEND*/
/*Call the SAS MACRO*/
%MACRO_UVACONT_803(LIB803.TESTING_DS, LOAN_AMOUNT, "UVA of variable - LOAN_AMOUNT");
%MACRO_UVACONT_803(LIB803.TESTING_DS, CANDIDATE_INCOME, "UVA of variable - CANDIDATE_INCOME");
%MACRO_UVACONT_803(LIB803.TESTING_DS, GUARANTEE_INCOME, "UVA of variable - GUARANTEE_INCOME");
%MACRO_UVACONT_803(LIB803.TESTING_DS, LOAN_DURATION, "UVA of variable - LOAN_DURATION");

/*Bivariate analysis using SAS MACRO*/

%MACRO MACRO_BICAT_CAT_803(pds_name, pcat_variname1, pcat_variname2, ptitle_name1, ptitle_name2); 
TITLE1 &ptitle_name1;
TITLE2 &ptitle_name2;
FOOTNOTE '--END--';

PROC FREQ DATA = &pds_name;
TABLE &pcat_variname1*&pcat_variname2 /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );

RUN; 
%MEND  MACRO_BICAT_CAT_803; /*MACRO ends with MEND*/
/*Call the SAS MACRO*/
%MACRO_BICAT_CAT_803(LIB803.TESTING_DS, GENDER, EMPLOYMENT, 'Bivariate Analysis of Variables: ', 'GENDER VER EMPLOYMENT');
%MACRO_BICAT_CAT_803(LIB803.TESTING_DS, MARITAL_STATUS, EMPLOYMENT, 'Bivariate Analysis of Variables: ', 'MARITAL STATUS VER EMPLOYMENT');
%MACRO_BICAT_CAT_803(LIB803.TESTING_DS, LOAN_LOCATION, GENDER, 'Bivariate Analysis of Variables: ', 'LOAN LOCATION VER GENDER');

/*For categorical vs numeric variable*/

%MACRO MACRO_BICAT_NUM_803(pds_name, pcat_variname1, pcat_variname2, ptitle_name1, ptitle_name2); 
TITLE1 &ptitle_name1;
TITLE2 &ptitle_name2;
FOOTNOTE '--END--';

PROC MEANS DATA = &pds_name;
CLASS &pcat_variname1; 
VAR &pcat_variname2;
RUN;
PROC SGPLOT DATA  = &pds_name;
VBOX &pcat_variname2 / CATEGORY=&pcat_variname1;
%MEND  MACRO_BICAT_NUM_803; /*MACRO ends with MEND*/
/*Call the SAS MACRO*/
%MACRO_BICAT_NUM_803(LIB803.TESTING_DS, QUALIFICATION, CANDIDATE_INCOME, 'Bivariate Analysis of Variables: ', 'QUALIFICATION ver CANDIDATE_INCOME');
%MACRO_BICAT_NUM_803(LIB803.TESTING_DS, GENDER, CANDIDATE_INCOME, 'Bivariate Analysis of Variables: ', 'GENDER ver CANDIDATE_INCOME');

/*Imputing values into testing dataset*/

/*IMPUTING MISSING VALUES IN GENDER - TESTING DATASET*/

/*STEP 1-Find number of applicants who submitted their loan applications with blank gender*/
TITLE 'Number of applicants who submitted their loan applicantions with gender';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TESTING_DS t
WHERE ( t.gender IS MISSING OR t.gender eq '' );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TESTING_GENDER_DS*/
PROC SQL;
CREATE TABLE LIB803.TESTING_GENDER_DS AS
SELECT gender, COUNT(*) AS counts
FROM LIB803.TESTING_DS t
WHERE ( ( t.gender IS NOT MISSING ) OR
		(t.gender ne '' ) )
GROUP BY gender; 
QUIT;

/*STEP 3-Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TESTING_BK_DS AS
SELECT *
FROM LIB803.TESTING_DS;
QUIT;

/*STEP 4-Find the mod of gender*/
PROC SQL;
SELECT to.gender
FROM LIB803.TESTING_GENDER_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TESTING_GENDER_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 5-Impute the missing values found in gender*/
PROC SQL;
UPDATE LIB803.TESTING_DS
SET gender = ( SELECT to.gender
					   FROM LIB803.TESTING_GENDER_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TESTING_GENDER_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( gender IS MISSING ) OR 
	    ( gender eq '' ) );
QUIT; 

/*STEP 6- (After imputation) Find number of applicants who submitted their loan applications with blank gender*/
TITLE 'Number of applicants who submitted their loan applicantions with gender';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TESTING_DS t
WHERE ( t.gender IS MISSING OR t.gender eq '' );
QUIT;

/*IMPUTING MISSING VALUES IN FAMILY_MEMBERS - TESTING DATASET*/

/*STEP 1-Find number of applicants who submitted their loan applications with blank family_members*/
TITLE 'Number of applicants who submitted their loan applicantions with blank family_members';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TESTING_DS t
WHERE ( t.family_members IS MISSING OR t.family_members eq '' );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TESTING_FAMILY_DS*/
PROC SQL;
CREATE TABLE LIB803.TESTING_FAMILY_DS AS
SELECT family_members, COUNT(*) AS counts
FROM LIB803.TESTING_DS t
WHERE ( ( t.family_members IS NOT MISSING ) OR
		(t.family_members ne '' ) )
GROUP BY family_members; 
QUIT;

/*STEP 3-Find the mod of family_members*/
PROC SQL;
SELECT to.family_members
FROM LIB803.TESTING_FAMILY_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TESTING_FAMILY_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 4-Impute the missing values found in family_members*/
PROC SQL;
UPDATE LIB803.TESTING_DS
SET family_members = ( SELECT to.family_members
					   FROM LIB803.TESTING_FAMILY_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TESTING_FAMILY_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( family_members IS MISSING ) OR 
	    ( family_members eq '' ) );
QUIT; 

/*STEP 5- (After Imputation) Find number of applicants who submitted their loan applications with blank family_members*/
TITLE 'Number of applicants who submitted their loan applicantions with blank family_members';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TESTING_DS t
WHERE ( t.family_members IS MISSING OR t.family_members eq '' );
QUIT;

/*IMPUTING MISSING VALUES IN EMPLOYMENT - TESTING DATASET*/

/*STEP 1-Find number of applicants who submitted their loan applications with blank employment*/
TITLE 'Number of applicants who submitted their loan applicantions with blank employment';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TESTING_DS t
WHERE ( t.employment IS MISSING OR t.employment eq '' );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TESTING_EMP_DS*/
PROC SQL;
CREATE TABLE LIB803.TESTING_EMP_DS AS
SELECT employment, COUNT(*) AS counts
FROM LIB803.TESTING_DS t
WHERE ( ( t.employment IS NOT MISSING ) OR
		(t.employment ne '' ) )
GROUP BY employment; 
QUIT;

/*STEP 3-Find the mod of employment*/
PROC SQL;
SELECT to.employment
FROM LIB803.TESTING_EMP_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TESTING_EMP_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 4-Impute the missing values found in employment*/
PROC SQL;
UPDATE LIB803.TESTING_DS
SET employment = ( SELECT to.employment
					   FROM LIB803.TESTING_EMP_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TESTING_EMP_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( employment IS MISSING ) OR 
	    ( employment eq '' ) );
QUIT; 

/*IMPUTING MISSING VALUES IN LOAN_HISTORY - TESTING DATASET*/

/*STEP 1-Find number of applicants who submitted their loan applications with blank loan_history*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_history';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants' 
FROM LIB803.TESTING_DS t
WHERE ( t.loan_history IS MISSING OR t.loan_history eq . );
QUIT;

/*STEP 2-Hold statistics of variable in a temporary dataset LIB803.TESTING_LH_DS*/
PROC SQL;
CREATE TABLE LIB803.TESTING_LH_DS AS
SELECT loan_history, COUNT(*) AS counts
FROM LIB803.TRAINING_DS t
WHERE ( ( t.loan_history IS NOT MISSING ) OR
		(t.loan_history ne . ) )
GROUP BY loan_history; 
QUIT;

/*STEP 3-Find the mod of loan_history*/
PROC SQL;
SELECT to.loan_history
FROM LIB803.TESTING_LH_DS to
WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				  FROM LIB803.TESTING_LH_DS ti );
/*sub-prog to find highest count*/
QUIT;

/*STEP 4-Impute the missing values found in loan_history*/
PROC SQL;
UPDATE LIB803.TESTING_DS
SET loan_history = ( SELECT to.loan_history
					   FROM LIB803.TESTING_LH_DS to
					   WHERE to.counts eq ( SELECT MAX(ti.counts) Label = 'Highest Count'
				 						    FROM LIB803.TESTING_LH_DS ti ) ) 
/*sub-prog to find highest count*/
WHERE ( ( loan_history IS MISSING ) OR 
	    ( loan_history eq . ) );
QUIT; 

/*IMPUTATION OF VALUES IN NUMERICAL VARIABLE - LOAN_AMOUNT*/

/*NUMERICAL VARIABLES*/
/*STEP 1-Find number of applicants who submitted their loan applications with blank loan_amount*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_amount';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TESTING_DS t
WHERE ( t.loan_amount IS MISSING OR t.loan_amount eq . );
QUIT; 

/*EXTRA STEP*/
/*STEP -Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TESTING_BK_DS AS
SELECT *
FROM LIB803.TESTING_DS;
QUIT;

/*STEP 2-Impute the missing values found in loan_amount*/
PROC STDIZE DATA = LIB803.TESTING_DS REPONLY
METHOD=MEAN OUT = LIB803.TESTING_DS;
VAR loan_amount;
QUIT;

/*STEP 3-After imputation, find number of applicants who submitted their loan applications with blank loan_amount*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_amount';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TRAINING_DS t
WHERE ( t.loan_amount IS MISSING OR t.loan_amount eq . );
QUIT; 

/*IMPUTATION OF VALUES IN NUMERICAL VARIABLE - LOAN_DURATION*/

/*STEP 1-Find number of applicants who submitted their loan applications with blank loan_duration*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_duration';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TESTING_DS t
WHERE ( t.loan_duration IS MISSING OR t.loan_duration eq . );
QUIT; 

/*EXTRA STEP*/
/*STEP -Make a back up copy of the dataset*/
PROC SQL;
CREATE TABLE LIB803.TESTING_BK_DS AS
SELECT *
FROM LIB803.TESTING_DS;
QUIT;

/*STEP 2-Impute the missing values found in loan_duration*/
PROC STDIZE DATA = LIB803.TESTING_DS REPONLY
METHOD=MEAN OUT = LIB803.TESTING_DS;
VAR loan_duration;
QUIT;

/*STEP 3-After imputation, find number of applicants who submitted their loan applications with blank loan_duration*/
TITLE 'Number of applicants who submitted their loan applicantions with blank loan_duration';
FOOTNOTE '--END--';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Applicants'
FROM LIB803.TESTING_DS t
WHERE ( t.loan_duration IS MISSING OR t.loan_duration eq . );
QUIT; 

/*MODEL CREATION*/
/*create a model using logistic regression model*/
PROC LOGISTIC DATA=LIB803.TRAINING_DS OUTMODEL=LIB803.TRAINING_DS_MODEL_803;
CLASS
GENDER
FAMILY_MEMBERS
LOAN_LOCATION
LOAN_HISTORY
MARITAL_STATUS
QUALIFICATION
EMPLOYMENT;
/*Above are categorical variables*/
MODEL LOAN_APPROVAL_STATUS = 
GENDER
FAMILY_MEMBERS
EMPLOYMENT
CANDIDATE_INCOME
GUARANTEE_INCOME
MARITAL_STATUS
QUALIFICATION
LOAN_AMOUNT
LOAN_DURATION
LOAN_HISTORY
LOAN_LOCATION;
OUTPUT OUT= LIB803.TRAINING_OUT_DS P = PRED_PROB; 
RUN;

/*PRED PROB -> predicted probability
OUT -> output */

/*prediction program*/
PROC LOGISTIC INMODEL=LIB803.TRAINING_DS_MODEL_803;
SCORE DATA=LIB803.TESTING_DS
OUT=LIB803.TESTING_DS_LAS_PREDICTED;

QUIT;

/*Program to get the physical location of the library  /home/u61558684*/
PROC datasets library=LIB803 memtype=DATA;
RUN; 

/*ODS - output delivery system*/
ODS HTML CLOSE;
ODS PDF CLOSE;
/*Physical location of pdf*/
ODS PDF FILE="/home/u61558684/DAPASSIGNMENT_LAPS_FT_SEPT_2022_TP067803/REPORT.pdf";
OPTIONS NOBYLINE NODATE;
TITLE1 'BANK LOAN APPROVAL STATUS';
TITLE2 'APU,TPM';
PROC REPORT DATA=LIB803.TESTING_DS_LAS_PREDICTED NOWINDOWS;

BY SME_LOAN_ID_NO; /*separate each by SME_LOAN_ID_NO*/
DEFINE SME_LOAN_ID_NO / GROUP 'LOAN appli ID';
DEFINE I_LOAN_APPROVAL_STATUS / GROUP 'LOAN APPROVAL STATUS';
FOOTNOTE '--END--';

RUN;
OPTIONS BYLINE;

