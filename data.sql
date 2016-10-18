INSERT INTO categories (name, parent_id) VALUES ('Data Types', NULL);
INSERT INTO categories (name, parent_id) VALUES ('Numerics', (SELECT id FROM categories WHERE name = 'Data Types'));
INSERT INTO categories (name, parent_id) VALUES ('Integers', (SELECT id FROM categories WHERE name = 'Numerics'));
INSERT INTO categories (name, parent_id) VALUES ('Floats', (SELECT id FROM categories WHERE name = 'Numerics'));
INSERT INTO categories (name, parent_id) VALUES ('Complex Numbers', (SELECT id FROM categories WHERE name = 'Numerics'));
INSERT INTO categories (name, parent_id) VALUES ('Geometrics', (SELECT id FROM categories WHERE name = 'Data Types'));
INSERT INTO categories (name, parent_id) VALUES ('Points', (SELECT id FROM categories WHERE name = 'Geometrics'));
INSERT INTO categories (name, parent_id) VALUES ('Polygons', (SELECT id FROM categories WHERE name = 'Geometrics'));

SELECT walk_tree((SELECT id FROM categories WHERE parent_id IS NULL), 1);
