--Query 5: Swahili books
SELECT b.title, bl.language_name
FROM book b
JOIN book_language bl ON b.language_id = bl.language_id
WHERE bl.language_name = 'Swahili';