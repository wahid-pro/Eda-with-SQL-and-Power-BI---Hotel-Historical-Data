----Eda with hotel historical data 1st part----

with hotels as (
select * from [Eda Project].[dbo].['2018$']
union
select * from [Eda Project].[dbo].['2019$']
union
select * from [Eda Project].[dbo].['2020$'])

select 
arrival_date_year,hotel,
sum((stays_in_week_nights+stays_in_weekend_nights)*adr) as revenue --calculating Revenue
from hotels 
group by arrival_date_year,hotel           