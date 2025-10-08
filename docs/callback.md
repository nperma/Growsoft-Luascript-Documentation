# GrowSoft Callback Templates

---

## onPlayerDialogCallback(world, player, data)

**Includes:**  
- [World](./world.md)  
- [Player](./player.md)

```lua
onPlayerDialogCallback(function(world, player, data)
    -- world = World Object
    -- player = Player Object
    -- data = table
    -- data["dialog_name"]: string, dialog name
    -- data["buttonClicked"]: string, button clicked
    -- return true to prevent default behavior, false to allow
    -- code here
end)
````

---

## onPlayerConsumableCallback(world, player, tile, clickedPlayer, itemID)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Tile](./tile.md)
* [Item](./item.md)

```lua
onPlayerConsumableCallback(function(world, player, tile, clickedPlayer, itemID)
    -- world = World Object
    -- player = Player Object
    -- tile = Tile Object
    -- clickedPlayer = Player Object (may be nil)
    -- itemID = number (link to [Item Object](item.md))
    -- return true to prevent default use, false to allow
    -- code here
end)
```

---

## onTileWrenchCallback(world, player, tile)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Tile](./tile.md)

```lua
onTileWrenchCallback(function(world, player, tile)
    -- world = World Object
    -- player = Player Object
    -- tile = Tile Object
    -- return true to prevent default wrench behavior, false to allow
    -- code here
end)
```

---

## onPlayerLoginCallback(player)

**Includes:**

* [Player](./player.md)

```lua
onPlayerLoginCallback(function(player)
    -- player = Player Object
    -- code here
end)
```

---

## onTilePlaceCallback(world, player, tile, placingID)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Tile](./tile.md)

```lua
onTilePlaceCallback(function(world, player, tile, placingID)
    -- world = World Object
    -- player = Player Object
    -- tile = Tile Object
    -- placingID = number
    -- return true to prevent placement, false to allow
    -- code here
end)
```

---

## onPlayerTick(player)

**Includes:**

* [Player](./player.md)

```lua
onPlayerTick(function(player)
    -- player = Player Object
    -- called every 1000ms per player
    -- code here
end)
```

---

## onWorldTick(world)

**Includes:**

* [World](./world.md)

```lua
onWorldTick(function(world)
    -- world = World Object
    -- called every 100ms per world
    -- code here
end)
```

---

## onPlayerFirstTimeLoginCallback(player)

**Includes:**

* [Player](./player.md)

```lua
onPlayerFirstTimeLoginCallback(function(player)
    -- player = Player Object
    -- called only on first login
    -- code here
end)
```

---

## onPlayerEnterWorldCallback(world, player)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerEnterWorldCallback(function(world, player)
    -- world = World Object
    -- player = Player Object
    -- code here
end)
```

---

## onPlayerLeaveWorldCallback(world, player)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerLeaveWorldCallback(function(world, player)
    -- world = World Object
    -- player = Player Object
    -- code here
end)
```

---

## onTilePunchCallback(world, avatar, tile)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Tile](./tile.md)

```lua
onTilePunchCallback(function(world, avatar, tile)
    -- world = World Object
    -- avatar = Player Object
    -- tile = Tile Object
    -- return true to prevent breaking, false to allow default
    -- code here
end)
```

---

## onPlayerDisconnectCallback(player)

**Includes:**

* [Player](./player.md)

```lua
onPlayerDisconnectCallback(function(player)
    -- player = Player Object
    -- code here
end)
```

---

## onPlayerDeathCallback(world, player, isRespawn)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerDeathCallback(function(world, player, isRespawn)
    -- world = World Object
    -- player = Player Object
    -- isRespawn = boolean
    -- code here
end)
```

---

## onPlayerDropCallback(world, player, itemID, itemCount)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Item](./item.md)

```lua
onPlayerDropCallback(function(world, player, itemID, itemCount)
    -- world = World Object
    -- player = Player Object
    -- itemID = number (link to [Item Object](item.md))
    -- itemCount = number
    -- return true to prevent drop, false to allow
    -- code here
end)
```

---

## onPlayerPickupItemCallback(world, player, itemID, itemCount)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Item](./item.md)

```lua
onPlayerPickupItemCallback(function(world, player, itemID, itemCount)
    -- world = World Object
    -- player = Player Object
    -- itemID = number
    -- itemCount = number
    -- return true to prevent pickup, false to allow
    -- code here
end)
```

---

## onPlayerEquipClothingCallback(world, player, itemID)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Item](./item.md)

```lua
onPlayerEquipClothingCallback(function(world, player, itemID)
    -- world = World Object
    -- player = Player Object
    -- itemID = number
    -- return true to prevent equip, false to allow
    -- code here
end)
```

---

## onPlayerUnequipClothingCallback(world, player, itemID)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Item](./item.md)

```lua
onPlayerUnequipClothingCallback(function(world, player, itemID)
    -- world = World Object
    -- player = Player Object
    -- itemID = number
    -- return true to prevent unequip, false to allow
    -- code here
end)
```

---

## onPlayerEnterDoorCallback(world, player, targetWorldName, doorID)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerEnterDoorCallback(function(world, player, targetWorldName, doorID)
    -- world = World Object
    -- player = Player Object
    -- targetWorldName = string
    -- doorID = number
    -- return true to prevent enter, false to allow
    -- code here
end)
```

---

## onPlayerPlantCallback(world, player, tile)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Tile](./tile.md)

```lua
onPlayerPlantCallback(function(world, player, tile)
    -- world = World Object
    -- player = Player Object
    -- tile = Tile Object
    -- code here
end)
```

---

## onPlayerHarvestCallback(world, player, tile)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Tile](./tile.md)

```lua
onPlayerHarvestCallback(function(world, player, tile)
    -- world = World Object
    -- player = Player Object
    -- tile = Tile Object
    -- code here
end)
```

---

## onPlayerCatchFishCallback(world, player, itemID, itemCount)

**Includes:**

* [World](./world.md)
* [Player](./player.md)
* [Item](./item.md)

```lua
onPlayerCatchFishCallback(function(world, player, itemID, itemCount)
    -- world = World Object
    -- player = Player Object
    -- itemID = number
    -- itemCount = number
    -- code here
end)
```

---

## onPlayerCrimeCallback(world, player, itemID, itemCount)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerCrimeCallback(function(world, player, itemID, itemCount)
    -- code here
end)
```

---

## onPlayerSurgeryCallback(world, player, itemID, itemCount)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerSurgeryCallback(function(world, player, itemID, itemCount)
    -- code here
end)
```

---

## onPlayerKillCallback(world, player, killedPlayer)

**Includes:**

* [World](./world.md)
* [Player](./player.md)

```lua
onPlayerKillCallback(function(world, player, killedPlayer)
    -- code here
end)
```

---

## onPlayerProviderCallback(world, player, tile, itemID, itemCount)

```lua
onPlayerProviderCallback(function(world, player, tile, itemID, itemCount)
    -- code here
end)
```

---

## onPlayerHarmonicCallback(world, player, tile, itemID, itemCount)

```lua
onPlayerHarmonicCallback(function(world, player, tile, itemID, itemCount)
    -- code here
end)
```

---

## onPlayerGeigerCallback(world, player, itemID, itemCount)

```lua
onPlayerGeigerCallback(function(world, player, itemID, itemCount)
    -- code here
end)
```

---

## onPlayerCatchGhostCallback(world, player, itemID, itemCount)

```lua
onPlayerCatchGhostCallback(function(world, player, itemID, itemCount)
    -- code here
end)
```

---

## onPlayerXPCallback(world, player, amount)

```lua
onPlayerXPCallback(function(world, player, amount)
    -- code here
end)
```

---

## onPlayerFirePutOutCallback(world, player, tile)

```lua
onPlayerFirePutOutCallback(function(world, player, tile)
    -- code here
end)
```

---

## onPlayerEarnGrowtokenCallback(world, player, itemCount)

```lua
onPlayerEarnGrowtokenCallback(function(world, player, itemCount)
    -- code here
end)
```

---

## onPlayerTrainFishCallback(world, player)

```lua
onPlayerTrainFishCallback(function(world, player)
    -- called once the player has trained a fish
    -- code here
end)
```

---

## onPlayerGemsObtainedCallback(world, player, amount)

```lua
onPlayerGemsObtainedCallback(function(world, player, amount)
    -- code here
end)
```

---

[Back](../README.md)
