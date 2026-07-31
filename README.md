# BuildCraft â€” datapacks only

BuildCraft is an experiment in recreating the spirit of BuildCraft using only Minecraft Java datapacks. The first milestone is a working quarry and a simple vanilla-block pipe connection.

## Target version

The datapack currently targets **Minecraft Java 26.3 Snapshot 6** and data-pack version **113.0**. Snapshots can change or corrupt worlds, so use a test world and keep backups.

## Install

BuildCraft now has two parts, following the same datapack-plus-resource-pack pattern used by packs such as [Matcha Flavoured](https://modrinth.com/datapack/matcha-flavoured):

1. Copy [`datapack/buildcraft`](datapack/buildcraft) into the `datapacks` folder of a Minecraft Java 26.3 Snapshot 6 world.
2. Copy [`resourcepack/buildcraft_assets`](resourcepack/buildcraft_assets) into `.minecraft/resourcepacks` and select it in the Resource Packs menu.
3. Run `/reload` in the world.
4. Run `/function buildcraft:give` for the Quarry block.

## Quarry MVP

Run `/function buildcraft:give`, then place the **BuildCraft Quarry** barrel where you want to mine. Because datapacks cannot add a truly new block, the placed anchor remains a vanilla barrel for block interaction and middle-click pickup; the selected resource pack changes its item and in-world display to a custom quarry texture. The two blocks above it and the two blocks east of it should be empty because placement creates:

- an output chest one block above the quarry anchor;
- a hopper pipe one block east of the output chest;
- an input chest one block above the hopper.

Place items in the input chest and the hopper will move them into the output chest. The quarry mines one block every ten game ticks in a 3Ã—3 column, starting one block below the anchor, and sends nearby drops into the output chest. It stops after 32 layers.

Useful commands:

```mcfunction
/function buildcraft:give
/function buildcraft:quarry/remove
```

The current implementation is intentionally small and transparent. Future milestones can add fuel, selectable quarry sizes, visible custom pipe blocks, pause/resume controls, and safer block filters.

## Layout

```text
           input chest
                |
        hopper pipe -> output chest
                         [quarry anchor]
                             |
                         3Ã—3 mine area
```

## License

MIT. See [LICENSE](LICENSE).
