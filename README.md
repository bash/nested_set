# nested_sets

This repository containes an example for [Nested Sets](https://en.wikipedia.org/wiki/Nested_set_model) written in SQL.

### Example Input

```
|-- Data Types
|   |-- Numerics
|   |   |-- Integers
|   |   |-- Floats
|   |   `-- Complex Numbers
|   |-- Geometrics
|   |   |-- Points
|   |   `-- Polygons
```

### Example Output

The numbers in the brackets are the associated left and right values.

```
|-- Data Types (1, 16)
|   |-- Numerics (2, 9)
|   |   |-- Integers (3, 4)
|   |   |-- Floats (5, 6)
|   |   `-- Complex Numbers (7, 8)
|   |-- Geometrics (10, 15)
|   |   |-- Points (11, 12)
|   |   `-- Polygons (13, 14)
```

### "Visual" Representation

```
                                            Types
                                              |
 |-----------------------------------------------------------------------------------------|
 |                                                                                         |
 |                                                                                         |
 |                     Numerics                                   Geometrics               |
 |                         |                                          |                    |
 |     |-----------------------------------------|     |-----------------------------|     |
 |     |                                         |     |                             |     |
 |     |                                         |     |                             |     |
 |     |                        Complex Numbers  |     |                             |     |
 |     |                                |        |     |                             |     |
 |     |     Integers     Floats        |        |     |      Points     Polygons    |     |
 |     |        |           |           |        |     |        |           |        |     |
 |     |     |-----|     |-----|     |-----|     |     |     |-----|     |-----|     |     |
 |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
 |     |     |     |     |     |     |     |     |     |     |     |     |     |     |     |
 |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|

 1     2     3     4     5     6     7     8     9     10    11    12    13    14    15    16
```
