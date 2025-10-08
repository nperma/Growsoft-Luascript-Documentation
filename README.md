# <h1 align="center">GrowSoft Script Documentation</h1>

---

**Created by:** Nperma  
**Last Update:** 08-11-2025

---

## Documentation Index

Here are the main sections of the GrowSoft scripting API:

- [Callback](docs/callback.md) – Events and callbacks triggered by the game.
- [Player](docs/player.md) – Player object, methods, and properties.
- [World](docs/world.md) – World object, methods, and properties.

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

* Make sure to always check player roles before executing sensitive commands.
* All examples use the **GrowSoft Lua API**.
* For detailed object methods and properties, refer to the linked documentation above.
