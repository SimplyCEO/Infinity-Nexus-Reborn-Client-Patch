Infinity Nexus Mod 1.20.X Essentials Lite
=========================================

This is a patched version for Infinity Nexus Mod that removes "performance" mods and tweaks,
that might not be desirable for some users.

Requirements
------------

- OS:<br>
  You can run it with Windows, but there's no performance gain.

- CPU:<br>
  Any dual-core processor should suffix.

- eGPU:<br>
  Recommended, but not needed.

- Memory:<br>
  Minimum required is 4096 MiB (~4.29 GB).<br>
  Can be downscaled to 2048 MiB (~2.14 GB), but will impact on loading time.<br>
  Recommended is 6144 MiB (~6.44 GB) or above since registered objects reach around this limit.

- HDD space:<br>
  Around 615 MiB or 650 MB.

- Optional JVM arguments:
  `-XX:+TieredCompilation -XX:+OptimizeStringConcat -XX:+UseCompressedOops -XX:ParallelGCThreads=4 -XX:CICompilerCount=2`<br>
  `-Dorg.lwjgl.openal.libname=/lib/libopenal.so` can be used on Unix only systems, to use the latest OpenAL version. It will fix a crash in `Sound Physics Remastered` if provided.

Note: This modpack can be downloaded using `MultiMC`, `PolyMC`, `PrismLauncher`, `ShadyLauncher`
or whatever launcher apart from `CurseForge App` one that support ZIP loading `CurseForge API`.

Removed content
---------------

- Performance mods:

|   Package                     |   Version           |  Server Side  |
|-------------------------------|---------------------|---------------|
| BadOptimizations              | 2.1.1               |      No       |
| Better Compatibility Checker  | 4.0.8               |      No       |
| betterfpsdist mod             | 1.20.1-4.4          |      No       |
| Connectivity Mod              | 1.20.1-5.5          |      No       |
| Crash Utilities               | 8.1.4               |      No       |
| Embeddium Extras              | 2.0.0               |      No       |
| EntityCulling                 | 1.6.2               |      No       |
| Fast Suite                    | 5.0.1               |      No       |
| Fast Workbench                | 8.0.4               |   Unknown     |
| FastFurnace                   | 8.0.2               |   Unknown     |
| Fastload-Reforged             | 3.4.0               |      No       |
| Ferrite Core                  | 6.0.1               |      No       |
| ImmediatelyFast               | 1.2.14+1.20.4       |      No       |
| Krypton Reforged              | 0.2.3               | Works without |
| Modern Fix                    | 5.18.1+mc1.20.1     |      No       |
| Saturn                        | 0.1.3               |      No       |
| Staaaaaaaaaaaaack             | 1.20.1-1.5-71       |   Unknown     |

- Tweak mods:

|   Package                     |   Version           |  Server Side  |
|-------------------------------|---------------------|---------------|
| 3d-Skin-Layers                | 1.6.4               |      No       |
| AppleSkin                     | 2.5.1+mc1.20.1      |      No       |
| Client Tweaks                 | 11.1.0              |      No       |
| Controlling                   | 12.0.2              |      No       |
| Farsight Mod                  | 1.20.1-3.6          |      No       |
| Highlighter                   | 1.1.9               |      No       |
| Item Borders                  | 1.2.1               |      No       |
| Item Zoom                     | 2.9.0               |      No       |
| Extreme Sound Muffler         | 3.4.1-forge-1.20    |      Yes      |
| Jade                          | 11.7.1              |      No       |
| Journeymap                    | 5.9.21              |      No       |
| Just Zoom                     | 1.0.2               |      No       |
| Model Gap Fix                 | 1.15                |      No       |
| Modern UI                     | 3.10.1.4            |      No       |
| Mouse Tweaks                  | 2.25                |      No       |
| Simple RPC                    | 3.2.4               |      No       |
| Sound Physics Remastered      | 1.20.1-1.3.1        |      No       |
| Toast Control                 | 8.0.3               |      No       |

- Extra mods:

|   Package                     |   Version           |  Server Side  |
|-------------------------------|---------------------|---------------|
| WorldEdit                     | 7.2.5+6463-5ca4dff  |      No       |

Note: There are some mods that are either dependencies or mods that create
a unique UI for the modpack such as: `Embeddium`, `Player Animations`, `FancyMenu` and `Drippy Loading Screen`.
