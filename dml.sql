INSERT INTO bookshelf ("name", "location")
VALUES ('A1', 'kiri'),
       ('A2', 'kanan'),
       ('B1', 'depan'),
       ('B2', 'belakang'),
       ('C1', 'atas'),
       ('C2', 'bawah'),
       ('D1', 'tengah'),
       ('D2', 'sudut kiri'),
       ('E1', 'sudut kanan'),
       ('E2', 'utama');

TABLE bookshelf;


INSERT INTO category ("name")
VALUES ('Electronics'),
       ('Books'),
       ('Home & Kitchen'),
       ('Clothing & Apparel'),
       ('Sports & Outdoors'),
       ('Beauty & Personal Care'),
       ('Toys & Games'),
       ('Health & Wellness'),
       ('Automotive'),
       ('Groceries');

TABLE category;


INSERT INTO book ("title", "category_id", "bookshelf_id")
VALUES ('Atomic Habits', 8, 1),
       ('Clean Code', 1, 2),
       ('The Pragmatic Programmer', 1, 2),
       ('To Kill a Mockingbird', 2, 3),
       ('Sapiens: A Brief History of Humankind', 2, 3),
       ('The Lean Startup', 8, 1),
       ('Design Patterns', 1, 2),
       ('Deep Work', 8, 1),
       ('Rich Dad Poor Dad', 8, 1),
       ('The Great Gatsby', 2, 3);

TABLE book;


INSERT INTO officer ("name")
VALUES ('Ahmad Fauzi'),
       ('Siti Rahma'),
       ('Budi Santoso'),
       ('Dewi Lestari'),
       ('Eko Prasetyo'),
       ('Fitriani'),
       ('Gunawan Wibisono'),
       ('Hesti Widya'),
       ('Irfan Hakim'),
       ('Joko Widodo');

TABLE officer;


INSERT INTO loaning ("book_id", "officer_id", "people_name")
VALUES (1, 1, 'Andi Pratama'),
       (2, 2, 'Rina Melati'),
       (3, 3, 'Dimas Anggara'),
       (4, 4, 'Siska Wulandari'),
       (5, 5, 'Rian Hidayat'),
       (6, 6, 'Putri Ananda'),
       (7, 7, 'Reza Rahadian'),
       (8, 8, 'Maya Sari'),
       (9, 9, 'Taufik Hidayat'),
       (10, 10, 'Lestari Indah');

TABLE loaning;