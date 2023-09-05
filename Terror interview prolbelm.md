---
created: 2023-09-03 11:23
updated: 2023-09-04 15:30
---
# 1. Avoiding Monsters

1. Avoiding the monsters
In this game, a player begins on a two-dimensional grid of size n x m. One cell of the grid is marked as the end and the player wants to reach this cell in the grid by moving up, down, left or right. However, some cells are occupied by monsters. The goal of the player is to reach the end cell using a path that maximizes the minimum distance from any monster along that path.

The distance between any two points on the grid with coordinates (X1, Y1) and (X2, Y2) is calculated as |X1 - X2| + |Y1 - Y2|, where |a|  is the absolute value of integer a.

Notes:
• One can visit a cell with a monster if necessary, i.e. no other path exists.
• A cell can be visited only once on a given path.

Example
Consider the following grid of size _4x4 where empty cells are free, 'S' indicates the start, 'E' indicates the end and 'X' indicates a monster: 
```
S . . X
. . X .
. . . . 
. . . E
```

The optimal path in the ‘Cell’ column. Note, the cell coordinates are given as (r, c) where r is the index of the row and c is the index of the column. Thus, the monsters in the aboe example are located at (0, 3) and (1,2)/ Coordinates of any of the nearest monster is in ‘Monster"
```

Cell
(0, 0)
(1, 0)
(2, 0)
```
