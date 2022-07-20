----Eda with hotel historical data 1st part----


with hotels as (
select * from [Eda Project].[dbo].['2018$']
union
select * from [Eda Project].[dbo].['2019$']
union
select * from [Eda Project].[dbo].['2020$'])

select * from hotels
left join [Eda Project].dbo.market_segment$
on hotels.market_segment=market_segment$.market_segment --joining market segmet Table
left join [Eda Project].dbo.meal_cost$   --joining meal cost Table
on meal_cost$.meal=hotels.meal
