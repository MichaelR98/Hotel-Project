
WITH hotels AS (	    -- using a WITH statement allows use to take our union and label it so it can be used in other queries
SELECT * 

FROM [dbo].['2018$']
	UNION				-- using unions we combine the 3 tables into one
SELECT * 

FROM [dbo].['2019$']
	UNION
SELECT * 

FROM [dbo].['2020$'])

SELECT	* 
FROM hotels
LEFT JOIN market_segment$
	ON hotels.market_segment = market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
	ON meal_cost$.meal = hotels.meal