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

Run `/function buildcraft:give` to receive a Quarry and two Lapis Quarry Markers. Keep the block above the Quarry empty because placement creates one output chest directly on top.

Place the Quarry first. It projects blue guide lines at the Quarry's level; place both markers on separate perpendicular lines from the Quarry to lock the rectangle. The Quarry remains idle until both markers exist. Right-click the Quarry to see its state, marker count, boundary, size, and depth. It mines only below the Quarry. Width and length are each limited to 64 blocks.

This first stable prototype supports one active Quarry at a time. Run `/function buildcraft:quarry/remove` near it before moving the machine. If the output chest fills up, mining drops remain at the drill until there is room.

Datapacks cannot register a genuinely new block. The pack therefore reserves the vanilla lodestone as its Quarry base, and the resource pack replaces the lodestone block model with the Quarry texture. While the resource pack is enabled, ordinary lodestones also look like Quarry blocks.

## Recipes

- Quarry: iron, redstone, a chest, and diamonds.
- Lapis Quarry Marker: lapis lazuli above a stick, producing two blue soul torches.

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
