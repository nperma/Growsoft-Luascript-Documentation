
## Server Data Structure and Global

The **Server Data API** provides various global functions for managing game-wide data, events, store systems, player rankings, and server-level interactions.

---

### Event & Offer Management

```lua
getRequiredEvent() -- Returns the required event.
getCurrentServerDailyEvent() -- Returns the current server's daily event.
getServerCurrentEvent() -- Returns the current server's event.
getIOTMItem() -- Returns the IOTM (Item of the Month) item.
addDailyOfferPurchased(player:getUserID(), changethis:getItemID()) -- Adds a daily offer purchased entry.
getRealGTItemsCount() -- Returns the total number of real GT items.
getEventOffers() -- Returns the list of current event offers.
getActiveDailyOffers() -- Returns all active daily offers.
```

---

### Purchase & Store System

```lua
onPurchaseItem(player, item, true/false) -- Fires the item purchase event.
onPurchaseItemReq(player, itemID) -- Fires the item purchase request event.
getStoreItems() -- Returns the list of store items.
getEnumItem("ITEM_[NAME]") -- Returns the item object using its enum name.
```

---

### Player & World Rankings

```lua
getTopPlayerByBalance() -- Returns the top player based on balance.
getTopWorldByVisitors() -- Returns the top world based on visitors.
```

---

### Lua Module & Playmod System

```lua
registerLuaPlaymod(PLAYMODDATA) -- Registers a Lua-based playmod configuration.
addMod(MODID, amount) -- Adds a specific playmod modifier.
reloadScripts() -- Reloads all Lua scripts.
```

---

### Data Management

```lua
loadDataFromServer(data) -- Loads data from the server.
loadData() -- Loads general saved data.
saveDataToServer(data, data2) -- Saves data to the server.
onAutoSaveRequest(function()) -- Executes on auto-save event.
```

---

### Server Information

```lua
getExpireTime() -- Returns the server's expire time.
getServerName() -- Returns the server name.
getServerID() -- Returns the server ID.
getServerPlayers() -- Returns a list of players currently on the server.
getNewsBanner() -- Returns the current news banner.
getNewsBannerDimensions() -- Returns the dimensions of the news banner.
getTodaysDate() -- Returns today's date.
getTodaysEvents() -- Returns today's events.
getCurrentEventDescription() -- Returns the description of the current event.
getCurrentDailyEventDescription() -- Returns the description of the current daily event.
getCurrentRoleDayDescription() -- Returns the description of the current role day.
```

---

### World Menu Management

```lua
addWorldMenuWorld(worldID, displayName, color, priority) -- Adds a world to the world menu.
removeWorldMenuWorld(worldID) -- Removes a world from the world menu.
hideWorldMenuDefaultSpecialWorlds(0/1) -- Hides or shows default special worlds (1 = hide, 0 = show).
```

---

### Server Persistence (Key-Based)

```lua
loadDataFromServer(key) -- Loads a Lua table using a key from the server.
saveDataToServer(key, dataTable) -- Saves a Lua table to the server using a specific key.
loadStringFromServer(key) -- Loads a string value from the server.
saveStringToServer(key, value) -- Saves a string value to the server.
```

---

### UI & Event Registration

```lua
registerLuaEvent(eventData) -- Registers a custom server-wide event.
addSidebarButton(buttonJson) -- Adds a button to the player's sidebar UI using a JSON definition.
addSocialPortalButton(buttonDef, callback) -- Adds a button to the social portal with an assigned callback.
```

---

[Back](../README.md)
