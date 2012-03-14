/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-03-14 01:58:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL default '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `data` blob NOT NULL,
  PRIMARY KEY  (`accountId`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_data
-- ----------------------------
INSERT INTO `account_data` VALUES ('5', '0', '0', 0x53455420666C61676765645475746F7269616C732022760123233A23234D23232523232623232423232823235A23235B23232A23233123233923234923234423232923233023235C23234A23235623232B23234B23233B23235923234123234223234323232C232357232333232337232353220A5345542063616D65726144697374616E63654D6178466163746F72202231220A5345542074616C656E744672616D6553686F776E202231220A);
-- ----------------------------
-- Table structure for `account_instance_times`
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL default '0',
  `releaseTime` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`accountId`,`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_instance_times
-- ----------------------------

-- ----------------------------
-- Table structure for `account_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL default '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL default '0',
  `tut1` int(10) unsigned NOT NULL default '0',
  `tut2` int(10) unsigned NOT NULL default '0',
  `tut3` int(10) unsigned NOT NULL default '0',
  `tut4` int(10) unsigned NOT NULL default '0',
  `tut5` int(10) unsigned NOT NULL default '0',
  `tut6` int(10) unsigned NOT NULL default '0',
  `tut7` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_tutorial
-- ----------------------------

-- ----------------------------
-- Table structure for `addons`
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL default '',
  `crc` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Addons';

-- ----------------------------
-- Records of addons
-- ----------------------------
INSERT INTO `addons` VALUES ('Blizzard_AchievementUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArenaUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_AuctionUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BarbershopUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BattlefieldMinimap', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BindingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_Calendar', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatLog', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatText', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_DebugTools', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMChatUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMSurveyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GlyphUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildBankUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_InspectUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemSocketingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MacroUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_RaidUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TalentUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TimeManager', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TokenUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TradeSkillUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TrainerUI', '1276933997');

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `rating` smallint(5) unsigned NOT NULL default '0',
  `seasonGames` smallint(5) unsigned NOT NULL default '0',
  `seasonWins` smallint(5) unsigned NOT NULL default '0',
  `weekGames` smallint(5) unsigned NOT NULL default '0',
  `weekWins` smallint(5) unsigned NOT NULL default '0',
  `rank` int(10) unsigned NOT NULL default '0',
  `backgroundColor` int(10) unsigned NOT NULL default '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL default '0',
  `emblemColor` int(10) unsigned NOT NULL default '0',
  `borderStyle` tinyint(3) unsigned NOT NULL default '0',
  `borderColor` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`arenaTeamId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team
-- ----------------------------

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL default '0',
  `guid` int(10) unsigned NOT NULL default '0',
  `weekGames` smallint(5) unsigned NOT NULL default '0',
  `weekWins` smallint(5) unsigned NOT NULL default '0',
  `seasonGames` smallint(5) unsigned NOT NULL default '0',
  `seasonWins` smallint(5) unsigned NOT NULL default '0',
  `personalRating` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`arenaTeamId`,`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for `armory_character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `armory_character_stats`;
CREATE TABLE `armory_character_stats` (
  `guid` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `save_date` int(11) default NULL,
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='World of Warcraft Armory table';

-- ----------------------------
-- Records of armory_character_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `armory_game_chart`
-- ----------------------------
DROP TABLE IF EXISTS `armory_game_chart`;
CREATE TABLE `armory_game_chart` (
  `gameid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `guid` int(11) NOT NULL,
  `changeType` int(11) NOT NULL,
  `ratingChange` int(11) NOT NULL,
  `teamRating` int(11) NOT NULL,
  `damageDone` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `healingDone` int(11) NOT NULL,
  `damageTaken` int(11) NOT NULL,
  `healingTaken` int(11) NOT NULL,
  `killingBlows` int(11) NOT NULL,
  `mapId` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  PRIMARY KEY  (`gameid`,`teamid`,`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='WoWArmory Game Chart';

-- ----------------------------
-- Records of armory_game_chart
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL default '0',
  `auctioneerguid` int(10) unsigned NOT NULL default '0',
  `itemguid` int(10) unsigned NOT NULL default '0',
  `itemowner` int(10) unsigned NOT NULL default '0',
  `buyoutprice` int(10) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `buyguid` int(10) unsigned NOT NULL default '0',
  `lastbid` int(10) unsigned NOT NULL default '0',
  `startbid` int(10) unsigned NOT NULL default '0',
  `deposit` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhousebot`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhousebot`;
CREATE TABLE `auctionhousebot` (
  `auctionhouse` int(11) NOT NULL default '0' COMMENT 'mapID of the auctionhouse.',
  `name` char(25) default NULL COMMENT 'Text name of the auctionhouse.',
  `minitems` int(11) default '0' COMMENT 'This is the minimum number of items you want to keep in the auction house. a 0 here will make it the same as the maximum.',
  `maxitems` int(11) default '0' COMMENT 'This is the number of items you want to keep in the auction house.',
  `percentgreytradegoods` int(11) default '0' COMMENT 'Sets the percentage of the Grey Trade Goods auction items',
  `percentwhitetradegoods` int(11) default '27' COMMENT 'Sets the percentage of the White Trade Goods auction items',
  `percentgreentradegoods` int(11) default '12' COMMENT 'Sets the percentage of the Green Trade Goods auction items',
  `percentbluetradegoods` int(11) default '10' COMMENT 'Sets the percentage of the Blue Trade Goods auction items',
  `percentpurpletradegoods` int(11) default '1' COMMENT 'Sets the percentage of the Purple Trade Goods auction items',
  `percentorangetradegoods` int(11) default '0' COMMENT 'Sets the percentage of the Orange Trade Goods auction items',
  `percentyellowtradegoods` int(11) default '0' COMMENT 'Sets the percentage of the Yellow Trade Goods auction items',
  `percentgreyitems` int(11) default '0' COMMENT 'Sets the percentage of the non trade Grey auction items',
  `percentwhiteitems` int(11) default '10' COMMENT 'Sets the percentage of the non trade White auction items',
  `percentgreenitems` int(11) default '30' COMMENT 'Sets the percentage of the non trade Green auction items',
  `percentblueitems` int(11) default '8' COMMENT 'Sets the percentage of the non trade Blue auction items',
  `percentpurpleitems` int(11) default '2' COMMENT 'Sets the percentage of the non trade Purple auction items',
  `percentorangeitems` int(11) default '0' COMMENT 'Sets the percentage of the non trade Orange auction items',
  `percentyellowitems` int(11) default '0' COMMENT 'Sets the percentage of the non trade Yellow auction items',
  `minpricegrey` int(11) default '100' COMMENT 'Minimum price of Grey items (percentage).',
  `maxpricegrey` int(11) default '150' COMMENT 'Maximum price of Grey items (percentage).',
  `minpricewhite` int(11) default '150' COMMENT 'Minimum price of White items (percentage).',
  `maxpricewhite` int(11) default '250' COMMENT 'Maximum price of White items (percentage).',
  `minpricegreen` int(11) default '800' COMMENT 'Minimum price of Green items (percentage).',
  `maxpricegreen` int(11) default '1400' COMMENT 'Maximum price of Green items (percentage).',
  `minpriceblue` int(11) default '1250' COMMENT 'Minimum price of Blue items (percentage).',
  `maxpriceblue` int(11) default '1750' COMMENT 'Maximum price of Blue items (percentage).',
  `minpricepurple` int(11) default '2250' COMMENT 'Minimum price of Purple items (percentage).',
  `maxpricepurple` int(11) default '4550' COMMENT 'Maximum price of Purple items (percentage).',
  `minpriceorange` int(11) default '3250' COMMENT 'Minimum price of Orange items (percentage).',
  `maxpriceorange` int(11) default '5550' COMMENT 'Maximum price of Orange items (percentage).',
  `minpriceyellow` int(11) default '5250' COMMENT 'Minimum price of Yellow items (percentage).',
  `maxpriceyellow` int(11) default '6550' COMMENT 'Maximum price of Yellow items (percentage).',
  `minbidpricegrey` int(11) default '70' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricegrey` int(11) default '100' COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricewhite` int(11) default '70' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 70',
  `maxbidpricewhite` int(11) default '100' COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricegreen` int(11) default '80' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricegreen` int(11) default '100' COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceblue` int(11) default '75' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 75',
  `maxbidpriceblue` int(11) default '100' COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpricepurple` int(11) default '80' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpricepurple` int(11) default '100' COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceorange` int(11) default '80' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceorange` int(11) default '100' COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 100',
  `minbidpriceyellow` int(11) default '80' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 80',
  `maxbidpriceyellow` int(11) default '100' COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 100',
  `maxstackgrey` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackwhite` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackgreen` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackblue` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackpurple` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackorange` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `maxstackyellow` int(11) default '0' COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.',
  `buyerpricegrey` int(11) default '1' COMMENT 'Multiplier to vendorprice when buying grey items from auctionhouse',
  `buyerpricewhite` int(11) default '3' COMMENT 'Multiplier to vendorprice when buying white items from auctionhouse',
  `buyerpricegreen` int(11) default '5' COMMENT 'Multiplier to vendorprice when buying green items from auctionhouse',
  `buyerpriceblue` int(11) default '12' COMMENT 'Multiplier to vendorprice when buying blue items from auctionhouse',
  `buyerpricepurple` int(11) default '15' COMMENT 'Multiplier to vendorprice when buying purple items from auctionhouse',
  `buyerpriceorange` int(11) default '20' COMMENT 'Multiplier to vendorprice when buying orange items from auctionhouse',
  `buyerpriceyellow` int(11) default '22' COMMENT 'Multiplier to vendorprice when buying yellow items from auctionhouse',
  `buyerbiddinginterval` int(11) default '1' COMMENT 'Interval how frequently AHB bids on each AH. Time in minutes',
  `buyerbidsperinterval` int(11) default '1' COMMENT 'number of bids to put in per bidding interval',
  PRIMARY KEY  (`auctionhouse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhousebot
-- ----------------------------
INSERT INTO `auctionhousebot` VALUES ('2', 'Alliance', '250', '250', '0', '27', '12', '10', '1', '0', '0', '0', '10', '30', '8', '2', '0', '0', '100', '150', '150', '250', '800', '1400', '1250', '1750', '2250', '4550', '3250', '5550', '5250', '6550', '70', '100', '70', '100', '80', '100', '75', '100', '80', '100', '80', '100', '80', '100', '0', '0', '3', '2', '1', '1', '1', '1', '3', '5', '12', '15', '20', '22', '1', '1');
INSERT INTO `auctionhousebot` VALUES ('6', 'Horde', '250', '250', '0', '27', '12', '10', '1', '0', '0', '0', '10', '30', '8', '2', '0', '0', '100', '150', '150', '250', '800', '1400', '1250', '1750', '2250', '4550', '3250', '5550', '5250', '6550', '70', '100', '70', '100', '80', '100', '75', '100', '80', '100', '80', '100', '80', '100', '0', '0', '3', '2', '1', '1', '1', '1', '3', '5', '12', '15', '20', '22', '1', '1');
INSERT INTO `auctionhousebot` VALUES ('7', 'Neutral', '250', '250', '0', '27', '12', '10', '1', '0', '0', '0', '10', '30', '8', '2', '0', '0', '100', '150', '150', '250', '800', '1400', '1250', '1750', '2250', '4550', '3250', '5550', '5250', '6550', '70', '100', '70', '100', '80', '100', '75', '100', '80', '100', '80', '100', '80', '100', '0', '0', '3', '2', '1', '1', '1', '1', '3', '5', '12', '15', '20', '22', '1', '1');

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- ----------------------------
-- Records of bugreport
-- ----------------------------

-- ----------------------------
-- Table structure for `channels`
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL default '1',
  `ownership` tinyint(3) unsigned NOT NULL default '1',
  `password` varchar(32) default NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`name`,`team`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- ----------------------------
-- Records of channels
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL default '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL default '',
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `gender` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `xp` int(10) unsigned NOT NULL default '0',
  `money` int(10) unsigned NOT NULL default '0',
  `playerBytes` int(10) unsigned NOT NULL default '0',
  `playerBytes2` int(10) unsigned NOT NULL default '0',
  `playerFlags` int(10) unsigned NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `map` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL default '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL default '0',
  `cinematic` tinyint(3) unsigned NOT NULL default '0',
  `totaltime` int(10) unsigned NOT NULL default '0',
  `leveltime` int(10) unsigned NOT NULL default '0',
  `logout_time` int(10) unsigned NOT NULL default '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL default '0',
  `rest_bonus` float NOT NULL default '0',
  `resettalents_cost` int(10) unsigned NOT NULL default '0',
  `resettalents_time` int(10) unsigned NOT NULL default '0',
  `trans_x` float NOT NULL default '0',
  `trans_y` float NOT NULL default '0',
  `trans_z` float NOT NULL default '0',
  `trans_o` float NOT NULL default '0',
  `transguid` mediumint(8) unsigned NOT NULL default '0',
  `extra_flags` smallint(5) unsigned NOT NULL default '0',
  `stable_slots` tinyint(3) unsigned NOT NULL default '0',
  `at_login` smallint(5) unsigned NOT NULL default '0',
  `zone` smallint(5) unsigned NOT NULL default '0',
  `death_expire_time` int(10) unsigned NOT NULL default '0',
  `taxi_path` text,
  `arenaPoints` int(10) unsigned NOT NULL default '0',
  `totalHonorPoints` int(10) unsigned NOT NULL default '0',
  `todayHonorPoints` int(10) unsigned NOT NULL default '0',
  `yesterdayHonorPoints` int(10) unsigned NOT NULL default '0',
  `totalKills` int(10) unsigned NOT NULL default '0',
  `todayKills` smallint(5) unsigned NOT NULL default '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL default '0',
  `chosenTitle` int(10) unsigned NOT NULL default '0',
  `knownCurrencies` bigint(20) unsigned NOT NULL default '0',
  `watchedFaction` int(10) unsigned NOT NULL default '0',
  `drunk` smallint(5) unsigned NOT NULL default '0',
  `health` int(10) unsigned NOT NULL default '0',
  `power1` int(10) unsigned NOT NULL default '0',
  `power2` int(10) unsigned NOT NULL default '0',
  `power3` int(10) unsigned NOT NULL default '0',
  `power4` int(10) unsigned NOT NULL default '0',
  `power5` int(10) unsigned NOT NULL default '0',
  `power6` int(10) unsigned NOT NULL default '0',
  `power7` int(10) unsigned NOT NULL default '0',
  `latency` mediumint(8) unsigned NOT NULL default '0',
  `speccount` tinyint(3) unsigned NOT NULL default '1',
  `activespec` tinyint(3) unsigned NOT NULL default '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `ammoId` int(10) unsigned NOT NULL default '0',
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL default '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL default '0',
  `deleteInfos_Account` int(10) unsigned default NULL,
  `deleteInfos_Name` varchar(12) default NULL,
  `deleteDate` int(10) unsigned default NULL,
  PRIMARY KEY  (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of characters
-- ----------------------------

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(10) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `data` blob NOT NULL,
  PRIMARY KEY  (`guid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_account_data
-- ----------------------------

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`achievement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(10) unsigned NOT NULL default '0',
  `spec` tinyint(3) unsigned NOT NULL default '0',
  `button` tinyint(3) unsigned NOT NULL default '0',
  `action` int(10) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spec`,`button`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_action
-- ----------------------------

-- ----------------------------
-- Table structure for `character_arena_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY  (`guid`,`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_arena_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL default '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL default '0',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `effect_mask` tinyint(3) unsigned NOT NULL default '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL default '0',
  `stackcount` tinyint(3) unsigned NOT NULL default '1',
  `amount0` int(11) NOT NULL default '0',
  `amount1` int(11) NOT NULL default '0',
  `amount2` int(11) NOT NULL default '0',
  `base_amount0` int(11) NOT NULL default '0',
  `base_amount1` int(11) NOT NULL default '0',
  `base_amount2` int(11) NOT NULL default '0',
  `maxduration` int(11) NOT NULL default '0',
  `remaintime` int(11) NOT NULL default '0',
  `remaincharges` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `character_banned`
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL default '0',
  `unbandate` int(10) unsigned NOT NULL default '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`guid`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of character_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL default '0',
  `joinY` float NOT NULL default '0',
  `joinZ` float NOT NULL default '0',
  `joinO` float NOT NULL default '0',
  `joinMapId` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL default '0',
  `taxiEnd` int(10) unsigned NOT NULL default '0',
  `mountSpell` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------

-- ----------------------------
-- Table structure for `character_battleground_random`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_battleground_random
-- ----------------------------

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL default '',
  `dative` varchar(15) NOT NULL default '',
  `accusative` varchar(15) NOT NULL default '',
  `instrumental` varchar(15) NOT NULL default '',
  `prepositional` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
  `guid` int(10) NOT NULL default '0',
  `setguid` bigint(20) NOT NULL auto_increment,
  `setindex` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `item3` int(10) unsigned NOT NULL default '0',
  `item4` int(10) unsigned NOT NULL default '0',
  `item5` int(10) unsigned NOT NULL default '0',
  `item6` int(10) unsigned NOT NULL default '0',
  `item7` int(10) unsigned NOT NULL default '0',
  `item8` int(10) unsigned NOT NULL default '0',
  `item9` int(10) unsigned NOT NULL default '0',
  `item10` int(10) unsigned NOT NULL default '0',
  `item11` int(10) unsigned NOT NULL default '0',
  `item12` int(10) unsigned NOT NULL default '0',
  `item13` int(10) unsigned NOT NULL default '0',
  `item14` int(10) unsigned NOT NULL default '0',
  `item15` int(10) unsigned NOT NULL default '0',
  `item16` int(10) unsigned NOT NULL default '0',
  `item17` int(10) unsigned NOT NULL default '0',
  `item18` int(10) unsigned NOT NULL default '0',

  PRIMARY KEY  (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_equipmentsets
-- ----------------------------

-- ----------------------------
-- Table structure for `character_feed_log`
-- ----------------------------
DROP TABLE IF EXISTS `character_feed_log`;
CREATE TABLE `character_feed_log` (
  `guid` int(11) NOT NULL,
  `type` smallint(1) NOT NULL,
  `data` int(11) NOT NULL,
  `date` int(11) default NULL,
  `counter` int(11) NOT NULL,
  `difficulty` smallint(6) default '-1',
  `item_guid` int(11) default '-1',
  `item_quality` smallint(6) NOT NULL default '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_feed_log
-- ----------------------------

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` int(10) unsigned NOT NULL default '0',
  `item_guid` int(10) unsigned NOT NULL default '0',
  `entry` int(10) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL default '0',
  `glyph1` smallint(5) unsigned NOT NULL default '0',
  `glyph2` smallint(5) unsigned default '0',
  `glyph3` smallint(5) unsigned default '0',
  `glyph4` smallint(5) unsigned default '0',
  `glyph5` smallint(5) unsigned default '0',
  `glyph6` smallint(5) unsigned default '0',
  PRIMARY KEY  (`guid`,`spec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_glyphs
-- ----------------------------

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL default '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL default '0',
  `posY` float NOT NULL default '0',
  `posZ` float NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_homebind
-- ----------------------------

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` int(10) unsigned NOT NULL default '0',
  `instance` int(10) unsigned NOT NULL default '0',
  `permanent` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL default '0',
  `slot` tinyint(3) unsigned NOT NULL default '0',
  `item` int(10) unsigned NOT NULL default '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY  (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL default '0',
  `entry` int(10) unsigned NOT NULL default '0',
  `owner` int(10) unsigned NOT NULL default '0',
  `modelid` int(10) unsigned default '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL default '0',
  `PetType` tinyint(3) unsigned NOT NULL default '0',
  `level` smallint(5) unsigned NOT NULL default '1',
  `exp` int(10) unsigned NOT NULL default '0',
  `Reactstate` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(21) NOT NULL default 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL default '0',
  `slot` tinyint(3) unsigned NOT NULL default '0',
  `curhealth` int(10) unsigned NOT NULL default '1',
  `curmana` int(10) unsigned NOT NULL default '0',
  `curhappiness` int(10) unsigned NOT NULL default '0',
  `savetime` int(10) unsigned NOT NULL default '0',
  `abdata` text,
  PRIMARY KEY  (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of character_pet
-- ----------------------------

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL default '0',
  `owner` int(10) unsigned NOT NULL default '0',
  `genitive` varchar(12) NOT NULL default '',
  `dative` varchar(12) NOT NULL default '',
  `accusative` varchar(12) NOT NULL default '',
  `instrumental` varchar(12) NOT NULL default '',
  `prepositional` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `explored` tinyint(3) unsigned NOT NULL default '0',
  `timer` int(10) unsigned NOT NULL default '0',
  `mobcount1` smallint(5) unsigned NOT NULL default '0',
  `mobcount2` smallint(5) unsigned NOT NULL default '0',
  `mobcount3` smallint(5) unsigned NOT NULL default '0',
  `mobcount4` smallint(5) unsigned NOT NULL default '0',
  `itemcount1` smallint(5) unsigned NOT NULL default '0',
  `itemcount2` smallint(5) unsigned NOT NULL default '0',
  `itemcount3` smallint(5) unsigned NOT NULL default '0',
  `itemcount4` smallint(5) unsigned NOT NULL default '0',
  `playercount` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_rewarded`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`guid`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_rewarded
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_weekly
-- ----------------------------

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL default '0',
  `standing` int(11) NOT NULL default '0',
  `flags` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_reputation
-- ----------------------------

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`guid`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_skills
-- ----------------------------

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL default '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL default '' COMMENT 'Friend Note',
  PRIMARY KEY  (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL default '1',
  `disabled` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_spell
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL default '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL default '0',
  `maxpower1` int(10) unsigned NOT NULL default '0',
  `maxpower2` int(10) unsigned NOT NULL default '0',
  `maxpower3` int(10) unsigned NOT NULL default '0',
  `maxpower4` int(10) unsigned NOT NULL default '0',
  `maxpower5` int(10) unsigned NOT NULL default '0',
  `maxpower6` int(10) unsigned NOT NULL default '0',
  `maxpower7` int(10) unsigned NOT NULL default '0',
  `strength` int(10) unsigned NOT NULL default '0',
  `agility` int(10) unsigned NOT NULL default '0',
  `stamina` int(10) unsigned NOT NULL default '0',
  `intellect` int(10) unsigned NOT NULL default '0',
  `spirit` int(10) unsigned NOT NULL default '0',
  `armor` int(10) unsigned NOT NULL default '0',
  `resHoly` int(10) unsigned NOT NULL default '0',
  `resFire` int(10) unsigned NOT NULL default '0',
  `resNature` int(10) unsigned NOT NULL default '0',
  `resFrost` int(10) unsigned NOT NULL default '0',
  `resShadow` int(10) unsigned NOT NULL default '0',
  `resArcane` int(10) unsigned NOT NULL default '0',
  `blockPct` float unsigned NOT NULL default '0',
  `dodgePct` float unsigned NOT NULL default '0',
  `parryPct` float unsigned NOT NULL default '0',
  `critPct` float unsigned NOT NULL default '0',
  `rangedCritPct` float unsigned NOT NULL default '0',
  `spellCritPct` float unsigned NOT NULL default '0',
  `attackPower` int(10) unsigned NOT NULL default '0',
  `rangedAttackPower` int(10) unsigned NOT NULL default '0',
  `spellPower` int(10) unsigned NOT NULL default '0',
  `resilience` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spell`,`spec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_talent
-- ----------------------------

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL default '0',
  `posY` float NOT NULL default '0',
  `posZ` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `mapId` smallint(5) unsigned NOT NULL default '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL default '1',
  `displayId` int(10) unsigned NOT NULL default '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL default '0',
  `bytes2` int(10) unsigned NOT NULL default '0',
  `guildId` int(10) unsigned NOT NULL default '0',
  `flags` tinyint(3) unsigned NOT NULL default '0',
  `dynFlags` tinyint(3) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `corpseType` tinyint(3) unsigned NOT NULL default '0',
  `instanceId` int(10) unsigned NOT NULL default '0' COMMENT 'Instance Identifier',
  PRIMARY KEY  (`corpseGuid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_player` (`guid`),
  KEY `idx_time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Death System';

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL default '0',
  `instanceId` int(10) unsigned NOT NULL default '0' COMMENT 'Instance Identifier',
  PRIMARY KEY  (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for `daily_players_reports`
-- ----------------------------
DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports` (
  `guid` int(10) unsigned NOT NULL default '0',
  `creation_time` int(10) unsigned NOT NULL default '0',
  `average` float NOT NULL default '0',
  `total_reports` bigint(20) unsigned NOT NULL default '0',
  `speed_reports` bigint(20) unsigned NOT NULL default '0',
  `fly_reports` bigint(20) unsigned NOT NULL default '0',
  `jump_reports` bigint(20) unsigned NOT NULL default '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL default '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL default '0',
  `climb_reports` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daily_players_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL default '0',
  `instanceId` int(10) unsigned NOT NULL default '0' COMMENT 'Instance Identifier',
  PRIMARY KEY  (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL default '0',
  `done` float default '0',
  PRIMARY KEY  (`eventEntry`,`condition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL default '1',
  `next_start` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------

-- ----------------------------
-- Table structure for `gmisland_teleport`
-- ----------------------------
DROP TABLE IF EXISTS `gmisland_teleport`;
CREATE TABLE `gmisland_teleport` (
  `map` smallint(5) unsigned NOT NULL default '0',
  `x` double NOT NULL default '0',
  `y` double NOT NULL default '0',
  `z` double NOT NULL default '0',
  `orientation` double NOT NULL default '0',
  `comment` varchar(255) default NULL,
  PRIMARY KEY  (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gmisland_teleport
-- ----------------------------
INSERT INTO `gmisland_teleport` VALUES ('13', '1.118799', '0.477914', '-144.70865', '3.133046', 'Jail Box');

-- ----------------------------
-- Table structure for `gm_subsurveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL auto_increment,
  `subsurveyId` int(10) unsigned NOT NULL default '0',
  `rank` int(10) unsigned NOT NULL default '0',
  `comment` text NOT NULL,
  PRIMARY KEY  (`surveyId`,`subsurveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_subsurveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL auto_increment,
  `guid` int(10) unsigned NOT NULL default '0',
  `mainSurvey` int(10) unsigned NOT NULL default '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`surveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL auto_increment,
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL default '0',
  `mapId` smallint(5) unsigned NOT NULL default '0',
  `posX` float NOT NULL default '0',
  `posY` float NOT NULL default '0',
  `posZ` float NOT NULL default '0',
  `lastModifiedTime` int(10) unsigned NOT NULL default '0',
  `closedBy` int(10) NOT NULL default '0',
  `assignedTo` int(10) unsigned NOT NULL default '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL default '0',
  `escalated` tinyint(3) unsigned NOT NULL default '0',
  `viewed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ticketId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL default '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL default '0',
  `instance` int(10) unsigned NOT NULL default '0',
  `permanent` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL default '0',
  `subgroup` tinyint(3) unsigned NOT NULL default '0',
  `roles` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`memberGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `leaderguid` int(10) unsigned NOT NULL default '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL default '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL default '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL default '0',
  `BorderColor` tinyint(3) unsigned NOT NULL default '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL default '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL default '',
  `createdate` int(10) unsigned NOT NULL default '0',
  `BankMoney` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL default '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL default '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL default '0',
  `ItemOrMoney` int(10) unsigned NOT NULL default '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL default '0',
  `DestTabId` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL default '0' COMMENT 'Event UNIX time',
  PRIMARY KEY  (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL default '0',
  `TabId` tinyint(3) unsigned NOT NULL default '0',
  `SlotId` tinyint(3) unsigned NOT NULL default '0',
  `item_guid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL default '0',
  `TabId` tinyint(3) unsigned NOT NULL default '0',
  `rid` tinyint(3) unsigned NOT NULL default '0',
  `gbright` tinyint(3) unsigned NOT NULL default '0',
  `SlotPerDay` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL default '0',
  `TabId` tinyint(3) unsigned NOT NULL default '0',
  `TabName` varchar(16) NOT NULL default '',
  `TabIcon` varchar(100) NOT NULL default '',
  `TabText` varchar(500) default NULL,
  PRIMARY KEY  (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY  (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL default '',
  `offnote` varchar(31) NOT NULL default '',
  `BankResetTimeMoney` int(10) unsigned NOT NULL default '0',
  `BankRemMoney` int(10) unsigned NOT NULL default '0',
  `BankResetTimeTab0` int(10) unsigned NOT NULL default '0',
  `BankRemSlotsTab0` int(10) unsigned NOT NULL default '0',
  `BankResetTimeTab1` int(10) unsigned NOT NULL default '0',
  `BankRemSlotsTab1` int(10) unsigned NOT NULL default '0',
  `BankResetTimeTab2` int(10) unsigned NOT NULL default '0',
  `BankRemSlotsTab2` int(10) unsigned NOT NULL default '0',
  `BankResetTimeTab3` int(10) unsigned NOT NULL default '0',
  `BankRemSlotsTab3` int(10) unsigned NOT NULL default '0',
  `BankResetTimeTab4` int(10) unsigned NOT NULL default '0',
  `BankRemSlotsTab4` int(10) unsigned NOT NULL default '0',
  `BankResetTimeTab5` int(10) unsigned NOT NULL default '0',
  `BankRemSlotsTab5` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` int(10) unsigned NOT NULL default '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL default '',
  `rights` mediumint(8) unsigned NOT NULL default '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL default '0',
  `map` smallint(5) unsigned NOT NULL default '0',
  `resettime` int(10) unsigned NOT NULL default '0',
  `difficulty` tinyint(3) unsigned NOT NULL default '0',
  `completedEncounters` int(10) unsigned NOT NULL default '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance
-- ----------------------------

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL default '0',
  `difficulty` tinyint(3) unsigned NOT NULL default '0',
  `resettime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES ('249', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('309', '0', '1322539200');
INSERT INTO `instance_reset` VALUES ('409', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('469', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('509', '0', '1322539200');
INSERT INTO `instance_reset` VALUES ('531', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('532', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('533', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('534', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('544', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('548', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('550', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('564', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('565', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('568', '0', '1322539200');
INSERT INTO `instance_reset` VALUES ('580', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('603', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('615', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('616', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('624', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('631', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('649', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('724', '0', '1322798400');
INSERT INTO `instance_reset` VALUES ('249', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('269', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('533', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('540', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('542', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('543', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('545', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('546', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('547', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('552', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('553', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('554', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('555', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('556', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('557', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('558', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('560', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('574', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('575', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('576', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('578', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('585', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('595', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('598', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('599', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('600', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('601', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('602', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('603', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('604', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('608', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('615', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('616', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('619', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('624', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('631', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('632', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('649', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('650', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('658', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('668', '1', '1322539200');
INSERT INTO `instance_reset` VALUES ('724', '1', '1322798400');
INSERT INTO `instance_reset` VALUES ('631', '2', '1322798400');
INSERT INTO `instance_reset` VALUES ('649', '2', '1322798400');
INSERT INTO `instance_reset` VALUES ('724', '2', '1322798400');
INSERT INTO `instance_reset` VALUES ('631', '3', '1322798400');
INSERT INTO `instance_reset` VALUES ('649', '3', '1322798400');
INSERT INTO `instance_reset` VALUES ('724', '3', '1322798400');

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL default '0',
  `itemEntry` mediumint(8) unsigned NOT NULL default '0',
  `owner_guid` int(10) unsigned NOT NULL default '0',
  `creatorGuid` int(10) unsigned NOT NULL default '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '1',
  `duration` int(10) NOT NULL default '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL default '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL default '0',
  `durability` smallint(5) unsigned NOT NULL default '0',
  `playedTime` int(10) unsigned NOT NULL default '0',
  `text` text,
  PRIMARY KEY  (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item System';

-- ----------------------------
-- Records of item_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `item_refund_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL default '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`item_guid`,`player_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_refund_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `item_soulbound_trade_data`
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY  (`itemGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_soulbound_trade_data
-- ----------------------------

-- ----------------------------
-- Table structure for `jail`
-- ----------------------------
DROP TABLE IF EXISTS `jail`;
CREATE TABLE `jail` (
  `guid` int(11) unsigned NOT NULL COMMENT 'GUID of the jail brother',
  `char` varchar(13) NOT NULL COMMENT 'Jailed charname',
  `release` int(11) unsigned NOT NULL COMMENT 'Release time for the char',
  `amnestietime` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL COMMENT 'Reason for the jail',
  `times` int(11) unsigned NOT NULL COMMENT 'How many times this char already was jailed',
  `gmacc` int(11) unsigned NOT NULL COMMENT 'Used GM acc to jail this char',
  `gmchar` varchar(13) NOT NULL COMMENT 'Used GM char to jail this char',
  `lasttime` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP COMMENT 'Last time jailed',
  `duration` int(11) unsigned NOT NULL default '0' COMMENT 'Duration of the jail',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Jail table for Trinitycore by WarHead Edited by SPGM';

-- ----------------------------
-- Records of jail
-- ----------------------------

-- ----------------------------
-- Table structure for `jail_conf`
-- ----------------------------
DROP TABLE IF EXISTS `jail_conf`;
CREATE TABLE `jail_conf` (
  `id` int(11) NOT NULL auto_increment,
  `obt` varchar(50) default NULL,
  `jail_conf` int(11) default NULL,
  `jail_tele` float default NULL,
  `help_ger` varchar(255) character set latin1 default '',
  `help_enq` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jail_conf
-- ----------------------------
INSERT INTO `jail_conf` VALUES ('1', 'm_jailconf_max_jails', '3', null, 'Hier legst ihre fest nach wie fielen Jails der Char gel?scht werden \r\nStandart = 3\r\n ', 'How many time the characters can be Jailed before being deleted\r\nDefault = 3');
INSERT INTO `jail_conf` VALUES ('2', 'm_jailconf_max_duration', '672', null, 'Hier legst ihre fest wie hoch der maximale Jail Time in Stunden \r\nStandart = 672\r\n', 'Here put how high the maximum Jail Time in hours\r\nDefault = 672');
INSERT INTO `jail_conf` VALUES ('3', 'm_jailconf_min_reason', '25', null, 'Hier legst ihre die minimalen Zeichen fest die als Grund angeben m?sst  \r\nStandart = 25\r\n\r\n', 'Here list how many characters are needed as the minimum reason\r\nDefault = 25');
INSERT INTO `jail_conf` VALUES ('4', 'm_jailconf_warn_player', '1', null, 'Hier legst ihre fest wann der Char gewarnt wirt  bevor er gel?scht wird \r\nStandart = 1\r\n', 'How many time to warn the player before jailing them\r\nDefault = 1');
INSERT INTO `jail_conf` VALUES ('5', 'm_jailconf_amnestie', '180', null, 'Hier legst ihre in Tagen fest wann der Jail Status  auf 0 zur?ckgesetzt wird   \r\nStandart = 180 Tage (das entspricht ca. ? Jahr)  \r\n                     0  Tage (Aus)\r\n', 'This is how many in days when the Jail is status is set to 0\r\nStandard = 180 days (approximately Ѕ year)\r\n                     0 days (off)');
INSERT INTO `jail_conf` VALUES ('6', 'm_jailconf_ally_x', null, '31.7282', 'Teleport Alliance  X Achse \r\nStandart = 31,7282\r\n', 'Teleport Alliance  X Axis \r\nStandart = 31,7282\r\n');
INSERT INTO `jail_conf` VALUES ('7', 'm_jailconf_ally_y', null, '135.794', 'Teleport Alliance  Y Achse \r\nStandart = 135,794\r\n', 'Teleport Alliance  Y Axis \r\nStandart = 135,794\r\n');
INSERT INTO `jail_conf` VALUES ('8', 'm_jailconf_ally_z', null, '-40.0508', 'Teleport Alliance  Z Achse \r\nStandart = -40,0508', 'Teleport Alliance  Z Axis \r\nStandart = -40,0508');
INSERT INTO `jail_conf` VALUES ('9', 'm_jailconf_ally_o', null, '4.73516', 'Teleport Alliance  blickrichtung\r\nStandart = 4,73516', 'Teleport Alliance  Orientation\r\nStandart = 4,73516');
INSERT INTO `jail_conf` VALUES ('10', 'm_jailconf_ally_m', '35', null, 'Teleport Alliance  Mape\r\nStandart = 35', 'Teleport Alliance  Map\r\nStandart = 35');
INSERT INTO `jail_conf` VALUES ('11', 'm_jailconf_horde_x', null, '2179.85', 'Teleport Horde  X Achse \r\nStandart = \r\n', 'Teleport Horde  X Axis \r\nStandart = \r\n');
INSERT INTO `jail_conf` VALUES ('12', 'm_jailconf_horde_y', null, '-4763.96', 'Teleport Horde  Y Achse \r\nStandart = -4763,96', 'Teleport Horde  Y Axis \r\nStandart = -4763,96');
INSERT INTO `jail_conf` VALUES ('13', 'm_jailconf_horde_z', null, '54.911', 'Teleport Horde  Z Achse \r\nStandart = 54,911', 'Teleport Horde  Z Axis \r\nStandart = 54,911');
INSERT INTO `jail_conf` VALUES ('14', 'm_jailconf_horde_o', null, '4.44216', 'Teleport  Horde  blickrichtung\r\nStandart = 4,44216', 'Teleport  Horde  Orientation\r\nStandart = 4,44216');
INSERT INTO `jail_conf` VALUES ('15', 'm_jailconf_horde_m', '1', null, 'Teleport Horde  Mape\r\nStandart = 1', 'eleport Horde  Map\r\nStandart = 1');
INSERT INTO `jail_conf` VALUES ('16', 'm_jailconf_ban', '0', null, 'Nach wie vielen Jail soll der  Account Gebant werden\r\nStandart = 0  (aus)\r\n', 'After how many jails the account will be Banned\r\nDefault = 0 (off)');
INSERT INTO `jail_conf` VALUES ('17', 'm_jailconf_radius', '10', null, 'Legt den Bewegung Radius in Metern waren des Jails fest\r\nStandart = 10\r\n', 'Sets the range of motion in meters of the jail\r\nDefault = 10');

-- ----------------------------
-- Table structure for `lag_reports`
-- ----------------------------
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
  `reportId` int(10) unsigned NOT NULL auto_increment,
  `guid` int(10) unsigned NOT NULL default '0',
  `lagType` tinyint(3) unsigned NOT NULL default '0',
  `mapId` smallint(5) unsigned NOT NULL default '0',
  `posX` float NOT NULL default '0',
  `posY` float NOT NULL default '0',
  `posZ` float NOT NULL default '0',
  PRIMARY KEY  (`reportId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of lag_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL default '0',
  `stationery` tinyint(3) NOT NULL default '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL default '0',
  `sender` int(10) unsigned NOT NULL default '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL default '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL default '0',
  `expire_time` int(10) unsigned NOT NULL default '0',
  `deliver_time` int(10) unsigned NOT NULL default '0',
  `money` int(10) unsigned NOT NULL default '0',
  `cod` int(10) unsigned NOT NULL default '0',
  `checked` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_external`
-- ----------------------------
DROP TABLE IF EXISTS `mail_external`;
CREATE TABLE `mail_external` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `receiver` int(10) unsigned NOT NULL,
  `subject` varchar(200) default 'Support Message',
  `message` varchar(200) default '',
  `money` int(10) unsigned NOT NULL default '0',
  `item` int(10) unsigned NOT NULL default '0',
  `item_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_external
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL default '0',
  `item_guid` int(10) unsigned NOT NULL default '0',
  `receiver` int(10) unsigned NOT NULL default '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY  (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mail_items
-- ----------------------------

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned default '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL default '0',
  `playerguid` int(10) unsigned NOT NULL default '0',
  `player_account` int(10) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL default '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `effect_mask` tinyint(3) unsigned NOT NULL default '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL default '0',
  `stackcount` tinyint(3) unsigned NOT NULL default '1',
  `amount0` mediumint(8) NOT NULL,
  `amount1` mediumint(8) NOT NULL,
  `amount2` mediumint(8) NOT NULL,
  `base_amount0` mediumint(8) NOT NULL,
  `base_amount1` mediumint(8) NOT NULL,
  `base_amount2` mediumint(8) NOT NULL,
  `maxduration` int(11) NOT NULL default '0',
  `remaintime` int(11) NOT NULL default '0',
  `remaincharges` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spell`,`effect_mask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_spell
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `players_reports_status`
-- ----------------------------
DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE `players_reports_status` (
  `guid` int(10) unsigned NOT NULL default '0',
  `creation_time` int(10) unsigned NOT NULL default '0',
  `average` float NOT NULL default '0',
  `total_reports` bigint(20) unsigned NOT NULL default '0',
  `speed_reports` bigint(20) unsigned NOT NULL default '0',
  `fly_reports` bigint(20) unsigned NOT NULL default '0',
  `jump_reports` bigint(20) unsigned NOT NULL default '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL default '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL default '0',
  `climb_reports` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_reports_status
-- ----------------------------

-- ----------------------------
-- Table structure for `pool_quest_save`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL default '0',
  `quest_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pool_id`,`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pool_quest_save
-- ----------------------------
INSERT INTO `pool_quest_save` VALUES ('500', '13675');
INSERT INTO `pool_quest_save` VALUES ('501', '13763');
INSERT INTO `pool_quest_save` VALUES ('502', '13770');
INSERT INTO `pool_quest_save` VALUES ('503', '13773');
INSERT INTO `pool_quest_save` VALUES ('504', '13780');
INSERT INTO `pool_quest_save` VALUES ('505', '13783');
INSERT INTO `pool_quest_save` VALUES ('506', '13666');
INSERT INTO `pool_quest_save` VALUES ('507', '13603');
INSERT INTO `pool_quest_save` VALUES ('508', '13741');
INSERT INTO `pool_quest_save` VALUES ('509', '13746');
INSERT INTO `pool_quest_save` VALUES ('510', '13757');
INSERT INTO `pool_quest_save` VALUES ('511', '13753');
INSERT INTO `pool_quest_save` VALUES ('512', '13101');
INSERT INTO `pool_quest_save` VALUES ('513', '13115');
INSERT INTO `pool_quest_save` VALUES ('514', '13836');
INSERT INTO `pool_quest_save` VALUES ('515', '12963');
INSERT INTO `pool_quest_save` VALUES ('516', '24579');
INSERT INTO `pool_quest_save` VALUES ('518', '24874');
INSERT INTO `pool_quest_save` VALUES ('518', '24879');

-- ----------------------------
-- Table structure for `reserved_name`
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- ----------------------------
-- Records of reserved_name
-- ----------------------------

-- ----------------------------
-- Table structure for `worldstates`
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL default '0',
  `value` int(10) unsigned NOT NULL default '0',
  `comment` tinytext,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- ----------------------------
-- Records of worldstates
-- ----------------------------
INSERT INTO `worldstates` VALUES ('20001', '0', 'NextArenaPointDistributionTime');
INSERT INTO `worldstates` VALUES ('20002', '1322487114', 'NextWeeklyQuestResetTime');
INSERT INTO `worldstates` VALUES ('20003', '1322532000', 'NextBGRandomDailyResetTime');
INSERT INTO `worldstates` VALUES ('20004', '0', 'cleaning_flags');
INSERT INTO `worldstates` VALUES ('31001', '1', 'WG war status');
INSERT INTO `worldstates` VALUES ('31002', '136063', 'WG clock');
INSERT INTO `worldstates` VALUES ('31003', '0', 'WG Fortress Defender');
INSERT INTO `worldstates` VALUES ('31004', '2', 'WG TEMP Battle Control Faction');
