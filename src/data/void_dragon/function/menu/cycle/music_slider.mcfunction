# cycles the music volume slider
execute if data storage void_dragon:storage settings{dragon_music_slider:"master"} run return run data modify storage void_dragon:storage settings.dragon_music_slider set value "music"
execute if data storage void_dragon:storage settings{dragon_music_slider:"music"} run return run data modify storage void_dragon:storage settings.dragon_music_slider set value "record"
execute if data storage void_dragon:storage settings{dragon_music_slider:"record"} run return run data modify storage void_dragon:storage settings.dragon_music_slider set value "hostile"
execute if data storage void_dragon:storage settings{dragon_music_slider:"hostile"} run return run data modify storage void_dragon:storage settings.dragon_music_slider set value "master"
data merge storage void_dragon:storage {settings:{dragon_music_slider:"master"}}
