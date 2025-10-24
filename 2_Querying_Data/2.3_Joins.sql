SELECT*
FROM foreign2 INNER JOIN Foreign1
ON foreign2.customer_id = Foreign1.customer_id
UNION
SELECT *
FROM foreign2 LEFT JOIN Foreign1
ON foreign2.customer_id = Foreign1.customer_id;

SELECT *
FROM foreign2 RIGHT JOIN Foreign1
ON foreign2.customer_id = Foreign1.customer_id;