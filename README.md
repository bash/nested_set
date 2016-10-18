# nested_sets

This repository containes an example for [Nested Sets](https://en.wikipedia.org/wiki/Nested_set_model) written in SQL.

### Example Input

```
|-- Data Types
|   |-- Numeric
|   |   |-- Integers
|   |   |-- Floats
|   |   `-- Complex Numbers
|   |-- Geometric
|   |   |-- Point
|   |   `-- Polygon
```

### Example Output

The numbers in the brackets are the associated left and right values.

```
|-- Data Types (1, 16)
|   |-- Numeric (2, 9)
|   |   |-- Integers (3, 4)
|   |   |-- Floats (5, 6)
|   |   `-- Complex Numbers (7, 8)
|   |-- Geometric (10, 15)
|   |   |-- Point (11, 12)
|   |   `-- Polygon (13, 14)
```

