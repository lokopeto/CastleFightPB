efeitozins:
    type: world
    debug: false
    events:
#        after delta time secondly:
#            - playeffect effect:SUSPENDED_DEPTH at:<location[-38.5,151,112.5,world]> quantity:1000 offset:5.0
        on player changes gamemode to spectator:
            - if !<player.location.world.contains_text[menu]>:
                - wait 1t
                - execute as_server "ppo <player.name> reset"
                - execute as_server "ppo <player.name> add soul point"
        on player changes gamemode:
            - if !<player.location.world.contains_text[menu]>:
                - execute as_server "ppo <player.name> reset"
        on player changes world:
            - execute as_server "ppo <player.name> reset"

#        on tick every:5:
#            - if <player.location.in[londama]>:
#                - playeffect effect:WATER_WAKE at:<player.location> quantity:10 offset:5.0,0.0,5.0 visibility:90000