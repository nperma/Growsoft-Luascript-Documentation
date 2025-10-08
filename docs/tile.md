# Tile Object Documentation

## Overview

The `Tile` object in GrowSoft represents a single block (tile) in a world.  
It provides access to tile properties, foreground/background items, and data manipulation.  
Most methods are used with the colon operator (`tile:getTileID()`).

---

## Tile Position

```lua
tile:getPosX() -- Returns the X coordinate of the tile.
tile:getPosY() -- Returns the Y coordinate of the tile.
````

These coordinates represent the tile's position within the world grid, starting from `(0, 0)` in the top-left corner.

---

## Tile Structure

```lua
tile:getTileID() -- Returns the foreground item ID of the tile.
tile:getTileForeground() -- Returns the foreground item ID (same as getTileID).
tile:getTileBackground() -- Returns the background item ID of the tile.
```

---

## Tile Data

```lua
tile:getTileData(property) -- Gets a specific data property from a tile.
tile:setTileDataInt(property, value) -- Sets a specific integer data property on a tile.
```

These functions allow interaction with tile-specific data fields, such as growth state, tree fruit count, or lock ownership.
After modifying data using `setTileDataInt`, call `world:updateTile(tile)` to refresh visuals.

---

## Tile Item Interaction

```lua
tile:getTileItem() -- Returns the item object associated with the tile's foreground.
```

---

[Back](../README.md)
