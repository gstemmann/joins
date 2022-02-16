-- write your queries here
SELECT * FROM owners
JOIN vehicles ON vehicles.owner_id = owners.id;


-- SECOND QUERY
SELECT first_name, last_name
COUNT(owner_id) FROM owners o 
JOIN vehicles v on o.id=v.owner_id
GROUP BY (first_name, last_name)
ORDER BY first_name;

-- third query
SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) as average_price, 
  COUNT(owner_id) 
FROM owners o 
JOIN vehicles v on o.id=v.owner_id 
GROUP BY 
  (first_name, last_name) 
HAVING 
  COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC

SELECT *FROM owners;