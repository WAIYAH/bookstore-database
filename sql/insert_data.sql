INSERT INTO book_language (language_name) VALUES
('English'), ('Swahili'), ('French'), ('Amharic'), ('Yoruba');

INSERT INTO publisher (publisher_name) VALUES
('East African Publishers'), ('Longhorn Publishers'), ('Moran Publishers'),
('Cassava Republic Press'), ('Jacaranda Publishers');

INSERT INTO author (author_name) VALUES
('Ngũgĩ wa Thiong''o'), ('Chimamanda Ngozi Adichie'), ('Binyavanga Wainaina'),
('Wanjiku wa Ngugi'), ('Yaa Gyasi');

INSERT INTO book (title, isbn, publisher_id, language_id, price) VALUES
('Decolonising the Mind', '9789966466846', 1, 1, 1500.00),
('Weep Not, Child', '9789966460073', 2, 1, 1200.00),
('Half of a Yellow Sun', '9789785460926', 4, 1, 2000.00),
('Malaika wa Mbinguni', '9789966001238', 3, 2, 1000.00),
('Homegoing', '9780241975237', 5, 1, 1800.00);

INSERT INTO book_author (book_id, author_id) VALUES
(1, 1), (2, 1), (3, 2), (4, 3), (5, 5);

