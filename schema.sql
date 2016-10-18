CREATE TABLE IF NOT EXISTS categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  parent_id INTEGER NULL REFERENCES categories(id),
  "left" INTEGER NOT NULL DEFAULT 0,
  "right" INTEGER NOT NULL DEFAULT 0
);

CREATE OR REPLACE FUNCTION update_positions(id INTEGER, start INTEGER)
RETURNS INTEGER AS $$
DECLARE child_count INTEGER;
DECLARE row categories%rowtype;
DECLARE right_value INTEGER;
DECLARE last_right INTEGER;
BEGIN
  WITH RECURSIVE children AS (
    SELECT categories.id, categories.parent_id FROM categories WHERE parent_id = $1
    UNION SELECT categories.id, categories.parent_id FROM categories JOIN children ON categories.parent_id = children.id
  ) SELECT count(children.id) FROM children INTO child_count;

  SELECT (($2 + (child_count + 1) * 2)) INTO right_value;
  SELECT (start + 1) INTO last_right;

  UPDATE categories SET "left" = ($2 + 1), "right" = right_value WHERE categories.id = $1;

  FOR row IN SELECT * FROM categories WHERE parent_id = $1
  LOOP
    SELECT update_positions(row.id, last_right) INTO last_right;
  END LOOP;

  RETURN right_value;
END
$$ LANGUAGE 'plpgsql';
