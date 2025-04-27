--1. Orta əmək haqqı 9500 -dən çox olan departamentlər üçün departament nömrəsi(department_id) və orta əmək haqqı məlumatlarını ekrana çıxardın.
select department_id,
       round(avg(salary),2)
       from employees
       group by department_id
       having avg(salary)>9500;
      
--2. İşçilərin sayı 3 çox olan departamentlərin department nömrəsi və işçilərinin sayını ekrana çıxardın. 
select department_id
from employees
group by department_id
having count(*)>=4;
--3. Departamentlər üzrə minimal əmək haqqı 7000 çox olan department nömrəsi və əmək haqqlarını ekrana çıxardın.
  select department_id,
         min(salary)
         from employees
         group by department_id
         having min(salary)>7000;
--4. Departamentlər üzrə maksimal əmək haqqı 9000 və 20000 intervalında olan department nömrəsi və maksimal əmək haqqlarını ekrana çıxardın. 
select department_id
from employees
group by department_id
having max(salary) between 9000 and 20000;
--5. Departamentdəki orta əmək haqqı minimal əmək haqqından çox olan departamentləri ekrana çıxardın.Ekrana departamentin nömrəsini, departament üzrə orta əmək haqqını və 
--   departament üzrə --minimal məbləği ekrana çıxardın.
select department_id
from employees
group by department_id
having avg(salary)>min(salary);
--6. Eyni ayda və eyni ildə işə qəbul olan əməkdaşların sayını ekrana çıxardın. Ekrana ay və il məlumatları və say haqqında məlumatlar əks olunmalıdır.
--7. Departamentlərdəki orta əmək haqqı üzrə aşağıdakı intervallara görə kategoriyaları təyin edin.
----- a)	1500 və 5000 üzrə A
----- b)	5001 və 8000 üzrə B
----- c)	8001 və 30000 üzrə C 
--Ekrana departament nömrəsi, departament üzrə orta əmək haqqı və orta əmək haqqı üzrə kateqoriyaları ekrana çıxardın.
--8. Phones cədvəli özündə telefon nömrələri və telefon nömrələrinə bağlı device –lar haqqında məlumatları özündə saxlayır. Telefon nömrələrinin neçə device –da istifadə olunduğunu 
     təyin edən sorğunu yazın(Məsələn +994555874766 nömrəsi 2 fərqli device –da istifadə olunub. İki dəfə XXYZTFP12BN36 device –da iki dəfə də XXXXYYYYY36TY device –na qoşulub. 
     Sorğunun nəticəsi aşağıdakı şəkildə olacaq.  
     select Phone_numer,
     count(distinct device)
     from phones dual
     group by phone_number;
      Phone_number    count_device
     +994555874766               2).

 
     Phones
      Phone_number	   device
     +994555874766	XXYZTFP12BN36
     +994555874766	XXYZTFP12BN36
     +994555874766	XXXXYYYYY36TY
     +994555874766	XXXXYYYYY36TY
     +994504194066	ZZZZZZZZZZZ789
     +994504194066	XYXYXYXYXYXYXX
     +994504194066	XYXYXYXYXYXYXX

--9. Hər departament üzrə ilk üç ay üzrə orta əmək haqqını təyin edən sorğunu yazın.    
