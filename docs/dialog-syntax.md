
## onDialogRequest String Syntax

The `onDialogRequest` callback uses a custom string syntax to design and control the dialog interface.
Each dialog string can contain multiple UI and formatting commands separated by newline characters (`\n`).

---

### Basic Commands

```
set_default_color|Color
set_border_color|r,g,b,a|
set_bg_color|r,g,b,a|
set_custom_spacing|x:value;y:value|
add_custom_break|
start_custom_tabs|
end_custom_tabs|
disable_resize|
reset_placement_x|
```

---

### UI Elements

```
add_item_picker|name|message|placeholder|
add_player_info|name|level|exp|expRequired|
add_checkbox|name|message|checked|
add_friend_image_label_button|name|label|texture_path|size|texture_x|texture_y|
add_smalltext|message|
add_button_with_icon|big/small|label|flags|iconID|hoverNumber|
add_label_with_icon|size|message|alignment|iconID|
add_text_input|name|message|defaultInput|length|
add_spacer|size|
add_textbox|message|
add_quick_exit|
```

---

### Advanced Commands

```
embed_data|embed|data|
add_progress_bar|name|size|text|current|max|color|
add_image_button|name|imagePath|flags|open|label|
add_tab_button|name|label|iconPath|x|y|
add_banner|imagePath|x|y|
add_big_banner|imagePath|x|y|text|
```

---

### Additional Commands

```
add_searchable_item_list|data|listType:iconGrid;resultLimit:[amount]|searchFixedName|
add_dual_layer_icon_label|size|message|alignment|iconID|background|foreground|size|toggle|
add_seed_color_icons|itemId|
add_label_with_icon_button|size|message|alignment|iconID|buttonName|
add_button_with_icon|btnName|text|option|itemID|unkVal|
add_button_with_icon|btnName|progress|itemID|
add_button_with_icon|btnName|underText|itemID|
add_button_with_icon|btnName|itemID|
add_label|size|message|alignment|
add_button_with_icon|name|text|staticBlueFrame[is_count_label][no_padding_x]|itemID|left|
add_small_font_button|name|button|noflags|0|0|
add_button|name|button|noflags|0|0|
add_button|name|button|off|0|0|
add_small_font_button|name|button|off|0|0|
add_custom_button|name|option|
add_custom_label|option1|option2|
add_custom_spacer|x:value|
add_custom_textbox|text|size:value|
add_achieve_button|achName|achToGet|achID|unk|
add_community_button|button|btnName|noflags|0|0|
add_cmmnty_ft_wrld_bttn|worldName|ownerName|worldName|
add_cmmnty_wotd_bttn|top|worldName|ownerName|imagePath|x|y|worldName|
community_hub_type|hubType|
enable_tabs|enable|
add_tab_button|btn|name|iconPath|x|y|
add_banner|imagePath|x|y|
add_big_banner|imagePath|x|y|text|
```

---

### Examples

#### Example 1 — Simple Dialog

```lua
onDialogRequest(function(world, player)
  local dialog = ""
  dialog = dialog ..
    "set_default_color|`w`\n" ..
    "add_label|big|Welcome to GrowSoft|left|\n" ..
    "add_textbox|Choose an option below:|\n" ..
    "add_button|btn_start|Start|noflags|0|0|\n" ..
    "add_quick_exit|\n"
  player:sendDialog(dialog)
end)
```

#### Example 2 — Using Icons and Progress

```lua
onDialogRequest(function(world, player)
  local dialog = ""
  dialog = dialog ..
    "set_bg_color|0,0,0,200|\n" ..
    "add_label_with_icon|big|Collect Gems|left|242|\n" ..
    "add_progress_bar|gems|big|Your Progress|50|100|blue|\n" ..
    "add_button_with_icon|btn_claim|Claim|noflags|112|0|\n"
  player:sendDialog(dialog)
end)
```

#### Example 3 — Item List with Search

```lua
onDialogRequest(function(world, player)
  local dialog = ""
  dialog = dialog ..
    "add_textbox|Search your favorite items below:|\n" ..
    "add_searchable_item_list|data|listType:iconGrid;resultLimit:12|searchFixedName|\n" ..
    "add_quick_exit|\n"
  player:sendDialog(dialog)
end)
```

---

[Back](../README.md)
