--Select the columns country, gender, and rating and use the correct join to combine the table renting with customer.
--Use GROUP BY to calculate the average rating over country and gender. Order the table by country and gender.
--Now, use GROUPING SETS to get the same result, i.e. the average rating over country and gender.
--Report all information that is included in a pivot table for country and gender in one SQL table.



SELECT 
	c.country, 
    c.gender,
	AVG(r.rating)
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
-- Report all info from a Pivot table for country and gender
GROUP BY GROUPING SETS ((country, gender), (country), (gender), ());
