-- Question 1: Everything in a given room, grouped by kind
SELECT 
    e.inventory_number, 
    e.kind, 
    e.model, 
    e.purchase_date
FROM equipment e
JOIN rooms r ON e.room_id = r.room_id
WHERE r.room_name = 'Room 101'
ORDER BY e.kind, e.inventory_number;

-- Question 2: Equipment older than 5 years, with its exact age, oldest first
SELECT 
    e.inventory_number, 
    e.kind, 
    e.model, 
    COALESCE(r.room_name, 'In Storage') AS room, 
    e.purchase_date,
    AGE(CURRENT_DATE, e.purchase_date) AS exact_age
FROM equipment e
LEFT JOIN rooms r ON e.room_id = r.room_id
WHERE e.purchase_date < CURRENT_DATE - INTERVAL '5 years'
ORDER BY e.purchase_date ASC;
