
## Inventory Item Object

The `inventory_item` object represents an item stored in a player’s inventory.
It is obtained through the function `player:getInventoryItems()`, which returns a list of all inventory items.

---

### Functions

#### `inventory_item:getItemID()`

Returns the **item ID** of the inventory entry.

```lua
-- Example:
local items = player:getInventoryItems()
for _, item in pairs(items) do
  local id = item:getItemID()
  player:sendTextMessage("Item ID: " .. id)
end
```

---

#### `inventory_item:getItemCount()`

Returns the **quantity** of that item in the inventory slot.

```lua
-- Example:
local items = player:getInventoryItems()
for _, item in pairs(items) do
  local count = item:getItemCount()
  player:onTalkBubble(player:getNetID(),"Item Count: " .. count,0)
end
```

---

### Example Usage

```lua
onPlayerEnterWorldCallback(function(world, player)
  local inventory = player:getInventoryItems()

  for _, item in pairs(inventory) do
    local id = item:getItemID()
    local count = item:getItemCount()

    player:onTalkBubble(player:getNetID(),"You have " .. count .. " of item ID " .. id,0)
  end
end)
```

---

[Back](../README.md)
