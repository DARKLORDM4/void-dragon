# ============================================================
#  VOID DRAGON - load (runs when the world loads or on /reload)
# ============================================================
scoreboard objectives add vd.act dummy "VD act"
scoreboard objectives add vd.age dummy "VD age"
scoreboard objectives add vd.px dummy "VD last x"
scoreboard objectives add vd.pz dummy "VD last z"
scoreboard objectives add vd.py dummy "VD last y"
scoreboard objectives add vd.stuck dummy "VD stuck seconds"
scoreboard objectives add vd.qcd dummy "VD quake cooldown"
scoreboard objectives add vd.hdy dummy "VD heading yaw x10"
scoreboard objectives add vd.hdp dummy "VD heading pitch x10"
scoreboard objectives add vd.spd dummy "VD flight speed x100"
scoreboard objectives add vd.fxr dummy "VD fxr"
scoreboard objectives add vd.fxd dummy "VD fxd"
scoreboard objectives add vd.fxl dummy "VD fxl"
scoreboard objectives add vd.fxa dummy "VD fxa"
scoreboard objectives add vd.death dummy "VD death"
scoreboard objectives add vd.arrive dummy "VD arrive"
scoreboard objectives add vd.hp dummy "VD hp"
scoreboard objectives add vd.phase dummy "VD phase"
scoreboard objectives add vd.tmp dummy "VD tmp"
scoreboard objectives add vd.cfg dummy "VD cfg"
scoreboard objectives add vd.state dummy "VD state"
scoreboard objectives add vd.k dummy "VD k"
scoreboard objectives add vd.clock dummy "VD clock"
scoreboard objectives add vd.health dummy "VD health"
scoreboard objectives add vd.health_max dummy "VD health_max"
scoreboard objectives add vd.true_hp dummy "VD true health"
scoreboard objectives add vd.y dummy "VD y"
scoreboard objectives add vd.phase_prev dummy "VD phase_prev"
scoreboard objectives add vd.dragondmg dummy "VD dragondmg"
scoreboard objectives add vd.health_prev dummy "VD health_prev"
scoreboard objectives add vd.reignite dummy "VD reignite"
scoreboard objectives add vd.thunder dummy "VD thunder"
scoreboard objectives add vd.pull dummy "VD pull"
scoreboard objectives add vd.meteor dummy "VD meteor"
scoreboard objectives add vd.vfire dummy "VD vfire"
scoreboard objectives add vd.wave dummy "VD wave"
scoreboard objectives add vd.affix dummy "VD affix"
scoreboard objectives add vd.intro dummy "VD intro"
scoreboard objectives add vd.push dummy "VD push"
scoreboard objectives add vd.bro dummy "VD bro"
scoreboard objectives add vd.bro2 dummy "VD bro2"
scoreboard objectives add vd.bro_hp dummy "VD bro_hp"
scoreboard objectives add vd.bro_dcd dummy "VD bro_dcd"
scoreboard objectives add vd.fd dummy "VD fd"
scoreboard objectives add vd.bro_near dummy "VD bro_near"
scoreboard objectives add vd.tail dummy "VD tail"
scoreboard objectives add vd.cap dummy "VD cap"
scoreboard objectives add vd.song dummy "VD song"
scoreboard objectives add vd.lance dummy "VD lance"
scoreboard objectives add vd.lt dummy "VD lt"
scoreboard objectives add vd.orbs dummy "VD orbs"
scoreboard objectives add vd.ol dummy "VD ol"
scoreboard objectives add vd.rift dummy "VD rift"
scoreboard objectives add vd.rt dummy "VD rt"
scoreboard objectives add vd.ro dummy "VD ro"
scoreboard objectives add vd.lst dummy "VD lst"
scoreboard objectives add vd.lsg dummy "VD last stand group"
scoreboard objectives add vd.lsw dummy "VD last stand wait"

# numbers the math needs
scoreboard players set #k2 vd.k 2
scoreboard players set #k7 vd.k 7
scoreboard players set #k3600 vd.k 3600
scoreboard players set #kneg vd.k -1
scoreboard players set #k3 vd.k 3
scoreboard players set #k10 vd.k 10
scoreboard players set #k100 vd.k 100
scoreboard players set #k1000 vd.k 1000
scoreboard players set #k1024 vd.k 1024
scoreboard players set #k10000 vd.k 10000

# boss bars and teams
bossbar add void_dragon:shield {"text":"Crystal Shield","color":"aqua","bold":true}
bossbar set void_dragon:shield color blue
bossbar set void_dragon:shield style notched_6
bossbar add void_dragon:brothers {"text":"The Voidborn Brothers","color":"light_purple","bold":true}
bossbar set void_dragon:brothers color purple
bossbar set void_dragon:brothers style notched_10
team add vd.brothers
team modify vd.brothers friendlyFire false
team modify vd.brothers color reset
team add vd.loot
team modify vd.loot color light_purple

# settings that were never set get their default value
function void_dragon:menu/defaults

#boss music: 237.17 s = 4743 ticks; it loops after this
scoreboard players set music_loop_ticks vd.state 4743
tellraw @a[tag=!vd.quiet_load] [{"text":"Void Dragon ","color":"dark_purple","bold":true},{"text":"loaded. Settings: ","color":"gray","bold":false},{"text":"[open menu]","color":"light_purple","underlined":true,"click_event":{"action":"run_command","command":"/function void_dragon:menu/page1"}}]
