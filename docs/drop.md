## Drop Object

The `drop` object represents a **dropped item entity** in the world.
It is obtained through the function `world:getDroppedItems()`, which returns a list of all active dropped items in the current world.

---

### Functions

#### `drop:getItemID()`

Returns the **item ID** of the dropped item.
This corresponds to the same ID used in `getItem(itemID)`.

```lua
-- Example:
local drops = world:getDroppedItems()
for _, drop in pairs(drops) do
  local id = drop:getItemID()
  player:onTalkBubble(player:getNetID(),"Dropped Item ID: " .. id,0)
end
```

---

#### `drop:getItemCount()`

Returns the **amount** (stack count) of the dropped item.

```lua
-- Example:
local drops = world:getDroppedItems()
for _, drop in pairs(drops) do
  local count = drop:getItemCount()
  world:onTalkBubble(player:getNetID(),"Item Count: " .. count,0)
end
```

---

#### `drop:getPosX()`

Returns the **X pixel position** of the dropped item.

```lua
local drops = world:getDroppedItems()
for _, drop in pairs(drops) do
  local x = drop:getPosX()
  player:onTalkBubble(player:getNetID(),"Drop X position: " .. x,0)
end
```

---

#### `drop:getPosY()`

Returns the **Y pixel position** of the dropped item.

```lua
local drops = world:getDroppedItems()
for _, drop in pairs(drops) do
  local y = drop:getPosY()
player:onTalkBubble(player:getNetID(),"Drop Y position: " .. y,0)
end
```

---

#### `drop:getUID()`

Returns the **unique identifier (UID)** of the dropped item.
This is useful for tracking or comparing specific dropped entities.

```lua
local drops = world:getDroppedItems()
for _, drop in pairs(drops) do
  local uid = drop:getUID()
player:onTalkBubble(player:getNetID(),"Drop UID: " .. uid,0)
end
```

---

#### `drop:getFlags()`

Returns the **flags** assigned to the dropped item, indicating specific item properties such as ownership or pickup restrictions.

```lua
local drops = world:getDroppedItems()
for _, drop in pairs(drops) do
  local flags = drop:getFlags()
  player:onTalkBubble(player:getNetID(),"Drop Flags: " .. flags,0)
end
```

---

### Example Usage

```lua
onWorldTick(function(world)
  local drops = world:getDroppedItems()
 for _, player in pairs(world:getPlayers()) do for _, drop in pairs(drops) do
    player:onTextOverlay(
      string.format(
        "Drop UID: %d | ID: %d | Count: %d | Pos: (%d, %d)",
        drop:getUID(),
        drop:getItemID(),
        drop:getItemCount(),
        drop:getPosX(),
        drop:getPosY()
      )
    )
  end
 end
end)
```

---

[Back](../README.md)
