dipartida_update:
    type: task
    debug: false
    definitions: partida|status
    script:
    - if <[status]> = 0:
        - define "status:<aqua>Castle Fight <[partida]>"
    - if <[status]> = 1:
        - define "status:<green><bold>Castle Fight <[partida]>"
    - if <[status]> = 2:
        - define "status:<red>Castle Fight <[partida]>"
    - if <[status]> = 3:
        - define "status:<&e><italic>Recriando Mundo"

    - adjust <server.flag[dipartida<[partida]>]> name:<[status]>
    - adjust <server.flag[dipartida<[partida]>]> item:air

dipartida_create:
    type: task
    debug: false
    definitions: x|y|z|partida
    script:
    - remove <server.flag[dipartida<[partida]>]>

    - create item_display "<green><bold>Castle Fight <[partida]>" <location[<[x]>,<[y]>,<[z]>,world]> save:displayitem

    - flag server dipartida<[partida]>:<entry[displayitem].created_npc>
    - adjust <entry[displayitem].dropped> glowing:false
    - adjust <entry[displayitem].created_npc> item:air