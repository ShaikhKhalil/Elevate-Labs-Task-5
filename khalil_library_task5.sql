USE khalil_library;

SELECT Book.title, Author.name
FROM Book
INNER JOIN Author ON Book.author_id = Author.author_id;

SELECT Member.name, IssuedBook.book_id
FROM Member
LEFT JOIN IssuedBook ON Member.member_id = IssuedBook.member_id;

SELECT IssuedBook.book_id, Librarian.name
FROM IssuedBook
RIGHT JOIN Librarian ON IssuedBook.librarian_id = Librarian.librarian_id;

SELECT Member.name, IssuedBook.book_id
FROM Member
LEFT JOIN IssuedBook ON Member.member_id = IssuedBook.member_id
UNION
SELECT Member.name, IssuedBook.book_id
FROM Member
RIGHT JOIN IssuedBook ON Member.member_id = IssuedBook.member_id;
