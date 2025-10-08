
# <h1 align="center">GrowSoft Script Documentation</h1>

---

**Created by:** Nperma  
**Last Update:** 08-11-2025

---

## Documentation Index

Here are the main sections of the GrowSoft scripting API:

- [Callback](docs/callback.md) – Events and callbacks triggered by the game.  
- [Server & Global](docs/server-and-global.md) – Server-wide and global functions.  
- [Dialog Syntax](docs/dialog-syntax.md) – Syntax for in-game dialogs.  
- [Player](docs/player.md) – Player object, methods, and properties.  
- [World](docs/world.md) – World object, methods, and properties.  
- [Tile](docs/tile.md) – Tile object and interactions.  
- [Item](docs/item.md) – Item object reference.  
- [Inventory Item](docs/inventory-item.md) – Methods like `player:getInventoryItems()` returning [Item](docs/item.md) Object instances.  
- [Drop](docs/drop.md) – Methods like `world:getDroppedItems()` returning [Item](docs/item.md) Object instances.  
- [OS Library](docs/os-lib.md) – Operating system utility functions.  
- [Libraries](docs/http-and-json.md) – HTTP requests and JSON utilities.  
- [Miscellaneous](docs/miscellanous.md) – Other utility functions and helpers.  

---

## Examples

### Registering a Command

Registers a new Lua command in the game.

```lua
registerLuaCommand(commandData)
-- commandData = {
--   command = string,        -- Command name
--   roleRequired = number,   -- Required role ID to execute the command
--   description = string     -- Description of the command
-- }
````

### Example Usage

```lua
registerLuaCommand({
    command = "clear",
    roleRequired = 7,
    description = "Clears the current world."
})
```

---

## Notes

* Always check player roles before executing sensitive commands.
* All examples use the **GrowSoft Lua API**.
* For detailed object methods and properties, refer to the linked documentation above.
