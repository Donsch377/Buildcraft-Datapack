# BuildCraft - datapacks only

BuildCraft is an experiment in recreating the spirit of BuildCraft using only Minecraft Java datapacks. The first milestone is a working quarry with landmark-defined areas.

## Target version

The datapack targets **Minecraft Java 26.3 Snapshot 6** and data-pack version **113.0**. Snapshots can change or corrupt worlds, so use a test world and keep backups.

## Install

BuildCraft has a datapack and a companion resource pack, following the same pattern used by packs such as [Matcha Flavoured](https://modrinth.com/datapack/matcha-flavoured):

1. Copy [`datapack/buildcraft`](datapack/buildcraft) into the world's `datapacks` folder.
2. Copy [`resourcepack/buildcraft_assets`](resourcepack/buildcraft_assets) into `.minecraft/resourcepacks` and select it in the Resource Packs menu.
3. Run `/reload` in the world.
4. Run `/function buildcraft:give` for the Quarry block.

The current test world uses `C:\Users\donsc\AppData\Roaming\.minecraft\saves\New World\datapacks` for the datapack.

## Quarry MVP

Run `/function buildcraft:give`, then place the **BuildCraft Quarry** dropper where you want to mine. Because datapacks cannot add a truly new block, the placed anchor remains a vanilla dropper for block interaction and middle-click pickup; the selected resource pack adds the custom quarry display over the machine-like base. Keep the block above it empty because placement creates one output chest above the quarry.

The quarry mines one block every ten game ticks and sends every drop directly into that single chest. With no landmarks it mines a 3x3 area. Craft Lapis Quarry Markers and place three or four on the same level at the corners of the desired area. A nearby quarry detects them automatically and scans the marked rectangle down to bedrock. The maximum width and length are 128 blocks.

## Recipes

- Quarry: iron, redstone, a chest, and diamonds.
- Lapis Quarry Marker: lapis lazuli and a stick, producing four blue soul torches.

Useful commands:

```mcfunction
/function buildcraft:give
/function buildcraft:quarry/remove
```

## Layout

```text
                         output chest
                              |
                         [quarry anchor]
                              |
                         marked mine area
```

## License

MIT. See [LICENSE](LICENSE).
