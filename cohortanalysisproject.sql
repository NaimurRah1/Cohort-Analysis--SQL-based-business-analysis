select * from public.categories;
select * from public.customers;
select * from public.inventory;
select * from public.marketing_campaigns;
select * from public.order_items;
select * from public.orders;
select * from public.products;
select * from public.stores;


	--Charn analysis 
	with Jan_customer as (
			select customer_id from public.orders
			where extract(month from order_date)=1
			and extract (year from order_date)=2025 group by 1
	 					),
	Feb_customer as (
			select customer_id from public.orders 
			where extract( month from order_date)=2
			and extract (year from order_date)=2025 group by 1
						)
	select j.customer_id as jan_customer,
	f.customer_id as feb_customer 
	from jan_customer as j 
	left join Feb_customer as f on j.customer_id=f.customer_id
	--join Feb_customer as f 
	--on j.customer_id=f.customer_id
	where f.customer_id is null;


	--*****************
	--Retension analysis
	--*****************

	with Jan_customer as (
			select customer_id from public.orders
			where extract(month from order_date)=1
			and extract (year from order_date)=2025 group by 1
	 					),
	Feb_customer as (
			select customer_id from public.orders 
			where extract( month from order_date)=2
			and extract (year from order_date)=2025 group by 1
						)
	select j.customer_id as jan_customer,
	f.customer_id as feb_customer 
	from jan_customer as j 
	--left join Feb_customer as f on j.customer_id=f.customer_id
	join Feb_customer as f 
	on j.customer_id=f.customer_id;
	--where f.customer_id is null;		



--********************
-- cohort analysis
--********************
select * from public.orders;
with first_order as  (
			select 
					customer_id,
					date_trunc('month',min(order_date)) as cohort_month 
			from public.orders 
			where order_date >= date '2025-01-01'
			group by 1),
ct as (
			select o.customer_id,f.cohort_month,
			date_trunc( 'month',o.order_date) as order_date
			from orders o
			left join first_order f	 on o.customer_id=f.customer_id
		),
	ct1 as (
	select * ,
	(date_part('year',age(order_date,cohort_month))*12 +date_part('month',age(order_date,cohort_month))) as month_dif
	from ct where order_date >= date '2025-01-01'
	) --select * from ct1
	select
				cohort_month ,
				count (case when month_dif=0 then 'customr_id'  end) as month_0,
				count (case when month_dif=1 then 'customr_id'  end) as month_1,
				count (case when month_dif=2 then 'customr_id'  end) as month_2,
				count (case when month_dif=3 then 'customr_id'  end) as month_3,
				count (case when month_dif=4 then 'customr_id'  end) as month_4,
				count (case when month_dif=5 then 'customr_id'  end) as month_5,
				count (case when month_dif=6 then 'customr_id'  end) as month_6,
				count (case when month_dif=7 then 'customr_id'  end) as month_7,
				count (case when month_dif=8 then 'customr_id'  end) as month_8
	from ct1 
	group by 1 order by 1;


	
	
	
	
	-- alternative
	
WITH first_order AS (
    SELECT
        customer_id,
        DATE_TRUNC('month', MIN(order_date)) AS cohort_month
    FROM orders
	WHERE "order_date" >= date '2025-01-01'
    GROUP BY customer_id
),
cohort_data AS (
    SELECT
        o.customer_id,
        f.cohort_month,
        DATE_TRUNC('month', o.order_date) AS order_month,
        (
            DATE_PART('year', AGE(o.order_date, f.cohort_month)) * 12 +
            DATE_PART('month', AGE(o.order_date, f.cohort_month))
        ) AS month_number
    FROM orders o
    JOIN first_order f
        ON o.customer_id = f.customer_id
	WHERE "order_date" >= date '2025-01-01'
)
SELECT
    to_char(cohort_month,'Month'),
    COUNT(DISTINCT CASE WHEN month_number = 0 THEN customer_id END) AS month_0,
    COUNT(DISTINCT CASE WHEN month_number = 1 THEN customer_id END) AS month_1,
    COUNT(DISTINCT CASE WHEN month_number = 2 THEN customer_id END) AS month_2,
    COUNT(DISTINCT CASE WHEN month_number = 3 THEN customer_id END) AS month_3,
    COUNT(DISTINCT CASE WHEN month_number = 4 THEN customer_id END) AS month_4,
    COUNT(DISTINCT CASE WHEN month_number = 5 THEN customer_id END) AS month_5
FROM cohort_data
GROUP BY cohort_month
ORDER BY cohort_month;



