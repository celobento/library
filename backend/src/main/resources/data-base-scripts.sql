CREATE DABASE library;

CREATE SCHEMA library;

CREATE TABLE library.tb_author (
    id serial PRIMARY KEY not null,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    birthdate DATE
);

select * from library.tb_author;

CREATE TYPE book_gender AS ENUM ('Fiction', 'Non-Fiction', 'Fantasy', 'Horror');
CREATE TYPE book_type AS ENUM ('Hardcover', 'Paperback', 'eBook', 'Audiobook');

CREATE TABLE library.tb_book (
    id serial PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    published_date DATE,
    gender book_gender,
    type book_type,
    author_id BIGINT,
    FOREIGN KEY (author_id) REFERENCES library.tb_author(id)
);

select * from  library.tb_book;