# BuildCraft â€” datapacks only

BuildCraft is an experiment in recreating the spirit of BuildCraft using only Minecraft Java datapacks. The first milestone is a working quarry and a simple vanilla-block pipe connection.

## Target version

The datapack currently targets **Minecraft Java 26.3 Snapshot 6** and data-pack version **113.0**. Snapshots can change or corrupt worlds, so use a test world and keep backups.

## Install

1. Copy [`datapack/buildcraft`](datapack/buildcraft) into the `datapacks` folder of a Minecraft Java 26.3 Snapshot 6 world.
2. Run `/reload`.
3. Run `/function buildcraft:give` for the setup commands.

## Quarry MVP

Run `/function buildcraft:quarry/create` while standing at the center of the area you want to mine. The two blocks above you and the two blocks east of you must be empty because the function creates:

- an output chest one block above the quarry anchor;
- a hopper pipe one block east of the output chest;
- an input chest one block above the hopper.

Place items in the input chest and the hopper will move them into the output chest. The quarry mines one block every ten game ticks in a 3Ã—3 column, starting one block below the anchor, and sends nearby drops into the output chest. It stops after 32 layers.

Useful commands:

```mcfunction
/function buildcraft:quarry/create
/function buildcraft:quarry/remove
/function buildcraft:give
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

