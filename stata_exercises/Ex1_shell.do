*****************************************************************************************************************************************
* Exercise 1: 
* This program generates the following estimates on national health care for the U.S. civilian non-institutionalized population, 2020:
*  - Overall expenses (National totals)
*  - Percentage of persons with an expense
*  - Mean expense per person
*  - Mean/median expense per person with an expense:
*    - Mean expense per person with an expense
*    - Mean expense per person with an expense, by age group
*    - Median expense per person with an expense, by age group
*
* Input file:
*  - C:/MEPS/h224.dta (2020 Full-year file)
*
* This program is available at:
* https://github.com/HHS-AHRQ/MEPS-workshop/tree/master/stata_exercises
*****************************************************************************************************************************************

clear
set more off
capture log close
cd C:\MEPS
log using Ex1.log, replace 

/* Get data from web (you can also download manually) */
copy "https://meps.ahrq.gov/mepsweb/data_files/pufs/h224/h224dta.zip" "h224dta.zip", replace
unzipfile "h224dta.zip", replace 

/* Read in 2020 Full-year consolidated file */ 





/* define expenditure variables  */






/* create flag (1/0) variables for persons with an expense  */






/* create age categorical variable */






/* qc check on new variables*/






/* identify the survey design characteristics */
svyset varpsu [pw = perwt20f], strata(varstr) vce(linearized) singleunit(missing)

// Estimate overall expenses
          

		  
		  
// Estimate percentage of persons with an expense
		   

		   
		   
// Estimate mean expense per person with an expense





// mean expenditures, median expenditures, percent with any expenditures, mean expenditures conditional on having any, all by age category

