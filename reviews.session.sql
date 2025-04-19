SELECT r.id, r.title, COUNT(a.name) AS author_count
FROM reviews r
JOIN authors a ON r.id = a.review_id
GROUP BY r.id
HAVING author_count > 3
ORDER BY author_count DESC;
