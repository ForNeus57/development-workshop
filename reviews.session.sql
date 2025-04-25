
-- Test query - retrieves the names of authors and the number of reviews they have written, ordered by the number of reviews in descending order.
SELECT a.name, COUNT(a.name) AS author_count
FROM reviews r
JOIN authors a ON r.id = a.review_id
GROUP BY a.name
ORDER BY author_count DESC;
