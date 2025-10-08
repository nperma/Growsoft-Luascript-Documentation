
# Item Object Documentation

## Overview

The `Item` object in GrowSoft provides global and instance-level access to item data, including name, rarity, type, grow time, and reward values.  
Most functions are used with either the global accessor `getItem(itemID)` or the object method `item:getName()`.

---

## Accessing Item Data

```lua
getItem(itemID) -- Returns the global item data object for a given item ID.
````

---

##  Item Information

```lua
item:getName() -- Returns the item's name.
item:getRarity() -- Returns the item's rarity.
item:getActionType() -- Returns the item's action type (e.g., clothing, seed).
item:getCategoryType() -- Returns the category type of an item.
item:getEditableType() -- Returns the editable type of an item.
item:getNetID() -- Returns the item's net ID.
```

---

## Growth & Behavior

```lua
item:getGrowTime() -- Returns the item's grow time in seconds.
item:setGrowTime(seconds) -- Sets the grow time for an item globally.
item:setActionType(type) -- Sets the action type for an item globally.
```

---

## Description & Display

```lua
item:setDescription(text) -- Sets the description for an item globally.
```

---

## Item Value & Economy

```lua
item:setPrice(price) -- Sets the price of the item.
item:isObtainable() -- Returns true if the item is obtainable.
```

---

## XP & Gem Rewards

```lua
item:getGems(world, player) -- Returns the number of gems an item would drop, optionally considering player buffs.
item:getXP(world, player) -- Returns the amount of XP an item would give, optionally considering player buffs.
```

---

[Back](../README.md)
