CREATE DATABASE listfy;
\c listfy;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    photo TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    photo TEXT  
);


CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    photo TEXT,
    description VARCHAR(500) NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    category_id INTEGER REFERENCES categories(id) ON DELETE SET NULL
);

/*Inserts*/

INSERT INTO categories (category_name, photo) VALUES
('Electronics', 'https://imgur.com/a/ZlAXBon'),
('Books', 'https://imgur.com/a/1pZQvYw'),
('Clothing', 'https://imgur.com/a/zSRHjpW'),
('Home & Kitchen', 'https://imgur.com/a/v1CKiL7'),
('Perfumes and Moisturizers', 'https://imgur.com/a/perfume-mzTyKsX');
('Foods', 'https://imgur.com/a/jsE8BiR');
('Fruits', 'https://imgur.com/a/AUBW576');
('Hair Produts', 'https://imgur.com/a/BDvjv1D');
('Makeup', 'https://imgur.com/a/makeup-BUIoB8B');
