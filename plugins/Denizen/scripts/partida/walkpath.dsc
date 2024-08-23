walkspeed:
    type: world
    debug: false
    events:
        on player steps on packed_mud|dirt_path in:castlefight*:
            - if <player.has_flag[pathspeed]>:
                - stop

            - flag <player> pathspeed expire:40t
            - adjust <player> walk_speed:0.25

            - waituntil !<player.has_flag[pathspeed]>

            - flag <player> pathspeed:!
            - adjust <player> walk_speed:0.2
        on player walks:
            - if <player.has_flag[pathspeed]>:
                - if <player.visible>:
                    - playeffect effect:SPIT at:<player.location> offset:0.3,0,0.3