# SQL Join Queries

This project contains three SQL queries that demonstrate different types of SQL joins using a MySQL database.

## Files

- `joins_queries.sql`: Contains SQL queries using INNER JOIN, LEFT JOIN, and a simulated FULL OUTER JOIN.
- `README.md`: Describes the purpose of each query and explains how to use them.

## Queries

### 1. INNER JOIN – Bookings and Users
Retrieves all bookings along with the respective users who made those bookings.

```sql
SELECT bookings.*, users.* 
FROM bookings 
INNER JOIN users ON bookings.user_id = users.id;


# LEFT JOIN – Properties and Reviews

SELECT properties.*, reviews.* 
FROM properties 
LEFT JOIN reviews ON properties.id = reviews.property_id;

# FULL OUTER JOIN – Users and Bookings

SELECT users.*, bookings.* 
FROM users 
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT users.*, bookings.* 
FROM users 
RIGHT JOIN bookings ON users.id = bookings.user_id;

