
# Player Object Documentation

## Overview

The `Player` object in GrowSoft provides access to player-specific data, actions, and UI interactions. Most methods are used with the colon operator (`player:methodName()`).

---

## Player Currency

```lua
player:getGems() -- Returns the player's gems count.
player:addGems(amount, arg1, arg2) -- Adds gems to the player.
player:removeGems(amount, arg1, arg2) -- Removes gems from the player.
player:getCoins() -- Returns the player's coins count.
player:removeCoins(amount, arg1) -- Removes coins from the player.
````

---

## Player Inventory

```lua
player:getInventorySize() -- Returns the player's inventory size.
player:isMaxInventorySpace() -- Returns true if inventory is full.
player:upgradeInventorySpace(amount) -- Increases inventory slots.
player:getItemAmount(itemID) -- Returns the count of a specific item.
player:changeItem(itemID, amount, arg1) -- Adds/removes an item.
player:getInventoryItems() -- Returns table of all inventory items.
player:getClothingItemID([clothesID]) -- Returns a clothing item's ID.
player:getBackpackUsedSize() -- Returns backpack used slots.
player:setSlots(slotAmount) -- Sets the player's slots.
```

---

## Player Stats

```lua
player:getGems()
player:getCoins()
player:getUnlockedAchievementsCount()
player:getAchievementsCount()
PlayerStats.ConsumablesUsed -- Access player's consumables used
```

---

## Player UI & Dialogs

```lua
player:onConsoleMessage(message) -- Sends a message to the player.
player:onTalkBubble(netID, message, [0 or 1]) -- Show a talk bubble.
player:onDialogRequest(dialog) -- Opens a dialog.
player:setNextDialogRGBA(r, g, b, a) -- Change dialog background color.
player:setNextDialogBorderRGBA(r, g, b, a) -- Change dialog border color.
player:resetDialogColor() -- Reset dialog color to default.
player:onTextOverlay("text") -- Displays overlay text.
```

### Player Menus / Interfaces

```lua
player:onTradeScanUI()
player:onGrow4GoodUI()
player:onGuildNotebookUI()
player:onGrowmojiUI()
player:onGrowpassUI()
player:onNotebookUI()
player:onBillboardUI()
player:onPersonalizeWrenchUI()
player:onOnlineStatusUI()
player:onFavItemsUI()
player:onCoinsBankUI()
player:onUnlinkDiscordUI()
player:onLinkDiscordUI()
player:onClothesUI(targetPlayer)
player:onAchievementsUI(targetPlayer)
player:onTitlesUI(targetPlayer)
player:onWrenchIconsUI(targetPlayer)
player:onNameIconsUI(targetPlayer)
player:onVouchersUI()
player:onMentorshipUI()
player:onBackpackUI(targetPlayer)
player:onStorePurchaseResult()
player:onRedeemMenu()
player:onGrow4GoodDonate()
```

---

## Player Audio & Actions

```lua
player:playAudio("audio.wav") -- Plays an audio file.
player:sendAction("action|play_sfx\nfile|audio/blabla.mp3\ndelayMS|0")
player:sendVariant({"OnTalkBubble", player:getNetID(), "Hello", 0, 0})
player:sendVariant({"OnConsoleMessage", "Hello"})
player:sendVariant({"OnConsoleMessage", "Hello"}, delay, netID)
```

---

## Player World & Connection

```lua
player:getWorld() -- Returns the current world object or nil.
player:getWorldName() -- Returns the world name as a string.
player:enterWorld(worldName, "Message") -- Enters specified world.
player:disconnect() -- Disconnects the player from server.
```

---

## Player Identity

```lua
player:getNetID() -- Returns the player's net ID.
player:getUserID() -- Returns the player's user ID.
player:getCleanName() -- Returns the player's clean name.
player:lower() -- Returns lowercase player name.
player:getCleanName():lower() -- Clean name in lowercase.
player:getCountry() -- Returns player's country (string, online only).
player:getPlatform() -- Returns player's platform ID (0=Windows, 1=iOS, 2=MacOS, 4=Android).
player:getDiscordID() -- Returns the player's Discord ID.
player:getAccountCreationDateStr() -- Returns account creation date.
player:hasRole(role) -- Checks if player has role.
player:setRole(role) -- Sets player's role.
```

---

## Player Modifiers & Buffs

```lua
player:getMod(modID) -- Returns player's mod status.
player:addMod(modID, number) -- Adds a mod/buff to the player.
player:getSubscription(subscriptionID) -- Returns subscription status.
player:getHomeWorldID() -- Returns player's home world ID.
player:getOnlineStatus() -- Returns online status.
player:getGuildID() -- Returns guild ID.
player:getTransformProfileButtons() -- Returns transform profile buttons.
```

---

## Player Profile & Content

```lua
player:getClassicProfileContent(category, flags)
```

---

## Player Utility

```lua
getPlayerByName(name) -- Returns a player object by name.
getAutofarm() -- Returns player's autofarm status.
```

---
