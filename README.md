# 🪙 Coinshop Datapack

**Coin shop system for Minecraft 1.21.4**

A datapack that adds a system of three coin types (gold, silver, bronze) with the ability to create custom NPC shops.

## ✨ Features

- 🪙 **Three coin types** with custom textures
- 🏪 **Shop creator** - create merchants easily
- 💱 **Exchange system** - coins can be exchanged between each other
- 🤝 **Villagers** with invulnerability and disabled AI
- 🎨 **Custom textures** compatible with vanilla Minecraft

## 📦 Installation

### Datapack:
1. Download the `coinshop_datapack` folder
2. Place it in `saves/[world_name]/datapacks/`
3. Run `/reload` in game

### Resource Pack:
1. Download the `coinshop_resourcepack` folder
2. Place it in `.minecraft/resourcepacks/`
3. Enable it in **Settings → Resource Packs**

## 🎮 How to use

```bash
# Get test coins
/function coinshop:give_coins

# Open shop creator
/function coinshop:shop/open_gui

# Remove nearby merchants
/function coinshop:remove_merchant
```

### Creating a shop:
1. Use `/function coinshop:shop/open_gui`
2. Place items in the chest (follow the layout instructions)
3. Right-click with "Shop Creator" tool
4. Villager will spawn at your location

## 💰 Coin system

- **🥇 Gold Coin** = 100 bronze coins
- **🥈 Silver Coin** = 10 bronze coins  
- **🥉 Bronze Coin** = 1 (base currency)

Coins can be exchanged in crafting table or traded with villagers.

## 🔧 Requirements

- **Minecraft:** 1.21.4 (Vanilla)
- **Loader:** Not required
- **Mods:** Not required

## 🛠️ Compatibility

- ✅ Vanilla Minecraft
- ✅ Fabric + Sodium 
- ✅ Forge
- ✅ All popular mod loaders

## 📸 Screenshots

![Gold Coin](screenshots/goldcoin.png) ![Silver Coin](screenshots/silvercoin.png) ![Bronze Coin](screenshots/bronzecoin.png)

*Custom 16x16 pixel art coins with detailed shading and highlights*
## 🐛 Bug reports

Found an issue? [Open an issue](../../issues) with bug description.

## 🎨 Credits

### Textures:
- **Coin textures** created by **Grabson**
- Original 16x16 pixel art designed specifically for this datapack
- All textures are custom-made and included in the resource pack

### Code:
- Datapack system created by **Grabson**

## 📝 License

This project is available under MIT License. You can use, modify and distribute it.

**Note:** All textures are original work and free to use with this datapack.

## 👨‍💻 Author

**Grabson**
- GitHub: [@grabsonixus](https://github.com/grabsonixus)  
- Discord: *grabsonx*

*Created with help of Claude AI - thank you for support in creating this project! 🤖*

---

⭐ **Like this project? Leave a star!** ⭐