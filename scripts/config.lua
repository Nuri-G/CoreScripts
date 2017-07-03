config = {}

-- The type of database or data format used by the server
-- Valid values: json, sqlite3
-- Note: The latter is only partially implemented as of now
config.databaseType = "json"

-- The location of the database file
-- Note: Not applicable when using json
config.databasePath = os.getenv("MOD_DIR") .. "/database.db" -- Path where database is stored

-- The order in which table keys should be saved to JSON files
config.playerKeyOrder = {"login", "settings", "character", "customClass", "location", "stats", "attributes", "attributeSkillIncreases", "skills", "skillProgress", "equipment", "inventory", "spellbook", "books", "mapExplored", "admin", "consoleAllowed", "difficulty", "gender", "race", "head", "hair", "class", "birthsign", "cell", "posX", "posY", "posZ", "rotX", "rotZ", "healthBase", "healthCurrent", "magickaBase", "magickaCurrent", "fatigueBase", "fatigueCurrent"}
config.worldKeyOrder = {"general", "topics", "kills", "journal", "type", "index", "quest", "actorRefId"}

-- Time to login, in seconds
config.loginTime = 60

-- Whether players should be allowed to use the ingame tilde (~) console by default
config.allowConsole = false

-- The difficulty level used by default
-- Note: In OpenMW, the difficulty slider goes between -100 and 100, with 0 as the default,
--       though you can use any integer value here
config.difficulty = 0

-- Time to stay dead before being respawned, in seconds
config.deathTime = 5

-- The cell that newly created players are teleported to
config.defaultSpawnCell = "-3, -2"

-- The X, Y and Z position that newly created players are teleported to
config.defaultSpawnPos = {-23980.693359375, -15561.556640625, 505}

-- The X and Z rotation that newly created players are assigned
config.defaultSpawnRot = {-0.000152587890625, 1.6182196140289}

-- The cell that players respawn in, unless overridden below by other respawn options
config.defaultRespawnCell = "Balmora, Temple"

-- The X, Y and Z position that players respawn in
config.defaultRespawnPos = {4700.5673828125, 3874.7416992188, 14758.990234375}

-- The X and Z rotation that respawned players are assigned
config.defaultRespawnRot = {0.25314688682556, 1.570611000061}

-- Whether the default respawn location should be ignored in favor of respawning the
-- player at the nearest Imperial shrine
config.respawnAtImperialShrine = true

-- Whether the default respawn location should be ignored in favor of respawning the
-- player at the nearest Tribunal temple
-- Note: When both this and the Imperial shrine option are enabled, there is a 50%
--       chance of the player being respawned at either
config.respawnAtTribunalTemple = true

-- Whether time should be synchronized across clients
-- Valid values: 0, 1
-- Note: 0 for no time sync, 1 for time sync based on the server's time counter
config.timeSyncMode = 1 -- 0 - No time sync, 1 - Time sync based on server time counter

-- The time multiplier used by the server
-- Note: The default value of 1 is roughly 120 seconds per ingame hour
config.timeServerMult = 1

-- The initial ingame hour on the server
config.timeServerInitTime = 7

return config
