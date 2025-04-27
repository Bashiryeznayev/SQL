-- 1.Əməkdaşların adını, soyadını, telefon nömrəsini, işə qəbul tarixini və əmək haqqı məlumatlarını ekrana çıxardan 
--   sorğunu yazın. Ad və soyad haqqında məlumatları aralarında bir boşluq olmaqla birləşdirməklə ekrana çıxardılsan. 
select first_name || ' ' || last_name as Ad_soyad,
       phone_number,
       hire_date,
       salary
from employees;
-- 2.Əməkdaşların adı, soyadı, işlədiyi vəzifəsini, tabe olduğu menecer və işlədiyi departament məlumatlarını 
--   birləşdirərək ekrana çıxardan sorğu yazın. 
select first_name,  
       last_name,
       job_id,
       manager_id,
       department_id
from employees;

-- 3.Əməkdaşların işlədiyi vəzifə, tabe olduğu şəxs(menecer) və işlədiyi departamentlər üzrə təkrarlanmayan məlumatları 
--   ekrana çıxardan sorğunu yazın. 
select distinct job_id,
                manager_id,
                department_id
from employees;


-- 4.Aşağıdakı products cədvəldən price(qiymət) və count(say) əsasən ümumi məbləği hesablayan sorğunu yazın. 
        Products
        Product_ID  Price   Count
            1	     12	      4
            2	     5	      7
            3	     3	      25
            4	     10	      4
            5	     12	      3
            6	     8	      4
select price * count 
from products;

-- 5. ROMOTIONS cədvəlinin strukturu aşağıda göstərilmişdir(Describe). 
        Name	        Null	     Type
        promo_id	    not null    number(6)
        promo_name	    not null    varchar2(30)
        promo_category	not null    varchar2(30)
        promo_cost 	    not null    number(10,2)
        
     Aşağıdakı sorğulardan hansılar promo_cost və promo_category üzrə təkrarlanmayan məlumatları ekrana çıxardır. 

     A)	SELECT DISTINCT promo_category || ' has ' || promo_cost AS COSTS FROM promotions; 
    + B)	SELECT DISTINCT promo_cost || ' in ' || DISTINCT promo_category FROM promotions;
    + C)	SELECT DISTINCT promo_category, promo_cost FROM promotions;
     D)	SELECT promo_category DISTINCT promo_cost, FROM promotions;
     E)	SELECT promo_cost, promo_category FROM promotions;
   


