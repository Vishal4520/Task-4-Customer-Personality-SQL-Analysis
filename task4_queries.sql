
-- a. SELECT, WHERE, GROUP BY, ORDER BY
SELECT marital_status, COUNT(*) AS total_customers
FROM cleaned_customer_personality_analysis
WHERE income > 40000
GROUP BY marital_status
ORDER BY total_customers DESC;

-- b. LEFT JOIN with dummy 'regions' table
SELECT c.id, c.income, r.region_name
FROM cleaned_customer_personality_analysis c
LEFT JOIN regions r ON c.id = r.id;

-- c. Subquery: customers spending more than average
SELECT id, total_spend
FROM cleaned_customer_personality_analysis
WHERE total_spend > (
    SELECT AVG(total_spend)
    FROM cleaned_customer_personality_analysis
);

-- d. Create a view
CREATE VIEW basic_customer_view AS
SELECT id, age, income, total_spend
FROM cleaned_customer_personality_analysis;

