npcs:
    type: world
    debug: false
    events:
        on npcs command:
            - foreach <server.npcs_named[Londama]> as:npc:
                - remove <[npc]>
            - foreach <server.npcs_named[Exilado]> as:npc:
                - remove <[npc]>
            - foreach <server.npcs_named[Exiladosit]> as:npc:
                - remove <[npc]>

            - define world <context.args.get[1]>

            - remove <server.flag[Londamatrigger<[world]>]>

            - create player Londama <location[-38.5,147.00,124.5,0,180,<[world]>]> save:Londama
            - create player Exilado <location[-35.5,172,114.5,<[world]>]> save:Exilado1
            - create player Exilado <location[-46.70,175.00,113.70,<[world]>]> save:Exilado2
            - create player Exiladosit <location[-37.5,173.00,111.5,<[world]>]> save:Exilado3
            - create player Exiladosit <location[-25.5,175.00,114.5,<[world]>]> save:Exilado4
            - adjust <entry[Londama].created_npc> skin_blob:ewogICJ0aW1lc3RhbXAiIDogMTY4MjgwODY5MzU2MywKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzMzY2U1MmQyOWZhM2YxNGRmODk4MDRlNTE2Yzc3Y2M4YTIzOTg1M2M5YTBkODgxNzlkOGY5OTVhNDhkYzQ2NTAiCiAgICB9CiAgfQp9;LPKY8Lw2P3Sw8B/2iDdCBvzTm0ESe4rS22lEqodeEQlPsXMbut42Zk+QuwHDzC8KJPdM3t52IFZVUGo9FQNndcZhYCYyBtZNjtlcve1UmfHqrMSLtHCHtc3NHAYbUT0NwNOhC9qJcwAxN0wAvBYFATqlFbLcA5Q71FXoYhRnhdW1EueoX+12Opbkphhpmk+wHWbT7tmKAPJKQWyNF66Od5IOFpXEkvmkh4XggZ9GbzLbEVwXi+hTWA1i2LLpjwJWRA/dJCxhm2HQ6QTTFa7ry5Mwul5CASv/aJCGBWZO3tc0XQV4GmDWaMyeIiX83/0Lrgbqx3Zr815FniYGTsIb+63WMQXPwIFrlAnvte4Nddy2T6vT3fQZyjOGcdn/aSLiD5oSUQn1tAsqpNKIcfrT2MUmPId96USInspLGrqehzpP+tYaQMLNKGMrnjTsINdl7mKJvYzuvokeYX0HuC+UJ984J8V+C5s2w0RwhJ+7r5/kLfDmT9Ap8WpuXdhAH9iaPXjhusTBJ+0w1WSuihNZDJRdHlLyjMKBy07/FFvlrvEAVplAmYVsIPa6v6LJu24B5k9QN7W9keTMf0G6lxEZASRe5VLaN3+HWiD9NjFgbzYKhnuUIRylwbcNk6eG7fodErrNUrU8wnProBU/3Z/LAry305ZL2GsoEcnNE2J8Hpk=
            - adjust <entry[Exilado1].created_npc> skin_blob:ewogICJ0aW1lc3RhbXAiIDogMTY3MTMwOTMyNTE1OSwKICAicHJvZmlsZUlkIiA6ICI2NmE2ZWZiNzEwNDc0NjdiYmMzYmVhMGRjYWZlNTU4MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJZdWtpb0RhbmRyZSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xNWRhMDMwYzUzMmNiYmQzMmY1ZjkzYTFmZWVkYzU5NWQ2NWNkNmEyMTU1NTUyYzk2OWY0ZjZkMTRhOTllMDFlIgogICAgfQogIH0KfQ==;BTHGvHeUx0dbgZ9bqiNarpZ4qZDqVcL/ycIsgWT9/wZ80SgSy49QegcZdb23SXhtp5gGzuGI1Uh3gEGcErVMRSovDnNwX4cA/EVWOt9JGNcF5IxsmKCkI3K1MIajPvcCp1DCOT7Qdl2GtkCe5EZoKTacFRFU6KxgNCHWbGvjwe29iJqLFS33658t/KX0ZKZUUfDufl+quMCoHyb6KeShNoiBYP0rmZI7CrRaps0f3cVrZHHyvbSv6MxJCymtShafg5qloljSStKXxgsYpq7CpU2i9fwj6wpzMpOIZ4sj0CUOxT50H4zCk1tPng+x/O9IrQ0SorV87Jioim38DYzUIz1ncm/hkFakEGa2CbJ7Q0EBaU51dV09ZoRk0DczBhlqTmYvaD9Clr/yVOUPrIJB8JjPimO8EdKMSNFK8kCULgCOmHh7RfzH8TShAqf+F82IldqoldvTY5ZG0nk1wFZ7znXujlMDrHT0ZaTb7WEFDV61gykR4miz1y+2/w0PgC5CHg1ovR9Fuctb/7Ae0SNlsPzMdnpfulWd/k5iwuBynF1O/4xwDacTpMnmDy/GEhgH3ZsBKlY4X4RXVb6+pFXRfKFdmObBYjwgxG2Zc4uF753L29a1P1tate6++oHWbaqwHOIWjCyJAyanSh4b6oLRukK5OKbPNSk6unIaNVwkQHg=
            - adjust <entry[Exilado2].created_npc> skin_blob:ewogICJ0aW1lc3RhbXAiIDogMTY3MTMwOTMyNTE1OSwKICAicHJvZmlsZUlkIiA6ICI2NmE2ZWZiNzEwNDc0NjdiYmMzYmVhMGRjYWZlNTU4MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJZdWtpb0RhbmRyZSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xNWRhMDMwYzUzMmNiYmQzMmY1ZjkzYTFmZWVkYzU5NWQ2NWNkNmEyMTU1NTUyYzk2OWY0ZjZkMTRhOTllMDFlIgogICAgfQogIH0KfQ==;BTHGvHeUx0dbgZ9bqiNarpZ4qZDqVcL/ycIsgWT9/wZ80SgSy49QegcZdb23SXhtp5gGzuGI1Uh3gEGcErVMRSovDnNwX4cA/EVWOt9JGNcF5IxsmKCkI3K1MIajPvcCp1DCOT7Qdl2GtkCe5EZoKTacFRFU6KxgNCHWbGvjwe29iJqLFS33658t/KX0ZKZUUfDufl+quMCoHyb6KeShNoiBYP0rmZI7CrRaps0f3cVrZHHyvbSv6MxJCymtShafg5qloljSStKXxgsYpq7CpU2i9fwj6wpzMpOIZ4sj0CUOxT50H4zCk1tPng+x/O9IrQ0SorV87Jioim38DYzUIz1ncm/hkFakEGa2CbJ7Q0EBaU51dV09ZoRk0DczBhlqTmYvaD9Clr/yVOUPrIJB8JjPimO8EdKMSNFK8kCULgCOmHh7RfzH8TShAqf+F82IldqoldvTY5ZG0nk1wFZ7znXujlMDrHT0ZaTb7WEFDV61gykR4miz1y+2/w0PgC5CHg1ovR9Fuctb/7Ae0SNlsPzMdnpfulWd/k5iwuBynF1O/4xwDacTpMnmDy/GEhgH3ZsBKlY4X4RXVb6+pFXRfKFdmObBYjwgxG2Zc4uF753L29a1P1tate6++oHWbaqwHOIWjCyJAyanSh4b6oLRukK5OKbPNSk6unIaNVwkQHg=
            - adjust <entry[Exilado3].created_npc> skin_blob:ewogICJ0aW1lc3RhbXAiIDogMTY3MTMwOTMyNTE1OSwKICAicHJvZmlsZUlkIiA6ICI2NmE2ZWZiNzEwNDc0NjdiYmMzYmVhMGRjYWZlNTU4MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJZdWtpb0RhbmRyZSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xNWRhMDMwYzUzMmNiYmQzMmY1ZjkzYTFmZWVkYzU5NWQ2NWNkNmEyMTU1NTUyYzk2OWY0ZjZkMTRhOTllMDFlIgogICAgfQogIH0KfQ==;BTHGvHeUx0dbgZ9bqiNarpZ4qZDqVcL/ycIsgWT9/wZ80SgSy49QegcZdb23SXhtp5gGzuGI1Uh3gEGcErVMRSovDnNwX4cA/EVWOt9JGNcF5IxsmKCkI3K1MIajPvcCp1DCOT7Qdl2GtkCe5EZoKTacFRFU6KxgNCHWbGvjwe29iJqLFS33658t/KX0ZKZUUfDufl+quMCoHyb6KeShNoiBYP0rmZI7CrRaps0f3cVrZHHyvbSv6MxJCymtShafg5qloljSStKXxgsYpq7CpU2i9fwj6wpzMpOIZ4sj0CUOxT50H4zCk1tPng+x/O9IrQ0SorV87Jioim38DYzUIz1ncm/hkFakEGa2CbJ7Q0EBaU51dV09ZoRk0DczBhlqTmYvaD9Clr/yVOUPrIJB8JjPimO8EdKMSNFK8kCULgCOmHh7RfzH8TShAqf+F82IldqoldvTY5ZG0nk1wFZ7znXujlMDrHT0ZaTb7WEFDV61gykR4miz1y+2/w0PgC5CHg1ovR9Fuctb/7Ae0SNlsPzMdnpfulWd/k5iwuBynF1O/4xwDacTpMnmDy/GEhgH3ZsBKlY4X4RXVb6+pFXRfKFdmObBYjwgxG2Zc4uF753L29a1P1tate6++oHWbaqwHOIWjCyJAyanSh4b6oLRukK5OKbPNSk6unIaNVwkQHg=
            - adjust <entry[Exilado4].created_npc> skin_blob:ewogICJ0aW1lc3RhbXAiIDogMTY3MTMwOTMyNTE1OSwKICAicHJvZmlsZUlkIiA6ICI2NmE2ZWZiNzEwNDc0NjdiYmMzYmVhMGRjYWZlNTU4MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJZdWtpb0RhbmRyZSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xNWRhMDMwYzUzMmNiYmQzMmY1ZjkzYTFmZWVkYzU5NWQ2NWNkNmEyMTU1NTUyYzk2OWY0ZjZkMTRhOTllMDFlIgogICAgfQogIH0KfQ==;BTHGvHeUx0dbgZ9bqiNarpZ4qZDqVcL/ycIsgWT9/wZ80SgSy49QegcZdb23SXhtp5gGzuGI1Uh3gEGcErVMRSovDnNwX4cA/EVWOt9JGNcF5IxsmKCkI3K1MIajPvcCp1DCOT7Qdl2GtkCe5EZoKTacFRFU6KxgNCHWbGvjwe29iJqLFS33658t/KX0ZKZUUfDufl+quMCoHyb6KeShNoiBYP0rmZI7CrRaps0f3cVrZHHyvbSv6MxJCymtShafg5qloljSStKXxgsYpq7CpU2i9fwj6wpzMpOIZ4sj0CUOxT50H4zCk1tPng+x/O9IrQ0SorV87Jioim38DYzUIz1ncm/hkFakEGa2CbJ7Q0EBaU51dV09ZoRk0DczBhlqTmYvaD9Clr/yVOUPrIJB8JjPimO8EdKMSNFK8kCULgCOmHh7RfzH8TShAqf+F82IldqoldvTY5ZG0nk1wFZ7znXujlMDrHT0ZaTb7WEFDV61gykR4miz1y+2/w0PgC5CHg1ovR9Fuctb/7Ae0SNlsPzMdnpfulWd/k5iwuBynF1O/4xwDacTpMnmDy/GEhgH3ZsBKlY4X4RXVb6+pFXRfKFdmObBYjwgxG2Zc4uF753L29a1P1tate6++oHWbaqwHOIWjCyJAyanSh4b6oLRukK5OKbPNSk6unIaNVwkQHg=

            - spawn falling_block[gravity=false;fallingblock_type=soul_lantern;custom_name=Londama<[world]>;auto_expire=false] <location[-38.5,144.00,113.5,<[world]>]> save:Londamatrigger
            - define Londamatrigger <entry[Londamatrigger].spawned_entity>
            - define Londama <entry[Londama].created_npc>

            - flag server Londama<[world]>:<[Londama]>
            - flag server Londamatrigger<[world]>:<[Londamatrigger]>
            - flag server londamadisp<[world]>

            - execute as_server "pp fixed clear 1 -38.5 144 112 <[world]>"

        after npc spawns:
            - wait 1t
            - if <npc.name.contains[exiladosit]>:
                - sit
                - adjust <npc> name:Exilado

