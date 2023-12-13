# util_npc

*util_npc* is a data pack designed to make it easier to implement NPC's and the systems needed for their operation. This includes dialogue, attacking, events, quests, trading, etc.

# NPC Setup

To spawn an NPC you must fill out the information below and store it into the following storage location:<br>
`data modify storage util_npc:setup npc.<path>`

After this is done you can run the following function to spawn the NPC:<br>
`function util_npc:npc/creation/spawn`


## Core Data

The nbt below is used to setup important elements that identify the NPC:<br>
Storage: `util_npc:setup npc.<path>`

|Note|Path   &nbsp;&nbsp;        |Value                                  |Description|
|-  |-           |-              |-|
R   |`id`        |`<string>`     |Unique identifier for saving and loading.
R   |`tag`       |`<string>`     |Unique tag for selector checks.
R   |`name`      |`<json>`       |Name displayed in dialogue.


## Config Data

The nbt below contains additional config settings:<br>
Storage: `util_npc:setup npc.config.<path>`

|Note|Path   &nbsp;&nbsp;        |Value                                  |Description|
|-  |-                            |-              |-|
O   |`look_at_player`             |`<bool>`       |The NPC will look at the nearest player occasionally.
O   |`attack_angry_particles`     |`<bool>`       |The NPC will display angry villager particles when attacked.
O   |`auto_death_respawn`         |`<bool>`       |The NPC will automatically respawn shortly after dying.


## Entity Data

The nbt below is used to spawn the physical entities that represent the NPC:<br>
Storage: `util_npc:setup npc.<path>`

|Note|Path   &nbsp;&nbsp;        |Value                                  |Description|
|-  |-              |-              |-|
R   |`entity.type`         |`<string>`              |The id of the minecraft entity. <br>(`util_npc:none` for no entity)
R   |`entity.data`         |`<json>`                |The data to store on the entity.
R   |`interaction.data`    |`<json>`                |The data to store on the interaction entity.
O   |`interaction.trading` |`<json>`                |[requires: &nbsp;`type: "minecraft:villager"`]<br>Alternative data used if the villager has active trades.


## Conversation Data

The nbt below should be grouped together (forming a conversation) and appeneded to the following storage location:<br>
Storage: `util_npc:setup npc.conversations[]`

### General

|Note|Path   &nbsp;&nbsp;        |Value                                  |Description|
|-  |-                           |-                                      |-|
R   |`type`                      |`group`, `chat`, `attack`, `event`     |The type of dialogue that is contained.
XXX |`event`                     |`<string>`                             |[requires: &nbsp;`type: "event"`]<br>The event that must be activated.
R   |`id`                        |`<string>`                             |Unique identifier used for saving and loading.
R   |`save`                      |`player`, `npc`                        |Should the progress be tied to the player or npc.
R   |`mode`                      |`linear`, `looping`, `random`          |Determines how the conversation should be selected.
~R  |`order`                     |`queue`, `random`                      |[requires: &nbsp;`mode: "linear"`]<br>Determines whether the conversation should be queued or selected at random.<br>(`queue` is processed first)
~~R |`priority`                  |`low`, `medium`, `high`                |[requires: &nbsp;`order: "queue"`]<br>Determines the order of queued dialogue
O   |`counter`                   |`<bool>`                               |Will display a counter next to dialogue, indicating progress in the conversation. (changes visuals depending on `mode`)
O   |`broadcast`                 |`<bool>`                               |Will display dialogue to other nearby players, but grayed out.
O   |`header.top`                |`<json>`                               |Header text display above the first line in conversation.
O   |`header.bottom`             |`<json>`                               |Header text display below the last line in conversation.
O   |`continuation.source`       |`loaded`, `valid`, `reserve`, `all`    |**Continuation:** Will continue conversation until it is finished.<br>The location where a conversation will be searched for.
~O  |`continuation.forward`      |`<string>`                             |A conversation id that will be continued immediately after current conversation is finished.
~O  |`continuation.expiration`   |`<int>`                                |The number of ticks after which the conversation will expire and exit.
~O  |`continuation.forget`       |`<bool>`                               |Will reset the progress of the conversation when expired.
~O  |`continuation.looping`      |`<bool>`                               |[requires: &nbsp;`mode: "looping"`]<br>Will loop conversation when expired.
R   |`dialogue`                  |{`<dialogue>`}                         |Refer to "Dialogue" section.
O   |`conditions`                |{`<conditions>`}                       |Refer to "Conditions" section.

### Dialogue

|Note|Path   &nbsp;&nbsp;        |Value                                 |Description|
|-  |-                           |-                                      |-|
O   |`loot`                      |`<string>`                             |The loot table that is granted.
O   |`delay`                     |`<int>`                                |The number of tick until the player can interact with NPC.
R   |`lines`                     |[{`<line>`}]                             |Refer to "Dialogue (Line)" section.
O   |`conditions`                |{`<conditions>`}                       |Refer to "Conditions" section.
O   |`trades`                    |[{`<trades>`}]                           |Refer to "Trades" section.

### Dialogue (Line)

|Note|Path   &nbsp;&nbsp;        |Value                          |Description|
|-  |-                           |-                              |-|
R   |`message`                   |`<json>`                       |The message that is displayed.
O   |`counter`                   |`<bool>`                       |Will enable the counter for this line.
O   |`name`                      |`<json/false>`                 |Will either override the name displayed or remove it.
O   |`loot`                      |`<string>`                     |The loot table that is granted.
O   |`audio.type`                |`<string>`                     |The sound that is played.
~R  |`audio.volume`              |`<float>`                      |The volume of the audio.
~R  |`audio.pitch`               |`<float> (0.0 to 2.0)`         |The pitch of the audio.
~O  |`audio.selector`            |`<string>`                     |The entity that the sound is played at.
~O  |`audio.location`            |`<string>`                     |The location that the sound is played at.
O   |`conditions`                |{`<conditions>`}               |Refer to "Conditions" section.
O   |`trades`                    |[{`<trades>`}]                 |Refer to "Trades" section.

### Conditions

|Note|Path   &nbsp;&nbsp;        |Value                    |Description|
|-  |-                           |-                        |-|
O   |`time.range.min`            |`<int>`                  |The miniumum time.
~R  |`time.range.max`            |`<max>`                  |The maximum time.
~O  |`time.range.inverse`        |`<bool>`                 |Inverts the output.
O   |`time.day`                  |`<bool>`                 |Active from 1 to 12000.
O   |`time.night`                |`<bool>`                 |Active from 10001 to 24000.
O   |`time.morning`              |`<bool>`                 |Active from 1 to 6000.
O   |`time.midday`               |`<bool>`                 |Active from 6001 to 12000.
O   |`time.noon`                 |`<bool>`                 |Active from 12001 to 18000.
O   |`time.midnight`             |`<bool>`                 |Active from 18001 to 24000.
O   |`weather.raining`           |`<bool>`                 |Active when raining.
O   |`weather.thundering`        |`<bool>`                 |Active when thundering.
O   |`week.length`               |`<int>`                  |The length of a week.
~R  |`week.offset`               |`<int>`                  |An offset for the start of the week.
~R  |`week.day`                  |`<int>`                  |The day of the week.
~O  |`week.inverse`              |`<bool>`                 |Inverts the output.
O   |`biome.name`                |`<string>`               |ID of the biome.
~O  |`biome.inverse`             |`<bool>`                 |Inverts the output.
O   |`dimension.name`            |`<string>`               |ID of the dimension.
~O  |`dimension.inverse`         |`<bool>`                 |Inverts the dimension.
O   |`entity.selector`           |`<string>`               |An entity selector.
O   |`score.check`               |`<string>`               |Scoreboard check. <br>(`<name>` `<scoreboard>` `<op>` `<name>` `<scoreboard>`)
XXX |`if.command`                |`<string>`               |A complete if check.
XXX |`memory.npc`                |`<string>`               |Id of the NPC to check.
XXX |`memory.player`             |`<bool>`                 |Will check the current players data.
XXX |`memory.type`               |`memory`, `conversation` |The type of memory.
XXX |`memory.conversation`       |`<string>`               |[requires: &nbsp;`type: "conversation"`]<br>The id of the conversation.
XXX |`memory.exact`              |`<string>`               |Exact value in storage to check for.<br>(ex: `hat_unlocked{arrow:true}`)
XXX |`memory.min`                |`<int>`                  |Min score value to check for.
XXX |`memory.max`                |`<int>`                  |Max score value to check for.


### Trades

|Note|Path   &nbsp;&nbsp;        |Value                                 |Description|
|-  |-                           |-                                      |-|
XXX |`id`                        |`<string>`                             |The id of the trade.
XXX |`mode`                      |`add`, `remove`, `reset`               |What should happen with the trade.
