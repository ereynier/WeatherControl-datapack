# Weather Control Datapack

## Description
The "Weather Control" datapack is a custom Minecraft datapack that allows players to control and manipulate the weather in the game. It introduces new items called "Weather Stars" that, when dropped on a lodestone, trigger different weather conditions such as rain, thunderstorms, and clear weather.

## Installation
To install the "Weather Control" datapack, follow these steps:

1. Download the datapack file (`WeatherControl.zip`) from [release section](https://github.com/ereynier/WeatherControl-datapack/releases).
2. Locate your Minecraft world's save folder.
   - For singleplayer worlds, the folder is typically located at `%appdata%/.minecraft/saves/`.
   - For multiplayer servers, refer to your server provider's documentation to find the save folder.
3. Open the save folder and navigate to the `datapacks` directory.
4. Place the downloaded `WeatherControl.zip` file into the `datapacks` directory.
5. Start or reload your Minecraft world/server.

## Usage
Once the datapack is installed, you can use it to control the weather in your Minecraft world. Here's how you can interact with the datapack:

### Obtaining Weather Stars
To obtain Weather Stars, you need to place a Nether Star named *"Weather"* on a crafting table along with specific additional items:

- **Clear Weather Star**: Place a Nether Star and a Blaze Powder on a crafting table.
- **Rain Weather Star**: Place a Nether Star and a Lingering Potion on a crafting table.
- **Thunder Weather Star**: Place a Nether Star and an Amethyst Shard on a crafting table.

These recipes will consume the additional items and give you the respective Weather Star.

### Activating Weather Conditions
To activate a specific weather condition, follow these steps:

1. Locate a lodestone in your Minecraft world.
2. Drop the corresponding Weather Star onto the lodestone.
3. The weather condition will change according to the type of Weather Star used.
   - Dropping a Clear Weather Star will make the weather clear.
   - Dropping a Rain Weather Star will start rain.
   - Dropping a Thunder Weather Star will start a thunderstorm.
 4. Using a Splash Water onto the lodestone will make the weather cycle normal.

### Check weather status
```   
/trigger w_weather
```

## Compatibility and Known Issues
The "Weather Control" datapack is compatible with Minecraft Java Edition 1.17 and above. However, please be aware of the following known issue:

- Placing multiple single Nether Stars (not stacked) on a crafting table with one additional item may result in receiving multiple Weather Stars. Similarly, placing multiple additional items with one Nether Star will give you a single Weather Star, but all the items will be consumed. Please exercise caution when crafting multiple Weather Stars.
- Using stacked items to craft or use Weather Stars will not work.
- Dropping multiple Weather Stars of different types simultaneously may consume all the dropped stars.
  
## Feedback and Bug Reporting
If you encounter any issues or have suggestions for improvement, feel free to contact the datapack creator or report the bug on the official Minecraft forums or community channels.

## Credits
The "Weather Control" datapack was created by Zstzbxn.
