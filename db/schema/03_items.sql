DROP TABLE IF EXISTS items CASCADE;
CREATE TABLE items (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  seller_id INTEGER REFERENCES users(id) NOT NULL,
  is_sold BOOLEAN NOT NULL DEFAULT FALSE,
  price INTEGER NOT NULL,
  description VARCHAR(255) NOT NULL,
  is_featured BOOLEAN NOT NULL DEFAULT FALSE,
  category_id INTEGER REFERENCES categories(id) NOT NULL,
  date_posted TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  image_url VARCHAR(255) NOT NULL
);