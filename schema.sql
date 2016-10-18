CREATE TABLE IF NOT EXISTS categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  parent_id INTEGER NULL REFERENCES categories(id),
  "left" INTEGER NOT NULL DEFAULT 0,
  "right" INTEGER NOT NULL DEFAULT 0
);

CREATE OR REPLACE FUNCTION walk_tree(id INTEGER, number INTEGER)
RETURNS INTEGER AS $$
DECLARE row categories%rowtype;
DECLARE number INTEGER;
DECLARE right_number INTEGER;
BEGIN
  SELECT $2 INTO number;
  SELECT number INTO right_number;

  FOR row IN SELECT * FROM categories WHERE parent_id = $1
  LOOP
    SELECT walk_tree(row.id, (right_number + 1)) INTO right_number;
  END LOOP;

  SELECT (right_number + 1) INTO right_number;

  UPDATE categories SET "left" = number, "right" = right_number WHERE categories.id = $1;

  RETURN right_number;
END
$$ LANGUAGE 'plpgsql';
