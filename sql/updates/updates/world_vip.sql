-- VIP
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip debuff',0,'Syntax: .vip debuff - removes Resurrection Sickness and Deserter debuffs from owner');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip map', 0, 'Syntax: .vip map - reveals all maps to owner');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip bank', 0, 'Syntax: .vip bank - Show your bank inventory.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip repair', 0, 'Syntax: .vip repair - repair all your items.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip resettalents', 0, 'Syntax: .vip resettalents - reset talents to your character.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip whispers', 0, 'Syntax: .vip whispers - Enable/disable accepting whispers by VIP accounts from players.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip taxi', 0, 'Syntax: .vip taxi - reveals all taxipaths to owner');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip home', 0, 'Syntax: .vip home - teleport owner to home(ignoring CD on Hearthstone)');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip capital', 0, 'Syntax: .vip capital - teleport owner to capital(Orgrimmar/Stormwind) depending on faction of player');

REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip capital', 0, 'Syntax: .vip capital - teleport owner to capital(Orgrimmar/Stormwind) depending on faction of player');
REPLACE INTO `trinity_string` VALUES (11778, 'You can\t use command while being dead/stealthed or being in arena/bg or being in combat.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы не можете использовать комманду находясь на арене/БГ, в бою/невидимости или будучи мертвым.');

REPLACE INTO `trinity_string` VALUES (11779, 'You can\'t use command while being dead/stealthed or being in arena/bg or being in combat.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы не можете использовать комманду находясь на арене/БГ/подземелье, в бою/невидимости или будучи мертвым.');

