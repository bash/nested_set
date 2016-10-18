INSERT INTO categories (name, parent_id) VALUES ('Data Types', NULL);
INSERT INTO categories (name, parent_id) VALUES ('Numeric', (SELECT id FROM categories WHERE name = 'Data Types'));
INSERT INTO categories (name, parent_id) VALUES ('Integers', (SELECT id FROM categories WHERE name = 'Numeric'));
INSERT INTO categories (name, parent_id) VALUES ('Floats', (SELECT id FROM categories WHERE name = 'Numeric'));
INSERT INTO categories (name, parent_id) VALUES ('Complex Numbers', (SELECT id FROM categories WHERE name = 'Numeric'));
INSERT INTO categories (name, parent_id) VALUES ('Geometric', (SELECT id FROM categories WHERE name = 'Data Types'));
INSERT INTO categories (name, parent_id) VALUES ('Point', (SELECT id FROM categories WHERE name = 'Geometric'));
INSERT INTO categories (name, parent_id) VALUES ('Polygon', (SELECT id FROM categories WHERE name = 'Geometric'));

SELECT update_positions((SELECT id FROM categories WHERE parent_id IS NULL), 0);
