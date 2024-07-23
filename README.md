Infinity Nexus: Reborn 1.8 Essentials Lite
==========================================

This is a patched version for `Infinity Nexus: Reborn` version `1.8` that removes "performance" mods and tweaks,
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

|   Package                     |   Version           |  Server Side  |  Project ID   |
|-------------------------------|---------------------|---------------|---------------|
| BadOptimizations              | 2.1.1               |      No       |    949555     |
| Better Compatibility Checker  | 4.0.8               |      No       |    551894     |
| Better Fps - Render Distance  | 1.20.1-4.4          |      No       |    551520     |
| Connectivity Mod              | 1.20.1-5.5          |      No       |    470193     |
| Crash Utilities               | 8.1.4               |      No       |    371813     |
| Embeddium Extras              | 2.0.0               |      No       |    558905     |
| EntityCulling                 | 1.6.2               |      No       |    448233     |
| Fast Suite                    | 5.0.1               |      No       |    475117     |
| Fast Workbench                | 8.0.4               |   Unknown     |    288885     |
| FastFurnace                   | 8.0.2               |   Unknown     |    299540     |
| Fastload-Reforged             | 3.4.0               |      No       |    630620     |
| Ferrite Core                  | 6.0.1               |      No       |    429235     |
| ImmediatelyFast               | 1.2.14+1.20.4       |      No       |    686911     |
| Krypton Reforged              | 0.2.3               | Works without |    549394     |
| ModernFix                     | 5.18.1+mc1.20.1     |      No       |    790626     |
| Saturn                        | 0.1.3               |      No       |    670986     |
| Staaaaaaaaaaaack              | 1.20.1-1.5-71       |   Unknown     |    866957     |

- Tweak mods:

|   Package                     |   Version           |  Server Side  |  Project ID   |
|-------------------------------|---------------------|---------------|---------------|
| 3d-Skin-Layers                | 1.6.4               |      No       |    521480     |
| AppleSkin                     | 2.5.1+mc1.20.1      |      No       |    248787     |
| Client Tweaks                 | 11.1.0              |      No       |    251407     |
| Controlling                   | 12.0.2              |      No       |    250398     |
| Farsight Mod                  | 1.20.1-3.6          |      No       |    495693     |
| Highlighter                   | 1.1.9               |      No       |    521590     |
| Item Borders                  | 1.2.1               |      No       |    513769     |
| Item Zoom                     | 2.9.0               |      No       |    261725     |
| Extreme Sound Muffler         | 3.4.1-forge-1.20    |      Yes      |    363363     |
| Jade                          | 11.7.1              |      No       |    324717     |
| Journeymap                    | 5.9.21              |      No       |    32274      |
| Just Zoom                     | 1.0.2               |      No       |    561885     |
| Model Gap Fix                 | 1.15                |      No       |    676136     |
| Modern UI                     | 3.10.1.4            |      No       |    352491     |
| Mouse Tweaks                  | 2.25                |      No       |    60089      |
| Simple RPC                    | 3.2.4               |      No       |    411816     |
| Sound Physics Remastered      | 1.20.1-1.3.1        |      No       |    535489     |
| Toast Control                 | 8.0.3               |      No       |    271740     |

- Extra mods:

|   Package                     |   Version           |  Server Side  |  Project ID   |
|-------------------------------|---------------------|---------------|---------------|
| WorldEdit                     | 7.2.5+6463-5ca4dff  |      No       |    225608     |

Note: There are some mods that are either dependencies or mods that create
a unique UI for the modpack such as: `Embeddium`, `Player Animator`, `FancyMenu` and `Drippy Loading Screen`.

