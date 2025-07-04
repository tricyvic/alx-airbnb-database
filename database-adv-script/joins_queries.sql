-- INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.*,
    users.*
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.*,
    reviews.*
FROM 
    properties
LEFT JOIN 
    reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN (simulated using UNION): Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT 
    users.*, 
    bookings.*
FROM 
    users
LEFT JOIN 
    bookings ON users.id = bookings.user_id

UNION

SELECT 
    users.*, 
    bookings.*
FROM 
    users
RIGHT JOIN 
    bookings ON users.id = bookings.user_id;


SELECT users.*, bookings.* 
FROM users 
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT users.*, bookings.* 
FROM users 
RIGHT JOIN bookings ON users.id = bookings.user_id;
