use hr;
create database hr;
use hr;

select * from hr_1;
select * from hr_2;

#----------KPI 1------------
#----------Average Attrition rate for all Departments------------
select concat(round(avg(Attritionrate)*100),'%') as Averageattritionrate,Department from hr_1 group by Department;

#-----------KPI 2-----------
#----------Average Hourly rate of Male Research Scientist--------------
select avg(HourlyRate) from hr_1
where Gender = "Male" and jobRole= "Research Scientist";
 
 #----------KPI 3-----------
 #----------Attrition rate Vs Monthly income stats-----------
 select * from hr_1;
 select * from hr_2;
 select Attritionrate,sum(MonthlyIncome) from hr_1 left join hr_2 on hr_1.EmployeeNumber=hr_2 .EmployeeID group by Attritionrate;
 
 #---------KPI 4------------
 #---------Average working years for each Department---------
 select avg(TotalWorkingYears),Department from hr_1 join hr_2 on hr_1.EmployeeNumber=hr_2.EmployeeID group by Department;
 #--------KPI 5-------------
 #--------Job Role Vs Work life balance--------------
 select JobRole,WorkLifeBalance from hr_1 join hr_2 on hr_1.EmployeeNumber=hr_2.EmployeeID;
 
 #-------KPI 6--------------
 #-------Attrition rate Vs Year since last promotion relation---------
 select Attritionrate,YearsSinceLastPromotion from hr_1 join hr_2 on hr_1.EmployeeNumber=hr_2.EmployeeID;