INSERT INTO authors (author_name)
VALUES 
  ('Джордж Орвелл'),
  ('Джоан Ролінґ');

INSERT INTO genres (genre_name)
VALUES 
  ('Драма'),
  ('Фентезі');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES 
  ('1984', 1949, 1, 1),
  ('Гаррі Поттер і філософський камінь', 1997, 2, 2);

INSERT INTO users (username, email)
VALUES 
  ('andrii23', 'andrii23@example.com'),
  ('olena_s', 'olena.s@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES 
  (1, 1, '2025-10-01', '2025-10-15'),
  (2, 2, '2025-10-10', NULL);