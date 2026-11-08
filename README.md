# Void Dragon — source (V1.0)

A Fabric mod (data pack + resources) for Minecraft 26.2 that turns the Ender Dragon into a multi-phase boss.
Needs Fabric API.

## The fight
- **Start:** the dragon is shielded until every tower crystal (the 10 originals + 24 outer towers) is destroyed.
- **Phase I → II (2/3 health):** more attacks unlock.
- **50%:** the Voidborn Brothers arrive — VEXIS (archer on the phantom Nightmaw) and KETHLER (Ender Knight).
  The dragon is shielded and holds back until both are dead.
- **Desperate (1/3):** the original towers' crystals return behind a shield; Rift Tear unlocks; every attack combos.
- **Last stand (1/10):** every independent attack fires at once.
- **Rewards:** XP (24,000 on repeat kills), leaderboard, Dragon Slayer advancement, Dragon Wings for the top damage dealer.

Attacks: Void Lances, Abyssal Orbs, Rift Tear, Thunderstrike, Gravity Crash, Meteor Rain, Void Fire, Void Shriek, Tail Sweep.

## Credits
- Made by DARK_LORD_M
- Inspired by the "True Ending" datapack by limesplatus (no code from it remains)

## Where things are (`src/data/void_dragon/function/`)
| Folder | What it does |
|---|---|
| `tick` / `load` | runs every tick / on world load |
| `dragon/` | the dragon's brain (`brain`), setup, health milestones, damage cap, death |
| `attack/` | every attack; `director` decides when they start, `roll/` holds the chances |
| `shield/` | the four crystal / brothers shields |
| `brothers/` | the Voidborn Brothers mini-bosses |
| `towers/` | outer towers, crystal respawning, turrets, affixes, crystal revenge |
| `phase/` | intro, boss-bar name, desperate, last stand |
| `reward/` | XP, leaderboard, Dragon Slayer, Dragon Wings |
| `menu/` | the 3-page settings menu (`/function void_dragon:menu/page1`) |
| `music/`, `atmosphere/` | boss music loop, ambient particles |
| `fx/` | animations: the ring engine (`fx/ring`), respawn ritual, arrival swirl, death collapse, portal afterglow, crystal shatter |
| `cmd/` | test and admin commands |

Other data: `damage_type/` (+ death messages in `assets/void_dragon/lang`), `enchantment/` (hidden knockback helpers),
`advancement/`, `predicate/`, `tags/`, and `data/minecraft/enchantment/mending.json` (Mending I–III: 2/4/6 durability per XP).

## Build the .jar
Windows: double-click `build.bat`. Mac/Linux: `./build.sh`. (A .jar is a .zip of `src`.)

## Music
`src/assets/void_dragon/sounds/boss_theme.ogg` — to swap it, replace the file and set its length in ticks
(20 per second) as `music_loop_ticks` in `src/data/void_dragon/function/load.mcfunction`.
