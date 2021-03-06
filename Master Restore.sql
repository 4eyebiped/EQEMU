-- Last Edited (If I remember to update this) 04-08-2021

-- Increase LDON rewards
UPDATE `peq`.`adventure_template` SET `win_points` = `win_points` * 1.5;

-- Make factioning a bit less painful.
UPDATE `peq`.`npc_faction_entries` SET `value` = 5 WHERE `value` BETWEEN 1 AND 4;
UPDATE `peq`.`npc_faction_entries` SET `value` = 10 WHERE `value` BETWEEN 6 AND 9;

-- Remove the lore attribute from all items.  Makes dealing with bot armies more manageable. 
UPDATE `peq`.`items` SET `loregroup` = 0 WHERE `loregroup` < 0;

-- Set items back to lore that need it.
-- 
-- GoD - Relic of the Martyr
UPDATE `peq`.`items` SET `loregroup` = '-1' WHERE `id` IN (60141, 60142, 60143, 60144);
-- GoD - Frayed Flesh Scraps
UPDATE `peq`.`items` SET `loregroup` = '-1' WHERE `id` IN (60162, 60163, 60164, 60165);
-- GoD - Glyphed Flesh
UPDATE `peq`.`items` SET `loregroup` = '-1' WHERE `id` IN (60167, 60168, 60169);
-- GoD - Minor Relic of
UPDATE `peq`.`items` SET `loregroup` = '-1' WHERE `id` IN (60156, 60157, 60158, 60159);

-- GoD - Make Axtekilitek and Kruxilitek makable by anyone.
UPDATE `peq`.`tradeskill_recipe` SET `skillneeded` = 0 WHERE `id` = '10355';
UPDATE `peq`.`tradeskill_recipe` SET `skillneeded` = 0 WHERE `id` = '10356';

-- GoD - Make Engraved Rune craftable by any skill
UPDATE `peq`.`tradeskill_recipe` SET `skillneeded` = 0 WHERE `id` = '10896';


--------------------------------------------------------------------------------------------------------------------------------
-- Lootdrop changes
--------------------------------------------------------------------------------------------------------------------------------

-- Increase Tranquil staff drop rate from 1 to 10 on skeleton warlord.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 70 WHERE `lootdrop_id` = 1861 AND `item_id` = 3254;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 4549 AND `item_id` = 3254;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 6617 AND `item_id` = 3254;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 6639 AND `item_id` = 3254;

--  Add missing loot percentage to Drolvarg Captain in Karnor's Castle
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1558 AND `item_id` = 4519;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1558 AND `item_id` = 6612;

-- Drolvarge Warlord loot balance.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 70 WHERE `lootdrop_id` = 790 AND `item_id` = 1618;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 790 AND `item_id` = 4570;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 790 AND `item_id` = 5152;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 790 AND `item_id` = 7216;

-- Construct of Sathir karnor's castle loot balance.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 70 WHERE `lootdrop_id` = 2296 AND `item_id` = 4526;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 2296 AND `item_id` = 4578;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 2296 AND `item_id` = 5619;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 2296 AND `item_id` = 10855;

-- skeletal berzerker loot balance karnor's castle
UPDATE `peq`.`lootdrop_entries` SET `chance` = 70 WHERE `lootdrop_id` = 176360 AND `item_id` = 3252;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 176360 AND `item_id` = 4535;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 176360 AND `item_id` = 6641;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 176360 AND `item_id` = 14738;

-- skeletal captain loot balance karnor's castle
UPDATE `peq`.`lootdrop_entries` SET `chance` = 60 WHERE `lootdrop_id` = 176365 AND `item_id` = 2734;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 176365 AND `item_id` = 4540;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 20 WHERE `lootdrop_id` = 176365 AND `item_id` = 5466;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 176365 AND `item_id` = 6645;

-- skeletal scryer loot balance karnor's castle
UPDATE `peq`.`lootdrop_entries` SET `chance` = 70 WHERE `lootdrop_id` = 1864 AND `item_id` = 3255;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1864 AND `item_id` = 4547;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1864 AND `item_id` = 7212;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1864 AND `item_id` = 7214;

-- spectral turnkey loot balance karnor's castle
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1867 AND `item_id` = 3257;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1867 AND `item_id` = 4554;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1867 AND `item_id` = 5464;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 1867 AND `item_id` = 6642;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1867 AND `item_id` = 14745;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 1867 AND `item_id` = 55496;

-- Undead Jailer loot balance Karnor's Castle
UPDATE `peq`.`lootdrop_entries` SET `chance` = 70 WHERE `lootdrop_id` = 1866 AND `item_id` = 3256;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1866 AND `item_id` = 4556;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1866 AND `item_id` = 6640;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1866 AND `item_id` = 55499;

-- Undead Jailer spawn percentage balance Karnor's Castle
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10641 AND `npcID` = 102105;

UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10690 AND `npcID` = 102049;
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10690 AND `npcID` = 102105;

UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10691 AND `npcID` = 102052;
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10691 AND `npcID` = 102105;

UPDATE `peq`.`spawnentry` SET `chance` = 30 WHERE `spawngroupID` = 10698 AND `npcID` = 102051;
UPDATE `peq`.`spawnentry` SET `chance` = 30 WHERE `spawngroupID` = 10698 AND `npcID` = 102060;
UPDATE `peq`.`spawnentry` SET `chance` = 30 WHERE `spawngroupID` = 10698 AND `npcID` = 102089;
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10698 AND `npcID` = 102105;

UPDATE `peq`.`spawnentry` SET `chance` = 30 WHERE `spawngroupID` = 10699 AND `npcID` = 102056;
UPDATE `peq`.`spawnentry` SET `chance` = 30 WHERE `spawngroupID` = 10699 AND `npcID` = 102057;
UPDATE `peq`.`spawnentry` SET `chance` = 30 WHERE `spawngroupID` = 10699 AND `npcID` = 102058;
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10699 AND `npcID` = 102105;

UPDATE `peq`.`spawnentry` SET `chance` = 15 WHERE `spawngroupID` = 10700 AND `npcID` = 102029;
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10700 AND `npcID` = 102105;

UPDATE `peq`.`spawnentry` SET `chance` = 15 WHERE `spawngroupID` = 10701 AND `npcID` = 102055;
UPDATE `peq`.`spawnentry` SET `chance` = 10 WHERE `spawngroupID` = 10701 AND `npcID` = 102105;

-- Update Brogg loot balance.  Sebilis
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 2310 AND `item_id` = 4539;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 2310 AND `item_id` = 6611;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 60 WHERE `lootdrop_id` = 2310 AND `item_id` = 9030;

--Update Blood of Chottal loot balance.  Sebilis.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 2308 AND `item_id` = 4538;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 2308 AND `item_id` = 5156;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 60 WHERE `lootdrop_id` = 2308 AND `item_id` = 14746;

-- Update Emperor Chottal loot balance and give him back his nerfed Rod of Mourning. Sebilis
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 2312 AND `item_id` = 4545;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 60 WHERE `lootdrop_id` = 2312 AND `item_id` = 5629;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 2312 AND `item_id` = 6693;
UPDATE `peq`.`lootdrop_entries` SET `item_id` = 6629 WHERE `lootdrop_id` = 2312 AND `item_id` = 6693;


-- Frenzied Pox Scarab give back banned item.  Sebilis 6630 (runed fighters staff)
UPDATE `peq`.`lootdrop_entries` SET `item_id` = 6630 WHERE `lootdrop_id` = 771 AND `item_id` = 5162;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 15 WHERE `lootdrop_id` = 771 AND `item_id` = 6630;

-- Update Froggy loot percentages to equal 100.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 34 WHERE `lootdrop_id` = 1827 AND `item_id` = 3200;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 33 WHERE `lootdrop_id` = 1827 AND `item_id` = 4557;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 33 WHERE `lootdrop_id` = 1827 AND `item_id` = 5460;

-- Update Froglok chef loot to disable dropping gloves of wrath.  Sebilis
UPDATE `peq`.`lootdrop_entries` SET `chance` = 0 WHERE `lootdrop_id` = 1825 AND `item_id` = 55496;

-- UPdate froglok commander loot percentages.  Sebilis
UPDATE `peq`.`lootdrop_entries` SET `chance` = 11 WHERE `lootdrop_id` = 1829 AND `item_id` = 4564;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 10 WHERE `lootdrop_id` = 1829 AND `item_id` = 5609;

-- Sebilis - Update froglok ostiary loot percentages.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 1831 AND `item_id` = 5612;

-- Sebilis - Update froglok pickler loot percentages.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 1833 AND `item_id` = 3203;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 1833 AND `item_id` = 3206;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 1833 AND `item_id` = 4567;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 1833 AND `item_id` = 5615;

-- Sebilis - Update gangrenous_scarab (89149) loot percentages.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 2327 AND `item_id` = 4571;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 50 WHERE `lootdrop_id` = 2327 AND `item_id` = 4579;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 2327 AND `item_id` = 6686;

-- Sebilis - Update Hierophant_Prime_Grekal (89163) loot percentages.
UPDATE `peq`.`lootdrop_entries` SET `chance` = 18 WHERE `lootdrop_id` = 825 AND `item_id` = 5158;

-- Ssra Temple - Very slight drop rate mod for Hilog Jarsath
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 21001 AND `item_id` = 7966;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 25 WHERE `lootdrop_id` = 21001 AND `item_id` = 8200;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 50 WHERE `lootdrop_id` = 21001 AND `item_id` = 8201;

-- Give Boogoog base mosscovered twig 10901.  Frontier mountains
UPDATE `peq`.`lootdrop_entries` SET `item_id` = 10901 WHERE `lootdrop_id` = 9620 AND `item_id` = 10906;
UPDATE `peq`.`lootdrop_entries` SET `chance` = 50 WHERE `lootdrop_id` = 9620 AND `item_id` = 10901;

-- Luclin - Grieg's End - Set Officer of Madness 163169 spawn chance to match other mobs in the zone.
UPDATE `peq`.`spawnentry` SET `chance` = 80 WHERE `spawngroupID` = 17008 AND `npcID` = 163017;
UPDATE `peq`.`spawnentry` SET `chance` = 20 WHERE `spawngroupID` = 17008 AND `npcID` = 163169;

-- GoD - Qinimi - Set Pixt  spawn chance to match other mobs in the zone.
UPDATE `peq`.`spawnentry` SET `chance` = 20 WHERE `spawngroupID` = 40508 AND `npcID` = 281042;
UPDATE `peq`.`spawnentry` SET `chance` = 20 WHERE `spawngroupID` = 40508 AND `npcID` = 281047;
UPDATE `peq`.`spawnentry` SET `chance` = 40 WHERE `spawngroupID` = 40508 AND `npcID` = 281084;
UPDATE `peq`.`spawnentry` SET `chance` = 20 WHERE `spawngroupID` = 40508 AND `npcID` = 281135;

-- GoD - Riwwi - Lower respawn timer for Pixxt Hihkx, Reluctant Gladiator and Pixxt Kihlxc to match other names in zone.
UPDATE `peq`.`spawn2` SET `respawntime` = 900 WHERE `spawngroupID` = 98967;

-- Slightly upgrade the drop chance for runebranded girdle.  
UPDATE `peq`.`lootdrop_entries` SET `chance` = 1 WHERE `item_id` = 1620 AND `chance` < 2;
-- Slightly upgrade the drop chance for Siblisian Berserker Cloak. 
UPDATE `peq`.`lootdrop_entries` SET `chance` = 2 WHERE `item_id` = 1619 AND `chance` < 2;

-- Add monks to Wild Lord gear.  Kunark.
UPDATE `peq`.`items` SET `classes` = 16448 WHERE `id` IN (5460, 5461, 5462, 5463, 5464, 5465, 5466);


-- ------------------------------------------------------------------------------------------------------------------
-- Table Changes ----------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Get rid of unneeded spells so spell exports work correctly.
DELETE FROM `peq`.`spells_new` WHERE `id` BETWEEN '43000' AND '100000';

-- Create new table in faction_values to show faction names.
ALTER TABLE `peq`.`faction_values` ADD `faction_name` VARCHAR (50) DEFAULT NULL;

-- Run the following to update the new faction table.
UPDATE `peq`.`faction_values` SET `faction_name` = (SELECT `name` FROM `faction_list` WHERE `faction_values`.`faction_id` = `faction_list`.`id`);

-- Create new table in quest_globals to check time left on various quests.
ALTER TABLE `peq`.`quest_globals` ADD `timeleft` INT (11) DEFAULT NULL;

-- Create new table in respawn_timers to check respawn timers.
ALTER TABLE `peq`.`respawn_times` ADD `timeleft` INT (11) DEFAULT NULL;
--
-- Create new table in respawn_timers to show raid zone.
ALTER TABLE `peq`.`respawn_times` ADD `raidzone` VARCHAR (32) DEFAULT NULL;
--
-- Uncomment the below and run them when needed to update timeleft and raidzone.
UPDATE `peq`.`respawn_times` SET `timeleft` = (((start+duration) - UNIX_TIMESTAMP() )/60)/60;
UPDATE `peq`.`respawn_times` SET `raidzone` = (SELECT zone FROM spawn2 WHERE respawn_times.id = spawn2.id);
UPDATE `peq`.`quest_globals` SET `timeleft` = (( expdate - UNIX_TIMESTAMP() )/60)/60;

-- Create new table in rule_values for maintaining notes on changes.  Currently note is overwritten at server startup.
-- ALTER TABLE `peq`.`rule_values` ADD `rule_defaults` TEXT NOT NULL DEFAULT '';
-- UPDATE `peq`.`rule_values` SET `rule_defaults` = `rule_value`;
-- Run the following only before importing data to clear nulls if the new above code puts NULLs in.
-- UPDATE `peq`.`rule_values` SET `server_notes` = '';

-- Create new table in bot_spells_entries VARCHAR 64.
ALTER TABLE `peq`.`bot_spells_entries` ADD `spell_name` VARCHAR (64) DEFAULT NULL;
-- Adds spell names to the bot_spells_enteries spell_name column
UPDATE `peq`.`bot_spells_entries` SET `spell_name` = (select name from spells_new where id = spellid);

-- Make SK line of aggro spells self only to assist with bots.
UPDATE `peq`.`spells_new` SET `targettype` = 6 WHERE `id` IN (1225, 1226, 1227, 1228, 3410);

-- Make all zones that were considered indoor, now outdoor.
UPDATE `peq`.`zone` SET `castoutdoor` = 1 WHERE `castoutdoor` = 0;

-- ------------------------------------------------------------------------------------------------------------------
-- BOT CHANGES ------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Make GoD - #Zun`Muram_Tkarish_Zyk (297150)easier and meleeable. 
REPLACE INTO `npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`, `always_aggro`) VALUES (297150, '#Zun`Muram_Tkarish_Zyk', '', 80, 400, 7, 34, 1000000, 0, 2, 0, 47, 0, 16, 195, 25, 10779, 0, 0, 1102, 0, 79, 0, 0, 1100, 3000, -1, '', '2,1^4,1,26,0,30^5,1,14^7,1^13,1^14,1^15,1^16,1^17,1^21,1^23,1^31,1^32,1,350', 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.75, 250, 250, 250, 250, 250, 15, 250, 1, 1, 0, 604, 0, 1, -22, 16, 0, 358, 358, 358, 358, 358, 358, 358, 1, 1, 1, 0, 1, 400, 350, 0, 0, 0, 0, 100, 0, 0, 0, 0, 1285, 100, 100, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0);


-- ------------------------------------------------------------------------------------------------------------------
-- ITEM CHANGES -----------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Stackables - Make some items stackable that weren't before --
-- -------------------------------------------------------------- 
-- ** Cyclops Toes - After all, they do have 5 of them!
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 16543;
UPDATE `peq`.`items` SET `stacksize` = 5 WHERE `id` = 16543;
-- ** Fire Giants Toes - After all, they do have 5 of them!
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 16541;
UPDATE `peq`.`items` SET `stacksize` = 5 WHERE `id` = 16541;
-- ** Frost Giants Toes - After all, they do have 5 of them!
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 29125;
UPDATE `peq`.`items` SET `stacksize` = 5 WHERE `id` = 29125;
-- ** Hill Giants Toes - After all, they do have 5 of them!
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 16539;
UPDATE `peq`.`items` SET `stacksize` = 5 WHERE `id` = 16539;
-- ** Ice Giants Toes - After all, they do have 5 of them!
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 16540;
UPDATE `peq`.`items` SET `stacksize` = 5 WHERE `id` = 16540;
-- ** Storm Giants Toes - After all, they do have 5 of them!
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 29124;
UPDATE `peq`.`items` SET `stacksize` = 5 WHERE `id` = 29124;
-- ** Velious (Kael) Make Velious Gaint Warrior Helmets stackable.  Help with faction grinding.
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` = 29062;
UPDATE `peq`.`items` SET `stacksize` = 20 WHERE `id` = 29062;
-- ** Make previously 20 stackable tradeskill items stack to 100 except food and drink.
UPDATE `peq`.`items` SET `stacksize` = 100 WHERE `stacksize` >= 5 AND `stackable` = 1 AND `tradeskills` = 1 AND `itemtype` != 14 AND `itemtype` != 15;
-- ** Make the various flow gems stackable in OOW
UPDATE `peq`.`items` SET `stackable` = 1 WHERE `id` IN (10396, 10397, 72650, 72651, 72652, 72653, 72654, 72655, 72656, 72657, 72658, 72659, 72660, 72661);
UPDATE `peq`.`items` SET `stacksize` = 100 WHERE `id` IN (10396, 10397, 72650, 72651, 72652, 72653, 72654, 72655, 72656, 72657, 72658, 72659, 72660, 72661);
-- Make blacksmithing less painful for those with wrist issues.
UPDATE `peq`.`items` SET `stackable` = 1, `stacksize` = 100 WHERE `tradeskills` = 1 AND `Name` LIKE '% Mold';

-- Cast Timers for non game changing items --
-- -------------------------------------------
-- ** Velious Monk Wrist clickies - Lower casttime to 5 seconds.  Need dbstr_us.txt update.
UPDATE `peq`.`items` SET `casttime` = 5000 WHERE `clickeffect` = 1684;
-- ** Dusty Soriz Worker Pouch (8200) - Lower casttime to 5 seconds.  Need dbstr_us.txt update.
UPDATE `peq`.`items` SET `casttime` = 5000 WHERE `clickeffect` = 2078;

-- ** Makes all group and raid augs interchangeable. So all are type 7 and type 8.
UPDATE `peq`.`items` SET `augtype` = 192 WHERE `augtype` = 64;
UPDATE `peq`.`items` SET `augtype` = 192 WHERE `augtype` = 128;

-- Allows all potions to have their required level show in the merchant window for easy sorting.
UPDATE `peq`.`items` SET `reqlevel` = `clicklevel2` WHERE `itemtype` = 21;


SELECT id, name, casttime, clickeffect FROM `peq`.`items` WHERE `casttime` > 0 AND `clickeffect` > 0;
-- Get rid of light sources.  Need to add in some exceptions like lightstones or laterns newbies might want.
UPDATE `peq`.`items` SET `light` = 0 WHERE `light` > 0;

-- Lower proc level for weapons by 10 levels.
UPDATE `peq`.`items` SET `proclevel2`= `proclevel2` - 10 WHERE `proclevel2` >= 10 AND `itemtype` != 21 AND `itemtype` != 7;
UPDATE `peq`.`items` SET `proclevel`= `proclevel` - 10 WHERE `proclevel` >= 10 AND `itemtype` != 21 AND `itemtype` != 7;

-- Delete non visible defiant gear 6,227 entries
-- DELETE FROM `peq`.`lootdrop_entries` WHERE `item_id` in (50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013, 50014, 50015, 50016, 50017, 50018, 50019, 50020, 50021, 50022, 50023, 50024, 50025, 50026, 50027, 50028, 50029, 50030, 50031, 50032, 50033, 50034, 50035, 50036, 50037, 50038, 50039, 50040, 50041, 50042, 50043, 50044, 50045, 50046, 50047, 50048, 50049, 50050, 50051, 50052, 50053, 50054, 50055, 50056, 50057, 50058, 50059, 50060, 50061, 50062, 50063, 50064, 50065, 50066, 50067, 50068, 50069, 50070, 50071, 50072, 50073, 50074, 50075, 50076, 50077, 50078, 50079, 50080, 50081, 50082, 50083, 50084, 50085, 50086, 50087, 50088, 50089, 50090, 50091, 50092, 50093, 50094, 50095, 50096, 50097, 50098, 50099, 50100, 50101, 50102, 50103, 50104, 50105, 50106, 50107, 50108, 50109, 50110, 50111, 50112, 50113, 50114, 50115, 50116, 50117, 50118, 50119, 50120, 50121, 50122, 50123, 50124, 50125, 50126, 50127, 50128, 50129, 50130, 50131, 50132, 50133, 50134, 50135, 50136, 50137, 50138, 50139, 50140, 50141, 50142, 50143, 50144, 50145, 50146, 50147, 50148, 50149, 50150, 50151, 50152, 50153, 50154, 50155, 50156, 50157, 50158, 50159, 50160, 50161, 50162, 50163, 50164, 50165, 50166, 50167, 50168, 50169, 50170, 50171, 50172, 50173, 50174, 50175, 50176, 50177, 50178, 50179, 50180, 50181, 50182, 50183, 50184, 50185, 50186, 50187, 50188, 50189, 50190, 50191, 50192, 50193, 50194, 50195, 50196, 50197, 50198, 50199, 50200, 50201, 50202, 50203, 50204, 50205, 50206, 50207, 50208, 50209, 50210, 50211, 50212, 50213, 50214, 50215, 50216, 50217, 50218, 50219, 50220, 50221, 50222, 50223, 50224, 50225, 50226, 50227, 50228, 50229, 50230, 50231, 50232, 50233, 50234, 50235, 50236, 50237, 50238, 50239, 50240, 50241, 50242, 50243, 50244, 50245, 50246, 50300, 50301, 50302, 50303, 50304, 50305, 50306, 50307, 50308, 50309, 50310, 50311, 50312, 50313, 50314, 50315, 50316, 50317, 50318, 50319, 50320, 50321, 50322, 50323, 50324, 50325, 50326, 50327, 50328, 50329, 50330, 50331, 50332, 50333, 50334, 50335, 50336, 50337, 50338, 50339, 50340, 50341, 50342, 50343, 50344, 50345, 50346, 50347, 50348, 50349, 50350, 50351, 50352, 50353, 50354, 50355, 50356, 50357, 50358, 50359, 50360, 50361, 50362, 50363, 50364, 50365, 50366, 50367, 50368, 50369, 50370, 50371, 50372, 50373, 50374, 50375, 50376, 50377, 50378, 50379, 50380, 50381, 50382, 50383, 50384, 50385, 50386, 50387, 50388, 50389, 50390, 50391, 50392, 50393, 50394, 50395, 50396, 50397, 50398, 50399, 50401, 50402, 50403, 50404, 50405, 50406, 50407, 50408, 50409, 50410, 50411, 50412, 50413, 50414, 50415, 50416, 50417, 50418, 50419, 50420, 50422, 50423, 50424, 50425, 50426, 50427, 50428, 50429, 50430, 50431, 50432, 50433, 50434, 50435, 50436, 50437, 50438, 50439, 50440, 50441, 50443, 50444, 50445, 50446, 50447, 50448, 50449, 50450, 50451, 50452, 50453, 50454, 50455, 50456, 50457, 50458, 50459, 50460, 50461, 50462, 50464, 50465, 50466, 50467, 50468, 50469, 50471, 50472, 50473, 50474, 50475, 50476, 50477, 50478, 50479, 50481, 50482, 50483, 50500, 50501, 50502, 50503, 50504, 50505, 50506, 50507, 50508, 50509, 50510, 50511, 50512, 50513, 50514, 50515, 50516, 50517, 50518, 50519, 50520, 50521, 50522, 50523, 50524, 50525, 50526, 50527, 50528, 50529, 50530, 50531, 50532, 50533, 50534, 50535, 50536, 50537, 50540, 50541, 50542, 50543, 50544, 50545, 50546, 50547, 50548, 50549, 50550, 50551, 50552, 50553, 50554, 50555, 50556, 50557, 50558, 50559, 50560, 50561, 50562, 50563, 50564, 50565, 50566, 50567, 50568, 50569, 50570, 50571, 50572, 50573, 50574, 50575, 50576, 50577, 50578, 50579, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50593, 50594, 50595, 50596, 50597, 50598, 50599, 50600, 50601, 50602, 50603, 50604, 50605, 50606, 50607, 50608, 50609, 50610, 50611, 50612, 50613, 50614, 50615, 50616, 50617, 50618, 50619, 50620, 50621, 50622, 50623, 50624, 50625, 50626, 50627, 50628, 50629, 50630, 50631, 60500, 60501, 60502, 60503, 60504, 60505, 60506, 60507, 60508, 60509, 60510, 60511, 60512, 60513, 60514, 60515, 60516, 60517, 60518, 60519, 60520, 60521, 60522, 60523, 60524, 60525, 60526, 60527, 60528, 60529, 60530, 60531, 60532, 60533, 60534, 60535, 60536, 60537, 60538, 60539, 60540, 60541, 60542, 60543, 60544, 60545, 60546, 60547, 60548, 60549, 60550, 60551, 60552, 60553, 60554, 60555, 60556, 60557, 60558, 60559, 60560, 60561) AND `lootdrop_id` NOT in (176432, 176433, 176434, 176435, 176436, 176437, 176438, 176439, 176821);


-- Make all Defiant armor required level based on recommended level.
-- UPDATE `peq`.`items` SET `reqlevel` = `reclevel` WHERE `id` in (50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013, 50014, 50015, 50016, 50017, 50018, 50019, 50020, 50021, 50022, 50023, 50024, 50025, 50026, 50027, 50028, 50029, 50030, 50031, 50032, 50033, 50034, 50035, 50036, 50037, 50038, 50039, 50040, 50041, 50042, 50043, 50044, 50045, 50046, 50047, 50048, 50049, 50050, 50051, 50052, 50053, 50054, 50055, 50056, 50057, 50058, 50059, 50060, 50061, 50062, 50063, 50064, 50065, 50066, 50067, 50068, 50069, 50070, 50071, 50072, 50073, 50074, 50075, 50076, 50077, 50078, 50079, 50080, 50081, 50082, 50083, 50084, 50085, 50086, 50087, 50088, 50089, 50090, 50091, 50092, 50093, 50094, 50095, 50096, 50097, 50098, 50099, 50100, 50101, 50102, 50103, 50104, 50105, 50106, 50107, 50108, 50109, 50110, 50111, 50112, 50113, 50114, 50115, 50116, 50117, 50118, 50119, 50120, 50121, 50122, 50123, 50124, 50125, 50126, 50127, 50128, 50129, 50130, 50131, 50132, 50133, 50134, 50135, 50136, 50137, 50138, 50139, 50140, 50141, 50142, 50143, 50144, 50145, 50146, 50147, 50148, 50149, 50150, 50151, 50152, 50153, 50154, 50155, 50156, 50157, 50158, 50159, 50160, 50161, 50162, 50163, 50164, 50165, 50166, 50167, 50168, 50169, 50170, 50171, 50172, 50173, 50174, 50175, 50176, 50177, 50178, 50179, 50180, 50181, 50182, 50183, 50184, 50185, 50186, 50187, 50188, 50189, 50190, 50191, 50192, 50193, 50194, 50195, 50196, 50197, 50198, 50199, 50200, 50201, 50202, 50203, 50204, 50205, 50206, 50207, 50208, 50209, 50210, 50211, 50212, 50213, 50214, 50215, 50216, 50217, 50218, 50219, 50220, 50221, 50222, 50223, 50224, 50225, 50226, 50227, 50228, 50229, 50230, 50231, 50232, 50233, 50234, 50235, 50236, 50237, 50238, 50239, 50240, 50241, 50242, 50243, 50244, 50245, 50246, 50300, 50301, 50302, 50303, 50304, 50305, 50306, 50307, 50308, 50309, 50310, 50311, 50312, 50313, 50314, 50315, 50316, 50317, 50318, 50319, 50320, 50321, 50322, 50323, 50324, 50325, 50326, 50327, 50328, 50329, 50330, 50331, 50332, 50333, 50334, 50335, 50336, 50337, 50338, 50339, 50340, 50341, 50342, 50343, 50344, 50345, 50346, 50347, 50348, 50349, 50350, 50351, 50352, 50353, 50354, 50355, 50356, 50357, 50358, 50359, 50360, 50361, 50362, 50363, 50364, 50365, 50366, 50367, 50368, 50369, 50370, 50371, 50372, 50373, 50374, 50375, 50376, 50377, 50378, 50379, 50380, 50381, 50382, 50383, 50384, 50385, 50386, 50387, 50388, 50389, 50390, 50391, 50392, 50393, 50394, 50395, 50396, 50397, 50398, 50399, 50401, 50402, 50403, 50404, 50405, 50406, 50407, 50408, 50409, 50410, 50411, 50412, 50413, 50414, 50415, 50416, 50417, 50418, 50419, 50420, 50422, 50423, 50424, 50425, 50426, 50427, 50428, 50429, 50430, 50431, 50432, 50433, 50434, 50435, 50436, 50437, 50438, 50439, 50440, 50441, 50443, 50444, 50445, 50446, 50447, 50448, 50449, 50450, 50451, 50452, 50453, 50454, 50455, 50456, 50457, 50458, 50459, 50460, 50461, 50462, 50464, 50465, 50466, 50467, 50468, 50469, 50471, 50472, 50473, 50474, 50475, 50476, 50477, 50478, 50479, 50481, 50482, 50483, 50500, 50501, 50502, 50503, 50504, 50505, 50506, 50507, 50508, 50509, 50510, 50511, 50512, 50513, 50514, 50515, 50516, 50517, 50518, 50519, 50520, 50521, 50522, 50523, 50524, 50525, 50526, 50527, 50528, 50529, 50530, 50531, 50532, 50533, 50534, 50535, 50536, 50537, 50540, 50541, 50542, 50543, 50544, 50545, 50546, 50547, 50548, 50549, 50550, 50551, 50552, 50553, 50554, 50555, 50556, 50557, 50558, 50559, 50560, 50561, 50562, 50563, 50564, 50565, 50566, 50567, 50568, 50569, 50570, 50571, 50572, 50573, 50574, 50575, 50576, 50577, 50578, 50579, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50593, 50594, 50595, 50596, 50597, 50598, 50599, 50600, 50601, 50602, 50603, 50604, 50605, 50606, 50607, 50608, 50609, 50610, 50611, 50612, 50613, 50614, 50615, 50616, 50617, 50618, 50619, 50620, 50621, 50622, 50623, 50624, 50625, 50626, 50627, 50628, 50629, 50630, 50631, 60500, 60501, 60502, 60503, 60504, 60505, 60506, 60507, 60508, 60509, 60510, 60511, 60512, 60513, 60514, 60515, 60516, 60517, 60518, 60519, 60520, 60521, 60522, 60523, 60524, 60525, 60526, 60527, 60528, 60529, 60530, 60531, 60532, 60533, 60534, 60535, 60536, 60537, 60538, 60539, 60540, 60541, 60542, 60543, 60544, 60545, 60546, 60547, 60548, 60549, 60550, 60551, 60552, 60553, 60554, 60555, 60556, 60557, 60558, 60559, 60560, 60561);
-- After the above, remove the reclevel from all defiant.
-- UPDATE `peq`.`items` SET `reclevel` = 0 WHERE `id` in (50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013, 50014, 50015, 50016, 50017, 50018, 50019, 50020, 50021, 50022, 50023, 50024, 50025, 50026, 50027, 50028, 50029, 50030, 50031, 50032, 50033, 50034, 50035, 50036, 50037, 50038, 50039, 50040, 50041, 50042, 50043, 50044, 50045, 50046, 50047, 50048, 50049, 50050, 50051, 50052, 50053, 50054, 50055, 50056, 50057, 50058, 50059, 50060, 50061, 50062, 50063, 50064, 50065, 50066, 50067, 50068, 50069, 50070, 50071, 50072, 50073, 50074, 50075, 50076, 50077, 50078, 50079, 50080, 50081, 50082, 50083, 50084, 50085, 50086, 50087, 50088, 50089, 50090, 50091, 50092, 50093, 50094, 50095, 50096, 50097, 50098, 50099, 50100, 50101, 50102, 50103, 50104, 50105, 50106, 50107, 50108, 50109, 50110, 50111, 50112, 50113, 50114, 50115, 50116, 50117, 50118, 50119, 50120, 50121, 50122, 50123, 50124, 50125, 50126, 50127, 50128, 50129, 50130, 50131, 50132, 50133, 50134, 50135, 50136, 50137, 50138, 50139, 50140, 50141, 50142, 50143, 50144, 50145, 50146, 50147, 50148, 50149, 50150, 50151, 50152, 50153, 50154, 50155, 50156, 50157, 50158, 50159, 50160, 50161, 50162, 50163, 50164, 50165, 50166, 50167, 50168, 50169, 50170, 50171, 50172, 50173, 50174, 50175, 50176, 50177, 50178, 50179, 50180, 50181, 50182, 50183, 50184, 50185, 50186, 50187, 50188, 50189, 50190, 50191, 50192, 50193, 50194, 50195, 50196, 50197, 50198, 50199, 50200, 50201, 50202, 50203, 50204, 50205, 50206, 50207, 50208, 50209, 50210, 50211, 50212, 50213, 50214, 50215, 50216, 50217, 50218, 50219, 50220, 50221, 50222, 50223, 50224, 50225, 50226, 50227, 50228, 50229, 50230, 50231, 50232, 50233, 50234, 50235, 50236, 50237, 50238, 50239, 50240, 50241, 50242, 50243, 50244, 50245, 50246, 50300, 50301, 50302, 50303, 50304, 50305, 50306, 50307, 50308, 50309, 50310, 50311, 50312, 50313, 50314, 50315, 50316, 50317, 50318, 50319, 50320, 50321, 50322, 50323, 50324, 50325, 50326, 50327, 50328, 50329, 50330, 50331, 50332, 50333, 50334, 50335, 50336, 50337, 50338, 50339, 50340, 50341, 50342, 50343, 50344, 50345, 50346, 50347, 50348, 50349, 50350, 50351, 50352, 50353, 50354, 50355, 50356, 50357, 50358, 50359, 50360, 50361, 50362, 50363, 50364, 50365, 50366, 50367, 50368, 50369, 50370, 50371, 50372, 50373, 50374, 50375, 50376, 50377, 50378, 50379, 50380, 50381, 50382, 50383, 50384, 50385, 50386, 50387, 50388, 50389, 50390, 50391, 50392, 50393, 50394, 50395, 50396, 50397, 50398, 50399, 50401, 50402, 50403, 50404, 50405, 50406, 50407, 50408, 50409, 50410, 50411, 50412, 50413, 50414, 50415, 50416, 50417, 50418, 50419, 50420, 50422, 50423, 50424, 50425, 50426, 50427, 50428, 50429, 50430, 50431, 50432, 50433, 50434, 50435, 50436, 50437, 50438, 50439, 50440, 50441, 50443, 50444, 50445, 50446, 50447, 50448, 50449, 50450, 50451, 50452, 50453, 50454, 50455, 50456, 50457, 50458, 50459, 50460, 50461, 50462, 50464, 50465, 50466, 50467, 50468, 50469, 50471, 50472, 50473, 50474, 50475, 50476, 50477, 50478, 50479, 50481, 50482, 50483, 50500, 50501, 50502, 50503, 50504, 50505, 50506, 50507, 50508, 50509, 50510, 50511, 50512, 50513, 50514, 50515, 50516, 50517, 50518, 50519, 50520, 50521, 50522, 50523, 50524, 50525, 50526, 50527, 50528, 50529, 50530, 50531, 50532, 50533, 50534, 50535, 50536, 50537, 50540, 50541, 50542, 50543, 50544, 50545, 50546, 50547, 50548, 50549, 50550, 50551, 50552, 50553, 50554, 50555, 50556, 50557, 50558, 50559, 50560, 50561, 50562, 50563, 50564, 50565, 50566, 50567, 50568, 50569, 50570, 50571, 50572, 50573, 50574, 50575, 50576, 50577, 50578, 50579, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50593, 50594, 50595, 50596, 50597, 50598, 50599, 50600, 50601, 50602, 50603, 50604, 50605, 50606, 50607, 50608, 50609, 50610, 50611, 50612, 50613, 50614, 50615, 50616, 50617, 50618, 50619, 50620, 50621, 50622, 50623, 50624, 50625, 50626, 50627, 50628, 50629, 50630, 50631, 60500, 60501, 60502, 60503, 60504, 60505, 60506, 60507, 60508, 60509, 60510, 60511, 60512, 60513, 60514, 60515, 60516, 60517, 60518, 60519, 60520, 60521, 60522, 60523, 60524, 60525, 60526, 60527, 60528, 60529, 60530, 60531, 60532, 60533, 60534, 60535, 60536, 60537, 60538, 60539, 60540, 60541, 60542, 60543, 60544, 60545, 60546, 60547, 60548, 60549, 60550, 60551, 60552, 60553, 60554, 60555, 60556, 60557, 60558, 60559, 60560, 60561);

-- Potion Price adjustments for vendors.  Have to redo...
-- -------------------------------------
-- Bottle of Shared Adventure I
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (48083, 0, 'Bottle of Shared Adventure I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2045, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that increases exp gained for a group of people', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 10000, 0, 1, -1, 0, 0, 22467, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:31:17', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 10:07:10', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-11-30 15:00:13', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);
-- Bottle of Shared Adventure II
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (48084, 0, 'Bottle of Shared Adventure II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2045, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that increases exp gained for a group of people', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 250000, 0, 1, -1, 0, 0, 22468, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:32:37', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 10:07:11', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-11-30 15:00:13', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);
-- Bottle of Shared Adventure III
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (48085, 0, 'Bottle of Shared Adventure III', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2045, 'IT63', 0, 21, 4, 0, 0, 0, 'A potion that increases exp gained for a group of people', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 500000, 0, 1, -1, 0, 0, 22469, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:32:39', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 10:07:12', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-11-30 15:00:13', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);
-- Potion of Antiweight
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (14445, 0, 'Potion of Antiweight', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 703, 'IT63', 0, 21, 0, 0, 0, 0, 'Potion of Antiweight', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 9, 0, 1, -1, 0, 0, 2894, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '2015-12-11 20:59:50', '', 0, 0, 1, 0, 10, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 06:01:03', NULL, '13THFLOOR', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '0000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-12-11 20:59:50', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Potion of Binding
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (40681, 0, 'Potion of Binding', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2044, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that binds the user', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 2, 0, 1, -1, 0, 0, 12867, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:35:55', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 09:13:46', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-11-28 15:59:38', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);
-- Potion of Deadishness
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (40680, 0, 'Potion of Deadishness', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2051, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that grants invisibility to undead to the user', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 2, 0, 1, -1, 0, 0, 12866, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:47:15', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 09:13:45', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '0000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-12-11 22:17:34', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Potion of Diminution
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (40650, 0, 'Potion of Diminution', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2073, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that grants diminutive size', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 2, 0, 1, -1, 0, 0, 12899, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:53:32', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-06 09:13:32', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-12-11 22:17:34', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);
-- Potion of Speed
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (40682, 0, 'Potion of Speed', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2043, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that grants speedy movement', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 2, 0, 1, -1, 0, 0, 12868, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:51:27', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-03-16 20:28:56', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-11-28 13:58:41', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);
-- Potion of Translocation
REPLACE INTO `items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (40651, 0, 'Potion of Translocation', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12000, 0, '', '0', 65535, 4278190080, '0', 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 1, 0, 0, 0, 0, 2074, 'IT63', 0, 21, 0, 0, 0, 0, 'A potion that gates the user home', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 2, 0, 1, -1, 0, 0, 12900, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 5, 13, 0, 0, 0, 0, 0, '2020-04-27 21:36:16', '', 0, 0, 1, 0, 20, 0, 1, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-01-13 23:54:23', NULL, '13THFLOOR', 0, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-12-09 20:02:09', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);


-- Make all items ALL in race usage.  Mainly to negate the small, medium, large armor of original EQ.
UPDATE `peq`.`items` SET `races` = 65535 WHERE `races` > 0 AND `races` < 65535;

-- Double the max cash drop from all mobs
UPDATE `peq`.`loottable` SET `maxcash` = maxcash * 2 WHERE maxcash > 0;

-- ------------------------------------------------------------------------------------------------------------------
-- Zone Point Changes -----------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Correct orientation after zoning from Ferubi to Barindu
UPDATE `peq`.`zone_points` SET `target_heading` = 500 WHERE `id` = 1373;

-- ------------------------------------------------------------------------------------------------------------------
-- Barindu Changes ----------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Make Chiaka Lerato always spawn
UPDATE `peq`.`spawnentry` SET `chance` = 0 WHERE `spawngroupID` = AND `npcID` IN (283039, 283077, 283079, 283080, 283082, 283085);

-- ------------------------------------------------------------------------------------------------------------------
-- NPC CHANGES ---------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Puts most raid targets on a 2.5 day timer that were on a higher timer.  Others targets require quest files.
UPDATE `peq`.`spawn2` SET `respawntime` = 216000 WHERE `respawntime` > 216000 AND `respawntime` < 999999;

-- Remove spawn variance from all spawn points.
UPDATE `peq`.`spawn2` SET `variance` = 0 WHERE `variance` > 0;

-- Ruleset equals expansion.  Was going to be used with zone based level restrictions.  Did not work
-- UPDATE `peq`.`zone` SET `ruleset` = `expansion` WHERE `ruleset` != `expansion`;

-- Shadowhaven suspend buffs.
UPDATE `peq`.`zone` SET `suspendbuffs` = 1 WHERE `id` = 333;

-- Prevent Ralkor from selling potions in PoK
UPDATE `peq`.`merchantlist` SET `probability` = 0 WHERE `item` in (35930, 35931, 35932, 35933, 35935, 35936, 35937, 35938, 35940, 35941, 35942, 35943, 37880, 37881, 37882, 37893, 37894, 37895, 40554, 40555, 40556, 40557, 40559, 40560, 56936, 56939, 56940, 56941, 56942, 56943, 56944, 64607, 64610, 64611, 64612, 64613, 64614, 64615, 77784, 77785, 77786, 77787, 77788, 77794, 77795, 77796, 77797, 77798, 77804, 77805, 77806, 77807, 77808, 77814, 77815, 77816, 77817, 77818, 77824, 77825, 77826, 77827, 77828, 93986, 93987, 93988, 93989, 93990, 93991, 135335, 135336, 135337, 135338, 135339, 135340) AND `merchantid` = 202292; 

-- Prevent Elwin Razorfur from spawning in PoK.  Potion vendors
UPDATE `peq`.`spawn2` SET `enabled` = 0 WHERE `id` = 40635;

-- Prevent Alchemist Redsa from selling potions in PoK.
UPDATE `peq`.`merchantlist` SET `probability` = 0 WHERE `item` in (37870, 37871, 37872, 37873, 37874, 37875, 37876, 37877, 37878, 37879, 37883, 37884, 37885, 37886, 37887, 37888, 37889, 37890, 37891, 37892, 77779, 77780, 77781, 77782, 77783, 77784, 77785, 77786, 77787, 77788, 77789, 77790, 77791, 77792, 77793, 77794, 77795, 77796, 77797, 77798, 77799, 77800, 77801, 77802, 77803, 77804, 77805, 77806, 77807, 77808, 77809, 77810, 77811, 77812, 77813, 77814, 77815, 77816, 77817, 77818, 77819, 77820, 77821, 77822, 77823, 77824, 77825, 77826, 77827, 77828) AND `merchantid` = 1000008;



-- ------------------------------------------------------------------------------------------------------------------
-- SPELL CHANGES ---------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Death Touch Spells - Lower death touch damage.
-- -----------------------------------------------
--	(Cazic Touch)
UPDATE `peq`.`spells_new` SET `effect_base_value1` = '-500' WHERE `id` = 982;
--	(Cazic Touch II)
UPDATE `peq`.`spells_new` SET `effect_base_value1` = '-500' WHERE `id` = 7477;
--  (Touch of Vinitras) 2859 
UPDATE `peq`.`spells_new` SET `effect_base_value1` = '-500' WHERE `id` = 2859;

-- Banishments
-- ------------
-- Disable banish aspect from 1164, 'Crusader's Banishment' in Skyfire
REPLACE INTO `spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (1164, 'Crusader\'s Banishment', 'PLAYER_1', 'skyshrine', '', '', 'You have been banished.', ' has been banished.', 'The portal shimmers and fades.', 100, 0, 0, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2522, 2079, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 5, 0, 52, -1, 24, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 43, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 4, 39, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);
-- Remove banish aspect from Trakanon (89154) Trakanon's Touch (855)
REPLACE INTO `spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (855, 'Trakanon\'s Touch', 'PLAYER_1', 'sebilis', '', '', 'You have been teleported.', ' creates a mystic portal.', 'The portal shimmers and fades.', 100, 0, 0, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2522, 2079, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 5, 0, 52, -1, 24, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 43, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 161, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 4, 39, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);
-- Remove banish from the Praesertums in Sanctus Seru. In Irons (2786)
REPLACE INTO `spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (2786, 'In Irons', 'PLAYER_1', 'sseru', '', '', '', '', '', 100, 0, 0, 0, 2000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2522, 2079, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 5, 0, 5, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 44, 13, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 116, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 4, 39, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);


-- Dispel - Get rid of dispell effects on AE.  Help with raids on dragons. Might not be needed as bots seem to be unaffected by AE based speels both Detrimental and benefitial.
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	(Beholder dispel) 955
REPLACE INTO `peq`.`spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (955, 'Beholder Dispel', 'PLAYER_1', '', '', '', 'You feel very dispelled.', ' feels very dispelled.', '', 200, 30, 0, 0, 250, 0, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2521, 2122, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 8, 0, 4, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 42, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 161, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 4, 16, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);
--	(Frost Breath) 862
REPLACE INTO `peq`.`spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (862, 'Frost Breath', 'PLAYER_1', '', 'You spout frost.', ' spews forth a blast of frost.', 'Your body freezes as the frost hits you.', '\'s body freezes as the frost hits them.', '', 300, 200, 0, 0, 0, 0, 12000, 0, 0, 5, 0, -500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2515, 2030, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 8, 0, 0, 3, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 8, 0, 52, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 44, 13, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 56, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 14, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 3, 19, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);
--	(Frost Breath) 1942
REPLACE INTO `peq`.`spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (1942, 'Frost Breath', 'PLAYER_1', '', 'You spout frost.', ' spews forth a blast of frost.', 'Your body freezes as the frost hits you.', '\'s body freezes as the frost hits them.', '', 300, 200, 0, 0, 0, 0, 12000, 0, 0, 5, 0, -250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2515, 2030, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 8, 0, 0, 3, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 8, 0, 52, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 44, 13, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 56, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 14, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 3, 19, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);
--	(Silver Breath) 1480
REPLACE INTO `peq`.`spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (1480, 'Silver Breath', 'PLAYER_1', '', '', ' arches its back.', 'You feel your skin freeze.', '\'s skin freezes.', '', 0, 300, 0, 0, 0, 0, 12000, 0, 0, 0, 0, -400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2519, 2053, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 4, 0, 24, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 44, 13, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 153, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 3, 19, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);
--	(Lava Breath) 1941
REPLACE INTO `spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (1941, 'Lava Breath', 'PLAYER_1', '', 'You spout lava.', ' spews forth a gout of lava.', 'Your body combusts as the lava hits you.', '\'s body combusts as the lava hits them.', '', 300, 200, 0, 0, 0, 0, 12000, 0, 0, 5, 0, -250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2515, 2030, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 8, 0, 0, 2, 0, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 8, 0, 52, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 44, 13, 0, 61, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 51, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 38, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 3, 19, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);

-- Erudin - Changed heading from telepad, like on live, for monk safefall raise.
REPLACE INTO `zone_points` (`id`, `zone`, `version`, `number`, `y`, `x`, `z`, `heading`, `target_y`, `target_x`, `target_z`, `target_heading`, `zoneinst`, `target_zone_id`, `target_instance`, `buffer`, `client_version_mask`) VALUES (1160, 'erudnext', 0, 1, 0, 0, 0, 0, -1410.7, -184.5, 38, 395, 0, 24, 0, 0, 4294967295);

-- HATE -- New hate spell for gaining aggro 1348 - For raids and managing bots.
REPLACE INTO `spells_new` (`id`, `name`, `player_1`, `teleport_zone`, `you_cast`, `other_casts`, `cast_on_you`, `cast_on_other`, `spell_fades`, `range`, `aoerange`, `pushback`, `pushup`, `cast_time`, `recovery_time`, `recast_time`, `buffdurationformula`, `buffduration`, `AEDuration`, `mana`, `effect_base_value1`, `effect_base_value2`, `effect_base_value3`, `effect_base_value4`, `effect_base_value5`, `effect_base_value6`, `effect_base_value7`, `effect_base_value8`, `effect_base_value9`, `effect_base_value10`, `effect_base_value11`, `effect_base_value12`, `effect_limit_value1`, `effect_limit_value2`, `effect_limit_value3`, `effect_limit_value4`, `effect_limit_value5`, `effect_limit_value6`, `effect_limit_value7`, `effect_limit_value8`, `effect_limit_value9`, `effect_limit_value10`, `effect_limit_value11`, `effect_limit_value12`, `max1`, `max2`, `max3`, `max4`, `max5`, `max6`, `max7`, `max8`, `max9`, `max10`, `max11`, `max12`, `icon`, `memicon`, `components1`, `components2`, `components3`, `components4`, `component_counts1`, `component_counts2`, `component_counts3`, `component_counts4`, `NoexpendReagent1`, `NoexpendReagent2`, `NoexpendReagent3`, `NoexpendReagent4`, `formula1`, `formula2`, `formula3`, `formula4`, `formula5`, `formula6`, `formula7`, `formula8`, `formula9`, `formula10`, `formula11`, `formula12`, `LightType`, `goodEffect`, `Activated`, `resisttype`, `effectid1`, `effectid2`, `effectid3`, `effectid4`, `effectid5`, `effectid6`, `effectid7`, `effectid8`, `effectid9`, `effectid10`, `effectid11`, `effectid12`, `targettype`, `basediff`, `skill`, `zonetype`, `EnvironmentType`, `TimeOfDay`, `classes1`, `classes2`, `classes3`, `classes4`, `classes5`, `classes6`, `classes7`, `classes8`, `classes9`, `classes10`, `classes11`, `classes12`, `classes13`, `classes14`, `classes15`, `classes16`, `CastingAnim`, `TargetAnim`, `TravelType`, `SpellAffectIndex`, `disallow_sit`, `deities0`, `deities1`, `deities2`, `deities3`, `deities4`, `deities5`, `deities6`, `deities7`, `deities8`, `deities9`, `deities10`, `deities11`, `deities12`, `deities13`, `deities14`, `deities15`, `deities16`, `field142`, `field143`, `new_icon`, `spellanim`, `uninterruptable`, `ResistDiff`, `dot_stacking_exempt`, `deleteable`, `RecourseLink`, `no_partial_resist`, `field152`, `field153`, `short_buff_box`, `descnum`, `typedescnum`, `effectdescnum`, `effectdescnum2`, `npc_no_los`, `field160`, `reflectable`, `bonushate`, `field163`, `field164`, `ldon_trap`, `EndurCost`, `EndurTimerIndex`, `IsDiscipline`, `field169`, `field170`, `field171`, `field172`, `HateAdded`, `EndurUpkeep`, `numhitstype`, `numhits`, `pvpresistbase`, `pvpresistcalc`, `pvpresistcap`, `spell_category`, `field181`, `field182`, `pcnpc_only_flag`, `cast_not_standing`, `can_mgb`, `nodispell`, `npc_category`, `npc_usefulness`, `MinResist`, `MaxResist`, `viral_targets`, `viral_timer`, `nimbuseffect`, `ConeStartAngle`, `ConeStopAngle`, `sneaking`, `not_extendable`, `field198`, `field199`, `suspendable`, `viral_range`, `songcap`, `field203`, `field204`, `no_block`, `field206`, `spellgroup`, `rank`, `field209`, `field210`, `CastRestriction`, `allowrest`, `InCombat`, `OutofCombat`, `field215`, `field216`, `field217`, `aemaxtargets`, `maxtargets`, `field220`, `field221`, `field222`, `field223`, `persistdeath`, `field225`, `field226`, `min_dist`, `min_dist_mod`, `max_dist`, `max_dist_mod`, `min_range`, `field232`, `field233`, `field234`, `field235`, `field236`) VALUES (1348, 'Piss Em Off', 'PLAYER_1', '', '', '', 'You flash your nuts.', '\'s is so fucking pissed off right now.', '', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2504, 2059, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 92, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 5, 0, 5, -1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 44, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 161, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2675, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, -99, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, -1, 0, 0, 0, 4, 48, -1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0);

INSERT INTO `peq`.`bot_spells_entries` (`id`, `npc_spells_id`, `spellid`, `type`, `minlevel`, `maxlevel`, `manacost`, `recast_delay`, `priority`, `resist_adjust`, `min_hp`, `max_hp`, `spell_name`) VALUES
-- Cleric group heals.
	(3000, 3002, 135, 2, 30, 44, -1, -1, 2, NULL, 0, 0, 'Word of Health'),
	(3001, 3002, 136, 2, 45, 51, -1, -1, 2, NULL, 0, 0, 'Word of Healing'),
	(3002, 3002, 1520, 2, 52, 56, -1, -1, 2, NULL, 0, 0, 'Word of Vigor'),
	(3003, 3002, 1521, 2, 57, 63, -1, -1, 2, NULL, 0, 0, 'Word of Restoration'),
	(3004, 3002, 3471, 2, 64, 68, -1, -1, 2, NULL, 0, 0, 'Word of Replenishment'),
	(3005, 3002, 5270, 2, 69, 255, -1, -1, 2, NULL, 0, 0, 'Word of Vivification'),
-- Cleric fast heals	
	(3006, 3002, 1518, 2, 51, 60, -1, -1, 2, NULL, 0, 0, 'Remedy'),
	(3007, 3002, 3465, 2, 61, 65, -1, -1, 2, NULL, 0, 0, 'Supernal Remedy'),
	(3008, 3002, 5251, 2, 66, 255, -1, -1, 2, NULL, 0, 0, 'Pious Remedy'),
-- Cleric regular heals
	(3009, 3002, 1519, 2, 53, 57, -1, -1, 2, NULL, 0, 0, 'Divine Light'),
	(3010, 3002, 2182, 2, 58, 62, -1, -1, 2, NULL, 0, 0, 'Ethereal Light'),
	(3011, 3002, 3480, 2, 63, 64, -1, -1, 2, NULL, 0, 0, 'Supernal Light'),
	(3012, 3002, 4880, 2, 65, 67, -1, -1, 2, NULL, 0, 0, 'Holy Light'),
	(3013, 3002, 5265, 2, 68, 69, -1, -1, 2, NULL, 0, 0, 'Pious Light'),
-- Shaman buffs.
	(3014, 3010, 167, 8, 32, 39, -1, -1, 10, NULL, 0, 0, 'Talisman of Tnarg'),
	(3015, 3010, 168, 8, 40, 45, -1, -1, 10, NULL, 0, 0, 'Talisman of Altuna'),
	(3016, 3010, 2525, 8, 46, 59, -1, -1, 10, NULL, 0, 0, 'Harnessing of Spirit'),
	(3017, 3010, 3388, 8, 63, 63, -1, -1, 11, NULL, 0, 0, 'Strength of the Diaku'),
	(3018, 3010, 3392, 8, 64, 64, -1, -1, 11, NULL, 0, 0, 'Talisman of the Diaku'),
	(3020, 3010, 1819, 8, 52, 255, -1, -1, 11, NULL, 0, 0, 'Primal Essence'),
	(3021, 3010, 2524, 8, 36, 255, -1, -1, 12, NULL, 0, 0, 'Spirit of BihLi'),
-- Shaman Healing
	(3019, 3010, 2435, 2, 58, 61, -1, -1, 2, NULL, 0, 0, 'Kraggs Mending');


-- ------------------------------------------------------------------------------------------------------------------
-- ARENA Changes ----------------------------------------=====-----------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Skill Bitches in Arena.  If casters can raise skills by casting, melees should have an option as well.  Need to tweak DPS so you can't AFK and have to put some work into it.  Need quest files for emotes.
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77500, '#Skill_Bitch', 'Perpetual PMS', 10, 1, 1, 7, 900000000, 0, 1, 0, 0, 0, 5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 30, 0, 0, 0, 10, 1, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 1, 50, 50, 50, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77501, 'Skill_Bitch', 'Nags Alot', 20, 4, 1, 7, 900000000, 0, 1, 0, 0, 0, 5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 150, 0, 0, 0, 10, 1, 250, 250, 250, 250, 250, 250, 250, 0, 0, 1, 0, 1, 150, 100, 150, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77502, 'Skill_Bitch', 'Too Needy', 30, 5, 1, 7, 900000000, 0, 1, 0, 0, 0, 5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 332, 0, 0, 0, 10, 1, 250, 250, 250, 250, 250, 250, 250, 0, 0, 1, 0, 1, 150, 150, 150, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77503, 'Skill_Bitch', 'Constantly Interrupting', 40, 6, 1, 7, 900000000, 0, 1, 0, 0, 0, 5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 332, 0, 0, 0, 10, 1, 250, 250, 250, 250, 250, 250, 250, 0, 0, 1, 0, 1, 150, 150, 150, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77504, 'Skill_Bitch', 'Moody', 50, 7, 1, 7, 900000000, 0, 1, 0, 0, 0, 5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 332, 0, 0, 0, 10, 1, 250, 250, 250, 250, 250, 250, 250, 0, 0, 1, 0, 1, 150, 150, 150, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77505, 'Skill_Bitch', 'Always Crying', 60, 8, 1, 7, 900000000, 0, 1, 0, 0, 0, 5, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 332, 0, 0, 0, 10, 1, 250, 250, 250, 250, 250, 250, 250, 0, 0, 1, 0, 1, 1500, 1500, 1500, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (77506, '', '', 60, 145, 1, 7, 900000000, 0, 2, 0, 0, 0, 2, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, -1, '', '6,1^7,1^13,1^14,1^15,1^16,1^17,1^21,1^24,1', 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 0, 16, 16, 16, 16, 16, 25, 100, 0, 0, 0, 332, 0, 0, 0, 10, 0, 250, 250, 250, 250, 250, 250, 250, 0, 0, 0, 0, 1, 1500, 1500, 1500, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);

INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358085, 382411, 'arena', 0, 87.673592, -679.993896, 49.384659, 255.000000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358087, 382413, 'arena', 0, 61.017666, -681.838989, 49.383518, 256.750000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358088, 382414, 'arena', 0, 73.868530, -681.260925, 49.384525, 255.000000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358089, 382415, 'arena', 0, 49.475674, -683.191528, 49.383835, 247.500000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358090, 382416, 'arena', 0, 34.583855, -683.614502, 49.382294, 255.000000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358091, 382417, 'arena', 0, 19.689959, -686.409546, 49.382778, 257.250000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358092, 382418, 'arena', 0, 87.340996, -679.658203, 49.384125, 253.250000, 1200, 0, 0, 0, 1, 1, 0);

INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382411, 77500, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382413, 77502, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382414, 77501, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382415, 77503, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382416, 77504, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382417, 77505, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382418, 77506, 100);

INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382411, 'arenaSkill Bitch0002048454', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382413, 'arenaSkill Bitch0022123313', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382414, 'arenaSkill Bitch0012128469', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382415, 'arenaSkill Bitch0032174532', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382416, 'arenaSkill Bitch0042207516', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382417, 'arenaSkill Bitch0052226391', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382418, 'arena00020459847', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);


-- ------------------------------------------------------------------------------------------------------------------
-- SHADOWHAVEN Changes ----------------------------------------=====-------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------

-- Shadowhaven Defiant Keymaster
UPDATE `peq`.`npc_types` SET `race` = 3, `lastname` = 'Key Master', `size` = 7 WHERE `id` = 150293;

-- Shadowhaven Defiant Door.
REPLACE INTO `peq`.`doors` (`id`, `doorid`, `zone`, `version`, `name`, `pos_y`, `pos_x`, `pos_z`, `heading`, `opentype`, `guild`, `lockpick`, `keyitem`, `nokeyring`, `triggerdoor`, `triggertype`, `disable_timer`, `doorisopen`, `door_param`, `dest_zone`, `dest_instance`, `dest_x`, `dest_y`, `dest_z`, `dest_heading`, `invert_state`, `incline`, `size`, `buffer`, `client_version_mask`, `is_ldon_door`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (9311, 80, 'shadowhaven', 0, 'FMDOOR301', -226.037, -256.396, -30.028, 128, 58, 0, -1, 500000, 0, 0, 0, 0, 0, -1, 'shadowhaven', 0, -265, -218, -23, 384, 0, 0, 100, 0, 4294967295, 0, 0, 0, NULL);

-- Shadownhaven key for Defiant Vendors.
INSERT INTO `peq`.`items` (`id`, `minstatus`, `Name`, `aagi`, `ac`, `accuracy`, `acha`, `adex`, `aint`, `artifactflag`, `asta`, `astr`, `attack`, `augrestrict`, `augslot1type`, `augslot1visible`, `augslot2type`, `augslot2visible`, `augslot3type`, `augslot3visible`, `augslot4type`, `augslot4visible`, `augslot5type`, `augslot5visible`, `augslot6type`, `augslot6visible`, `augtype`, `avoidance`, `awis`, `bagsize`, `bagslots`, `bagtype`, `bagwr`, `banedmgamt`, `banedmgraceamt`, `banedmgbody`, `banedmgrace`, `bardtype`, `bardvalue`, `book`, `casttime`, `casttime_`, `charmfile`, `charmfileid`, `classes`, `color`, `combateffects`, `extradmgskill`, `extradmgamt`, `price`, `cr`, `damage`, `damageshield`, `deity`, `delay`, `augdistiller`, `dotshielding`, `dr`, `clicktype`, `clicklevel2`, `elemdmgtype`, `elemdmgamt`, `endur`, `factionamt1`, `factionamt2`, `factionamt3`, `factionamt4`, `factionmod1`, `factionmod2`, `factionmod3`, `factionmod4`, `filename`, `focuseffect`, `fr`, `fvnodrop`, `haste`, `clicklevel`, `hp`, `regen`, `icon`, `idfile`, `itemclass`, `itemtype`, `ldonprice`, `ldontheme`, `ldonsold`, `light`, `lore`, `loregroup`, `magic`, `mana`, `manaregen`, `enduranceregen`, `material`, `herosforgemodel`, `maxcharges`, `mr`, `nodrop`, `norent`, `pendingloreflag`, `pr`, `procrate`, `races`, `range`, `reclevel`, `recskill`, `reqlevel`, `sellrate`, `shielding`, `size`, `skillmodtype`, `skillmodvalue`, `slots`, `clickeffect`, `spellshield`, `strikethrough`, `stunresist`, `summonedflag`, `tradeskills`, `favor`, `weight`, `UNK012`, `UNK013`, `benefitflag`, `UNK054`, `UNK059`, `booktype`, `recastdelay`, `recasttype`, `guildfavor`, `UNK123`, `UNK124`, `attuneable`, `nopet`, `updated`, `comment`, `UNK127`, `pointtype`, `potionbelt`, `potionbeltslots`, `stacksize`, `notransfer`, `stackable`, `UNK134`, `UNK137`, `proceffect`, `proctype`, `proclevel2`, `proclevel`, `UNK142`, `worneffect`, `worntype`, `wornlevel2`, `wornlevel`, `UNK147`, `focustype`, `focuslevel2`, `focuslevel`, `UNK152`, `scrolleffect`, `scrolltype`, `scrolllevel2`, `scrolllevel`, `UNK157`, `serialized`, `verified`, `serialization`, `source`, `UNK033`, `lorefile`, `UNK014`, `svcorruption`, `skillmodmax`, `UNK060`, `augslot1unk2`, `augslot2unk2`, `augslot3unk2`, `augslot4unk2`, `augslot5unk2`, `augslot6unk2`, `UNK120`, `UNK121`, `questitemflag`, `UNK132`, `clickunk5`, `clickunk6`, `clickunk7`, `procunk1`, `procunk2`, `procunk3`, `procunk4`, `procunk6`, `procunk7`, `wornunk1`, `wornunk2`, `wornunk3`, `wornunk4`, `wornunk5`, `wornunk6`, `wornunk7`, `focusunk1`, `focusunk2`, `focusunk3`, `focusunk4`, `focusunk5`, `focusunk6`, `focusunk7`, `scrollunk1`, `scrollunk2`, `scrollunk3`, `scrollunk4`, `scrollunk5`, `scrollunk6`, `scrollunk7`, `UNK193`, `purity`, `evoitem`, `evoid`, `evolvinglevel`, `evomax`, `clickname`, `procname`, `wornname`, `focusname`, `scrollname`, `dsmitigation`, `heroic_str`, `heroic_int`, `heroic_wis`, `heroic_agi`, `heroic_dex`, `heroic_sta`, `heroic_cha`, `heroic_pr`, `heroic_dr`, `heroic_fr`, `heroic_cr`, `heroic_mr`, `heroic_svcorrup`, `healamt`, `spelldmg`, `clairvoyance`, `backstabdmg`, `created`, `elitematerial`, `ldonsellbackrate`, `scriptfileid`, `expendablearrow`, `powersourcecapacity`, `bardeffect`, `bardeffecttype`, `bardlevel2`, `bardlevel`, `bardunk1`, `bardunk2`, `bardunk3`, `bardunk4`, `bardunk5`, `bardname`, `bardunk7`, `UNK214`, `UNK220`, `UNK221`, `heirloom`, `UNK223`, `UNK224`, `UNK225`, `UNK226`, `UNK227`, `UNK228`, `UNK229`, `UNK230`, `UNK231`, `UNK232`, `UNK233`, `UNK234`, `placeable`, `UNK236`, `UNK237`, `UNK238`, `UNK239`, `UNK240`, `UNK241`, `epicitem`) VALUES (500000, 0, 'Loot Whore Key', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0', 65535, 4278190080, '0', 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 591, 'IT63', 0, 33, 0, 0, 0, 0, 'Key of Swords', -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 65535, 0, 0, 0, 0, 200, 0, 1, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-12-05 09:40:08', '', 0, 0, 0, 0, 1, 0, 0, '', 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, NULL, '2016-03-20 04:35:36', NULL, '13THFLOOR', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, '00000000000000000000', 0, '', -1, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-11-28 21:42:57', 0, 70, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -256, 255, 0, 0, 0, 0, 0, 0, 0, 0);

-- Shadowhaven Defiant Merchants
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (150500, 'Baitlyn_Brock', 'Armor', 60, 1, 41, 1, 6000, 0, 0, 2, 0, 0, 6, 150, 150, 0, 150500, 0, 0, 0, 953, 0, 0, 12, 64, -1, '', NULL, 55, 0, 2, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.25, 12, 12, 12, 12, 12, 19, 10, 0, 1, 0, 139, 0, 0, -7, 33, 1, 109, 109, 109, 109, 109, 109, 109, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (150501, 'Corey_Slyfist', 'Weapons & Augments', 60, 4, 41, 1, 6000, 0, 0, 2, 0, 0, 6, 150, 150, 12338, 150501, 0, 0, 0, 953, 0, 0, 12, 64, -1, '', NULL, 55, 0, 2, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.25, 12, 12, 12, 12, 12, 19, 10, 0, 1, 0, 139, 0, 0, -7, 33, 1, 109, 109, 109, 109, 109, 109, 109, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (150502, 'Drogen_Denneth', 'Advanced Armor', 60, 1, 41, 1, 6000, 0, 0, 3, 0, 0, 6, 150, 150, 0, 150502, 0, 0, 0, 953, 0, 0, 12, 64, -1, '', NULL, 55, 0, 2, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.25, 12, 12, 12, 12, 12, 19, 10, 0, 1, 0, 139, 0, 0, -7, 33, 1, 109, 109, 109, 109, 109, 109, 109, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (150503, 'Cazmeth_Greenwell', 'Caster Trinkets', 60, 5, 41, 1, 6000, 0, 0, 12, 0, 0, 6, 150, 150, 0, 150503, 0, 0, 0, 953, 0, 0, 12, 64, -1, '', NULL, 55, 0, 2, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.25, 12, 12, 12, 12, 12, 19, 10, 0, 1, 0, 139, 0, 0, -7, 33, 1, 109, 109, 109, 109, 109, 109, 109, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (150504, 'Kulban_Greenwell', 'Melee Supplements', 60, 1, 41, 1, 6000, 0, 0, 1, 0, 0, 6, 150, 150, 0, 150504, 0, 0, 0, 953, 0, 0, 12, 64, -1, '', NULL, 55, 0, 2, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.25, 12, 12, 12, 12, 12, 19, 10, 0, 1, 0, 139, 0, 0, -7, 33, 1, 109, 109, 109, 109, 109, 109, 109, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`) VALUES (150505, 'Sly_Soqual', 'Deadly Potions', 60, 11, 41, 1, 6000, 0, 0, 1, 0, 0, 3.5, 150, 150, 0, 150505, 0, 0, 0, 953, 0, 0, 12, 64, -1, '', NULL, 55, 0, 2, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 1.25, 12, 12, 12, 12, 12, 19, 10, 0, 1, 0, 139, 0, 0, -7, 33, 1, 109, 109, 109, 109, 109, 109, 109, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);
INSERT INTO `peq`.`npc_types` (`id`, `name`, `lastname`, `level`, `race`, `class`, `bodytype`, `hp`, `mana`, `gender`, `texture`, `helmtexture`, `herosforgemodel`, `size`, `hp_regen_rate`, `mana_regen_rate`, `loottable_id`, `merchant_id`, `alt_currency_id`, `npc_spells_id`, `npc_spells_effects_id`, `npc_faction_id`, `adventure_template_id`, `trap_template`, `mindmg`, `maxdmg`, `attack_count`, `npcspecialattks`, `special_abilities`, `aggroradius`, `assistradius`, `face`, `luclin_hairstyle`, `luclin_haircolor`, `luclin_eyecolor`, `luclin_eyecolor2`, `luclin_beardcolor`, `luclin_beard`, `drakkin_heritage`, `drakkin_tattoo`, `drakkin_details`, `armortint_id`, `armortint_red`, `armortint_green`, `armortint_blue`, `d_melee_texture1`, `d_melee_texture2`, `ammo_idfile`, `prim_melee_type`, `sec_melee_type`, `ranged_type`, `runspeed`, `MR`, `CR`, `DR`, `FR`, `PR`, `Corrup`, `PhR`, `see_invis`, `see_invis_undead`, `qglobal`, `AC`, `npc_aggro`, `spawn_limit`, `attack_speed`, `attack_delay`, `findable`, `STR`, `STA`, `DEX`, `AGI`, `_INT`, `WIS`, `CHA`, `see_hide`, `see_improved_hide`, `trackable`, `isbot`, `exclude`, `ATK`, `Accuracy`, `Avoidance`, `slow_mitigation`, `version`, `maxlevel`, `scalerate`, `private_corpse`, `unique_spawn_by_name`, `underwater`, `isquest`, `emoteid`, `spellscale`, `healscale`, `no_target_hotkey`, `raid_target`, `armtexture`, `bracertexture`, `handtexture`, `legtexture`, `feettexture`, `light`, `walkspeed`, `peqid`, `unique_`, `fixed`, `ignore_despawn`, `show_name`, `untargetable`, `charm_ac`, `charm_min_dmg`, `charm_max_dmg`, `charm_attack_delay`, `charm_accuracy_rating`, `charm_avoidance_rating`, `charm_atk`, `skip_global_loot`, `rare_spawn`, `stuck_behavior`, `model`, `flymode`, `always_aggro`) VALUES (150506, 'Elwin_Razorfur', 'Magical Tonics', 60, 130, 41, 1, 50000, 0, 1, 2, 255, 0, 7, 0, 0, 0, 202293, 0, 0, 0, 0, 0, 0, 0, 0, -1, '', NULL, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'IT10', 28, 28, 7, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 75, 75, 75, 75, 80, 75, 75, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0);


INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358078, 382404, 'shadowhaven', 0, -298.574066, -197.622040, -25.835487, 245.500000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358079, 382405, 'shadowhaven', 0, -298.730560, -237.356857, -25.835487, 0.500000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358080, 382406, 'shadowhaven', 0, -318.556854, -218.779617, -25.835487, 128.750000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358081, 382407, 'shadowhaven', 0, -268.464081, -237.990143, -25.835485, 437.500000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358082, 382408, 'shadowhaven', 0, -268.743958, -201.016388, -25.835487, 326.500000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`) VALUES (358083, 382409, 'shadowhaven', 0, -316.376343, -207.762955, -25.835487, 139.750000, 1200, 0, 0, 0, 1, 1, 0);
INSERT INTO `peq`.`spawn2` (`id`, `spawngroupID`, `zone`, `version`, `x`, `y`, `z`, `heading`, `respawntime`, `variance`, `pathgrid`, `_condition`, `cond_value`, `enabled`, `animation`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (358093, 382419, 'shadowhaven', 0, -323.753540, -241.029282, -25.935488, 45.750000, 1200, 0, 0, 0, 1, 1, 0, 0, 0, NULL);

INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382404, 150500, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382405, 150501, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382406, 150502, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382407, 150504, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382408, 150503, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (382409, 150505, 100);
INSERT INTO `peq`.`spawnentry` (`spawngroupID`, `npcID`, `chance`, `condition_value_filter`) VALUES (382419, 150506, 100, 1);

INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382404, 'shadowhavenBaitlyn_Brock000146541297', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382405, 'shadowhavenCorey_Slyfist000147173470', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382406, 'shadowhavenDrogen_Denneth000147807235', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382407, 'shadowhavenKulban_Greenwell000147898235', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382408, 'shadowhavenCazmeth_Greenwell000147902032', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`) VALUES (382409, 'shadowhavenSly_Soqual000149123665', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100);
INSERT INTO `peq`.`spawngroup` (`id`, `name`, `spawn_limit`, `dist`, `max_x`, `min_x`, `max_y`, `min_y`, `delay`, `mindelay`, `despawn`, `despawn_timer`, `wp_spawns`) VALUES (382419, 'shadowhaven-Elwin_Razorfur000', 0, 0, 0, 0, 0, 0, 45000, 15000, 0, 100, 0);

-- Baitlyn_Brock
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 1, 50005, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 2, 50006, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 3, 50007, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 4, 50008, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 5, 50009, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 6, 50010, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 7, 50011, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 8, 50012, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 9, 50013, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 10, 50014, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 11, 50015, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 12, 50016, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 13, 50017, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 14, 50018, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 15, 50019, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 16, 50020, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 17, 50021, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 18, 50022, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 19, 50023, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 20, 50024, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 21, 50025, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 22, 50026, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 23, 50027, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 24, 50028, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 25, 50029, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 26, 50030, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 27, 50031, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 28, 50032, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 29, 50033, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 30, 50034, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 31, 50035, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 32, 50036, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 33, 50037, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 34, 50038, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 35, 50039, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 36, 50040, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 37, 50041, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 38, 50042, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 39, 50043, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 40, 50044, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 41, 50045, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 42, 50046, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 43, 50047, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 44, 50048, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 45, 50049, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 46, 50050, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 47, 50051, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 48, 50052, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 49, 50053, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 50, 50054, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 51, 50055, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 52, 50056, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 53, 50057, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 54, 50058, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 55, 50059, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 56, 50060, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 57, 50061, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 58, 50062, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 59, 50063, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 60, 50064, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 61, 50065, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 62, 50066, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 63, 50067, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 64, 50068, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 65, 50069, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 66, 50070, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 67, 50071, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 68, 50072, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 69, 50073, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 70, 50074, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 71, 50075, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 72, 50076, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 73, 50077, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 74, 50078, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 75, 50079, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 76, 50080, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 77, 50081, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 78, 50082, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 79, 50083, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 80, 50084, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 81, 50085, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 82, 50086, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 83, 50087, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 84, 50088, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 85, 50089, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 86, 50090, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 87, 50091, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 88, 50092, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 89, 50093, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 90, 50094, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 91, 50095, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 92, 50096, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 93, 50097, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 94, 50098, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 95, 50099, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 96, 50100, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 97, 50101, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 98, 50102, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 99, 50103, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 100, 50104, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 101, 50105, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 102, 50106, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 103, 50107, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 104, 50108, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 105, 50109, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 106, 50110, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 107, 50111, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 108, 50112, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 109, 50113, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 110, 50114, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 111, 50115, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 112, 50116, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 113, 50117, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 114, 50118, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 115, 50119, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 116, 50120, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 117, 50121, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 118, 50122, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 119, 50123, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 120, 50124, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 121, 50125, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 122, 50126, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 123, 50127, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 124, 50128, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 125, 50129, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 126, 50130, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 127, 50131, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 128, 50132, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 129, 50133, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 130, 50134, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 131, 50135, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 132, 50136, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 133, 50137, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 134, 50138, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 135, 50139, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 136, 50140, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 137, 50141, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 138, 50142, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 139, 50143, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 140, 50144, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 141, 50145, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 142, 50146, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 143, 50147, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 144, 50148, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 145, 50149, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 146, 50150, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 147, 50151, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 148, 50152, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 149, 50153, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 150, 50154, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 151, 50155, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 152, 50156, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 153, 50157, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 154, 50158, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 155, 50159, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 156, 50160, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 157, 50161, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 158, 50162, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 159, 50163, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 160, 50164, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 161, 50165, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 162, 50166, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 163, 50167, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 164, 50168, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 165, 50169, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 166, 50170, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 167, 50171, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 168, 50172, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 169, 50173, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 170, 50174, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 171, 50175, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 172, 50176, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 173, 50177, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150500, 174, 50178, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- Corey_Slyfist
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 1, 50500, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 2, 50501, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 3, 50502, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 4, 50503, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 5, 50504, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 6, 50505, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 7, 50506, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 8, 50507, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 9, 50508, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 10, 50509, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 11, 50510, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 12, 50511, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 13, 50512, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 14, 50513, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 15, 50514, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 16, 50515, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 17, 50516, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 18, 50517, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 19, 50518, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 20, 50519, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 21, 50520, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 22, 50521, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 23, 50522, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 24, 50523, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 25, 50524, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 26, 50525, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 27, 50526, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 28, 50527, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 29, 50528, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 30, 50529, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 31, 50530, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 32, 50531, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 33, 50532, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 34, 50533, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 35, 50534, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 36, 50535, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 37, 50536, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 38, 50537, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 39, 50540, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 40, 50541, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 41, 50542, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 42, 50543, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 43, 50544, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 44, 50545, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 45, 50546, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 46, 50547, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 47, 50548, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 48, 50549, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 49, 50550, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 50, 50551, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 51, 50552, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 52, 50553, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 53, 50554, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 54, 50555, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 55, 50556, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 56, 50557, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 57, 50558, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 58, 50559, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 59, 50560, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 60, 50561, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 61, 50562, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 62, 50563, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 63, 50564, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 64, 50565, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 65, 50566, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 66, 50567, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 67, 50568, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 68, 50569, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 69, 50570, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 70, 50571, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 71, 50572, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 72, 50573, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 73, 50574, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 74, 50575, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 75, 50576, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 76, 50577, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 77, 50578, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 78, 50579, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 79, 50580, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 80, 50581, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 81, 50582, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 82, 50583, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 83, 50584, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 84, 50585, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 85, 50586, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 86, 50587, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 87, 50588, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 88, 50589, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 89, 50590, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 90, 50591, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 91, 50592, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 92, 50593, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 93, 50594, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 94, 50595, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 95, 50596, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 96, 50597, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 97, 50598, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 98, 50599, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 99, 50600, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 100, 50601, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 101, 50602, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 102, 50603, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 103, 50604, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 104, 50605, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 105, 50606, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 106, 50607, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 107, 50608, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 108, 50609, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 109, 50610, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 110, 50611, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 111, 50612, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 112, 50613, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 113, 50614, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 114, 50615, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 115, 50616, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 116, 51712, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 117, 51713, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 118, 51714, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 119, 51715, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 120, 51716, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 121, 51717, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 122, 51718, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 123, 51719, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 124, 51720, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 125, 51721, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 126, 51722, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 127, 51723, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 128, 51724, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 129, 51725, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 130, 51726, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 131, 51727, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 132, 51728, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 133, 51729, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 134, 51730, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150501, 135, 51731, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- Drogen_Denneth
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 1, 50179, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 2, 50180, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 3, 50181, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 4, 50182, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 5, 50183, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 6, 50184, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 7, 50185, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 8, 50186, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 9, 50187, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 10, 50188, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 11, 50189, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 12, 50190, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 13, 50191, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 14, 50192, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 15, 50193, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 16, 50194, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 17, 50195, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 18, 50196, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 19, 50197, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 20, 50198, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 21, 50199, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 22, 50200, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 23, 50201, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 24, 50202, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 25, 50203, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 26, 50204, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 27, 50205, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 28, 50206, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 29, 50207, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 30, 50208, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 31, 50209, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 32, 50210, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 33, 50211, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150502, 34, 50212, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 1, 50310, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 2, 50311, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 3, 50312, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 4, 50313, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 5, 50314, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 6, 50315, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 7, 50316, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 8, 50317, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 9, 50318, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 10, 50319, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 11, 50330, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 12, 50331, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 13, 50332, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 14, 50333, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 15, 50334, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 16, 50335, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 17, 50336, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 18, 50337, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 19, 50338, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 20, 50339, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 21, 50350, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 22, 50351, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 23, 50352, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 24, 50353, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 25, 50354, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 26, 50355, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 27, 50356, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 28, 50357, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 29, 50358, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 30, 50359, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 31, 50370, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 32, 50371, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 33, 50372, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 34, 50373, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 35, 50374, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 36, 50375, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 37, 50376, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 38, 50377, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 39, 50378, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 40, 50379, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 41, 50390, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 42, 50391, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 43, 50392, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 44, 50393, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 45, 50394, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 46, 50395, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 47, 50396, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 48, 50397, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 49, 50398, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 50, 50399, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 51, 50411, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 52, 50412, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 53, 50413, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 54, 50414, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 55, 50415, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 56, 50416, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 57, 50417, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 58, 50418, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 59, 50419, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 60, 50420, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 61, 50432, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 62, 50433, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 63, 50434, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 64, 50435, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 65, 50436, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 66, 50437, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 67, 50438, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 68, 50439, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 69, 50440, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 70, 50441, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 71, 50421, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150503, 72, 50442, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 1, 50300, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 2, 50301, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 3, 50302, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 4, 50303, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 5, 50304, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 6, 50305, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 7, 50306, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 8, 50307, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 9, 50308, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 10, 50309, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 11, 50320, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 12, 50321, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 13, 50322, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 14, 50323, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 15, 50324, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 16, 50325, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 17, 50326, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 18, 50327, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 19, 50328, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 20, 50329, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 21, 50340, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 22, 50341, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 23, 50342, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 24, 50343, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 25, 50344, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 26, 50345, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 27, 50346, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 28, 50347, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 29, 50348, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 30, 50349, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 31, 50360, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 32, 50361, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 33, 50362, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 34, 50363, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 35, 50364, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 36, 50365, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 37, 50366, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 38, 50367, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 39, 50368, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 40, 50369, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 41, 50380, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 42, 50381, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 43, 50382, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 44, 50383, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 45, 50384, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 46, 50385, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 47, 50386, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 48, 50387, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 49, 50388, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 50, 50389, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 51, 50401, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 52, 50402, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 53, 50403, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 54, 50404, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 55, 50405, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 56, 50406, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 57, 50407, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 58, 50408, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 59, 50409, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 60, 50410, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 61, 50422, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 62, 50423, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 63, 50424, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 64, 50425, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 65, 50426, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 66, 50427, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 67, 50428, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 68, 50429, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 69, 50430, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150504, 70, 50431, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- Sly Soqual
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 1, 14211, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 2, 14445, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 3, 14514, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 4, 35921, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 5, 40650, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 6, 40651, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 7, 40680, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 8, 40681, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 9, 40682, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 10, 44501, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 11, 44502, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 12, 44503, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 13, 44504, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 14, 44505, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 15, 44506, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 16, 44507, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 17, 44508, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 18, 44509, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 19, 44510, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 20, 44511, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 21, 44512, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 22, 44516, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 23, 44517, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 24, 44518, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 25, 44519, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 26, 44520, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 27, 44521, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 28, 44522, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 29, 44523, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 30, 44524, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 31, 44525, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 32, 44526, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 33, 44527, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 34, 44531, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 35, 44532, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 36, 44533, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 37, 44534, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 38, 44535, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 39, 44536, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 40, 44537, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 41, 44538, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 42, 44539, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 43, 44540, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 44, 44541, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 45, 48083, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 46, 48084, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 47, 48085, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 48, 96420, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 49, 96421, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 50, 96422, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 51, 96423, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 52, 96424, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 53, 96425, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 54, 96426, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 55, 96427, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 56, 96428, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 57, 96429, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (150505, 58, 44542, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- Elwin Razerfur
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 1, 77779, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 2, 77780, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 3, 77781, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 4, 77782, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 5, 77783, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 6, 77789, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 7, 77790, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 8, 77791, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 9, 77792, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 10, 77793, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 11, 77799, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 12, 77800, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 13, 77801, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 14, 77802, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 15, 77803, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 16, 77809, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 17, 77810, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 18, 77811, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 19, 77812, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 20, 77813, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 21, 77819, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 22, 77820, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 23, 77821, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 24, 77822, -100, 0, 0, 65535, 100, 0, 0, NULL);
-- INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 25, 77823, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 26, 77784, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 27, 77785, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 28, 77786, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 29, 77794, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 30, 77795, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 31, 77796, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 32, 77804, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 33, 77805, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 34, 77806, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 35, 77814, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 36, 77815, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 37, 77816, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 38, 77824, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 39, 77825, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 40, 77826, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 41, 77827, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 42, 77787, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 43, 77797, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 44, 77807, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 45, 77817, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 46, 77808, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 47, 35932, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 48, 77828, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 49, 35933, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 50, 77788, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 51, 35931, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 52, 77798, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 53, 35930, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 54, 77818, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 55, 37870, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 56, 37871, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 57, 37872, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 58, 37873, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 59, 37878, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 60, 37874, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 61, 37875, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 62, 37876, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 63, 37877, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 64, 37879, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 65, 37880, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 66, 37883, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 67, 37884, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 68, 37885, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 69, 37886, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 70, 37891, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 71, 37887, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 72, 37888, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 73, 37889, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 74, 37890, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 75, 37892, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 76, 37893, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 77, 96440, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 78, 96441, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 79, 96442, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 80, 96443, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 81, 96448, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 82, 96444, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 83, 96445, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 84, 96446, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 85, 96447, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 86, 96449, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 87, 35927, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 88, 96430, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 89, 96431, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 90, 96432, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 91, 96433, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 92, 96438, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 93, 96434, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 94, 96435, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 95, 96436, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 96, 96437, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 97, 96439, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 98, 35924, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 99, 96400, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 100, 96401, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 101, 96402, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 102, 96403, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 103, 96408, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 104, 96404, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 105, 96405, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 106, 96406, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 107, 96407, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 108, 96409, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 109, 35915, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 110, 96410, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 111, 96411, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 112, 96412, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 113, 96413, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 114, 96418, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 115, 96414, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 116, 96415, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 117, 96416, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 118, 96417, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 119, 96419, -100, 0, 0, 65535, 100, 0, 0, NULL);
INSERT INTO `peq`.`merchantlist` (`merchantid`, `slot`, `item`, `faction_required`, `level_required`, `alt_currency_cost`, `classes_required`, `probability`, `min_expansion`, `max_expansion`, `content_flags`) VALUES (202293, 120, 35918, -100, 0, 0, 65535, 100, 0, 0, NULL);

-- Enable keyring for additional zones
UPDATE `peq`.`doors` SET `nokeyring` = 0 WHERE `zone` = 'charasis';
UPDATE `peq`.`doors` SET `nokeyring` = 0 WHERE `zone` = 'najena';
UPDATE `peq`.`doors` SET `nokeyring` = 0 WHERE `zone` = 'befallen';

-- REmoved lockpick requirement.  Need to add keys that drop in the zone instead.
-- UPDATE `peq`.`doors` SET `lockpick` = 0 WHERE `zone` = 'Chardok';

-- Remove weather from all zones
UPDATE `peq`.`zone` SET `rain_chance1` = 0 WHERE `rain_chance1` > 0;
UPDATE `peq`.`zone` SET `rain_chance2` = 0 WHERE `rain_chance2` > 0;
UPDATE `peq`.`zone` SET `rain_chance3` = 0 WHERE `rain_chance3` > 0;
UPDATE `peq`.`zone` SET `rain_chance4` = 0 WHERE `rain_chance4` > 0;
UPDATE `peq`.`zone` SET `snow_chance1` = 0 WHERE `snow_chance1` > 0;
UPDATE `peq`.`zone` SET `snow_chance2` = 0 WHERE `snow_chance2` > 0;
UPDATE `peq`.`zone` SET `snow_chance3` = 0 WHERE `snow_chance3` > 0;
UPDATE `peq`.`zone` SET `snow_chance4` = 0 WHERE `snow_chance4` > 0;

-- Increase OOC regen in all zones
--UPDATE `peq`.`zone` SET `fast_regen_hp` = 100 WHERE `fast_regen_hp` > 100;
--UPDATE `peq`.`zone` SET `fast_regen_mana` = 100 WHERE `fast_regen_mana` > 100;
--UPDATE `peq`.`zone` SET `fast_regen_endurance` = 100 WHERE `fast_regen_endurance` > 100;

-- Increase ZEM for LOIO - Shouldn't be a penalty.
UPDATE `peq`.`zone` SET `zone_exp_multiplier` = 1 WHERE `short_name` = 'lakeofillomen';

-- GM Commands -  Everyone deserves to search.
UPDATE `peq`.`command_settings` SET `access` = 1 WHERE `command` = 'itemsearch';

-- Allow melee to bind where casters can.
UPDATE `peq`.`zone` SET `canbind` = 2 WHERE `canbind` = 1;

-- Give most zones 24 hour light.  Doesn't appear to work.
UPDATE `peq`.`zone` SET `time_type` = 1 WHERE `time_type` = 0;

-- Pet graphic updates.  Currently id 552 elementalkin: Air and id 589 Minor Conjuration: Fire are broke.  552 is hard coded chanter pet and wont attack.  589 is a hard coded mount and won't attack.

UPDATE `peq`.`npc_types` SET `race` = 89, `gender` = 2, `texture` = 2, `size` = 2 WHERE `id` = 834;
UPDATE `peq`.`npc_types` SET `race` = 89, `gender` = 2, `texture` = 2, `size` = 2 WHERE `id` = 835;
UPDATE `peq`.`npc_types` SET `race` = 89, `gender` = 2, `texture` = 2, `size` = 2 WHERE `id` = 836;
UPDATE `peq`.`npc_types` SET `race` = 210, `gender` = 2, `texture` = 0, `size` = 5.2 WHERE `id` = 560;
UPDATE `peq`.`npc_types` SET `race` = 475, `gender` = 2, `texture` = 0, `size` = 4.8 WHERE `id` = 561;
UPDATE `peq`.`npc_types` SET `race` = 175, `gender` = 2, `texture` = 0, `size` = 4.5 WHERE `id` = 562;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 1, `size` = 5 WHERE `id` = 563;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 2, `size` = 5.3 WHERE `id` = 564;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 0, `size` = 5.5 WHERE `id` = 565;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 0, `size` = 5.6 WHERE `id` = 752;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 0, `size` = 5.7 WHERE `id` = 753;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 0, `size` = 5.8 WHERE `id` = 754;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 0, `size` = 5.9 WHERE `id` = 755;
UPDATE `peq`.`npc_types` SET `race` = 323, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 756;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7 WHERE `id` = 566;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.1 WHERE `id` = 804;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.2 WHERE `id` = 805;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.3 WHERE `id` = 806;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.4 WHERE `id` = 807;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.5 WHERE `id` = 808;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.6 WHERE `id` = 846;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 1, `size` = 7.7 WHERE `id` = 847;
UPDATE `peq`.`npc_types` SET `race` = 127, `gender` = 0, `texture` = 0, `size` = 2 WHERE `id` = 552;  -- Broke
UPDATE `peq`.`npc_types` SET `race` = 127, `gender` = 2, `texture` = 0, `size` = 2 WHERE `id` = 768;
UPDATE `peq`.`npc_types` SET `race` = 616, `gender` = 2, `texture` = 0, `size` = 1 WHERE `id` = 553;
UPDATE `peq`.`npc_types` SET `race` = 100, `gender` = 2, `texture` = 0, `size` = 3 WHERE `id` = 554;
UPDATE `peq`.`npc_types` SET `race` = 170, `gender` = 2, `texture` = 0, `size` = 4.2 WHERE `id` = 555;
UPDATE `peq`.`npc_types` SET `race` = 45, `gender` = 2, `texture` = 0, `size` = 4.5 WHERE `id` = 556;
UPDATE `peq`.`npc_types` SET `race` = 372, `gender` = 2, `texture` = 0, `size` = 3.8 WHERE `id` = 557;
UPDATE `peq`.`npc_types` SET `race` = 372, `gender` = 2, `texture` = 1, `size` = 4.2 WHERE `id` = 558;
UPDATE `peq`.`npc_types` SET `race` = 372, `gender` = 2, `texture` = 2, `size` = 4.5 WHERE `id` = 559;
UPDATE `peq`.`npc_types` SET `race` = 608, `gender` = 2, `texture` = 0, `size` = 4.5 WHERE `id` = 575;
UPDATE `peq`.`npc_types` SET `race` = 476, `gender` = 2, `texture` = 0, `size` = 5.5 WHERE `id` = 576;
UPDATE `peq`.`npc_types` SET `race` = 209, `gender` = 2, `texture` = 0, `size` = 5.3 WHERE `id` = 577;
UPDATE `peq`.`npc_types` SET `race` = 374, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 578;
UPDATE `peq`.`npc_types` SET `race` = 374, `gender` = 2, `texture` = 2, `size` = 6 WHERE `id` = 579;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 0, `size` = 6.5 WHERE `id` = 580;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 0, `size` = 6.6 WHERE `id` = 757;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 0, `size` = 6.7 WHERE `id` = 758;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 0, `size` = 6.8 WHERE `id` = 759;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 0, `size` = 6.9 WHERE `id` = 760;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 0, `size` = 7 WHERE `id` = 761;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 7.5 WHERE `id` = 581;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 7.6 WHERE `id` = 809;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 7.7 WHERE `id` = 810;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 7.8 WHERE `id` = 811;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 7.9 WHERE `id` = 812;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 8 WHERE `id` = 813;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 8.1 WHERE `id` = 848;
UPDATE `peq`.`npc_types` SET `race` = 670, `gender` = 2, `texture` = 1, `size` = 8.2 WHERE `id` = 849;
UPDATE `peq`.`npc_types` SET `race` = 585, `gender` = 2, `texture` = 0, `size` = 1.5 WHERE `id` = 567;
UPDATE `peq`.`npc_types` SET `race` = 585, `gender` = 2, `texture` = 0, `size` = 1.5 WHERE `id` = 767;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 0, `size` = 2.8 WHERE `id` = 568;
UPDATE `peq`.`npc_types` SET `race` = 578, `gender` = 2, `texture` = 0, `size` = 3 WHERE `id` = 569;
UPDATE `peq`.`npc_types` SET `race` = 647, `gender` = 2, `texture` = 0, `size` = 2.5 WHERE `id` = 570;
UPDATE `peq`.`npc_types` SET `race` = 641, `gender` = 2, `texture` = 0, `size` = 3 WHERE `id` = 571;
UPDATE `peq`.`npc_types` SET `race` = 17, `gender` = 2, `texture` = 0, `size` = 4.2 WHERE `id` = 572;
UPDATE `peq`.`npc_types` SET `race` = 608, `gender` = 2, `texture` = 8, `size` = 4.3 WHERE `id` = 573;
UPDATE `peq`.`npc_types` SET `race` = 608, `gender` = 2, `texture` = 9, `size` = 4.4 WHERE `id` = 574;
UPDATE `peq`.`npc_types` SET `race` = 17, `gender` = 2, `texture` = 1, `size` = 4 WHERE `id` = 590;
UPDATE `peq`.`npc_types` SET `race` = 608, `gender` = 2, `texture` = 5, `size` = 4 WHERE `id` = 591;
UPDATE `peq`.`npc_types` SET `race` = 608, `gender` = 2, `texture` = 6, `size` = 4.5 WHERE `id` = 592;
UPDATE `peq`.`npc_types` SET `race` = 17, `gender` = 2, `texture` = 4, `size` = 5 WHERE `id` = 593;
UPDATE `peq`.`npc_types` SET `race` = 212, `gender` = 2, `texture` = 0, `size` = 5.5 WHERE `id` = 594;
UPDATE `peq`.`npc_types` SET `race` = 477, `gender` = 2, `texture` = 0, `size` = 5.7 WHERE `id` = 595;
UPDATE `peq`.`npc_types` SET `race` = 477, `gender` = 2, `texture` = 0, `size` = 5.8 WHERE `id` = 762;
UPDATE `peq`.`npc_types` SET `race` = 477, `gender` = 2, `texture` = 0, `size` = 5.9 WHERE `id` = 763;
UPDATE `peq`.`npc_types` SET `race` = 477, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 764;
UPDATE `peq`.`npc_types` SET `race` = 477, `gender` = 2, `texture` = 0, `size` = 6.1 WHERE `id` = 765;
UPDATE `peq`.`npc_types` SET `race` = 477, `gender` = 2, `texture` = 0, `size` = 6.2 WHERE `id` = 766;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3 WHERE `id` = 596;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.1 WHERE `id` = 814;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.2 WHERE `id` = 815;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.3 WHERE `id` = 816;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.4 WHERE `id` = 817;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.5 WHERE `id` = 818;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.6 WHERE `id` = 850;
UPDATE `peq`.`npc_types` SET `race` = 303, `gender` = 2, `texture` = 0, `size` = 3.7 WHERE `id` = 851;
UPDATE `peq`.`npc_types` SET `race` = 447, `gender` = 2, `texture` = 0, `size` = 1.2 WHERE `id` = 582;
UPDATE `peq`.`npc_types` SET `race` = 447, `gender` = 2, `texture` = 0, `size` = 1.2 WHERE `id` = 770;
UPDATE `peq`.`npc_types` SET `race` = 431, `gender` = 2, `texture` = 2, `size` = 2.8 WHERE `id` = 583;
UPDATE `peq`.`npc_types` SET `race` = 651, `gender` = 2, `texture` = 0, `size` = 2.5 WHERE `id` = 584;
UPDATE `peq`.`npc_types` SET `race` = 650, `gender` = 2, `texture` = 0, `size` = 2.3 WHERE `id` = 585;
UPDATE `peq`.`npc_types` SET `race` = 650, `gender` = 2, `texture` = 1, `size` = 2.4 WHERE `id` = 586;
UPDATE `peq`.`npc_types` SET `race` = 651, `gender` = 2, `texture` = 1, `size` = 3.5 WHERE `id` = 587;
UPDATE `peq`.`npc_types` SET `race` = 651, `gender` = 2, `texture` = 2, `size` = 4 WHERE `id` = 588;
UPDATE `peq`.`npc_types` SET `race` = 673, `gender` = 2, `texture` = 1, `size` = 2.5 WHERE `id` = 589;  --Broke
UPDATE `peq`.`npc_types` SET `race` = 302, `gender` = 2, `texture` = 0, `size` = 4 WHERE `id` = 607;
UPDATE `peq`.`npc_types` SET `race` = 211, `gender` = 2, `texture` = 0, `size` = 4.5 WHERE `id` = 608;
UPDATE `peq`.`npc_types` SET `race` = 478, `gender` = 2, `texture` = 0, `size` = 4.2 WHERE `id` = 609;
UPDATE `peq`.`npc_types` SET `race` = 374, `gender` = 2, `texture` = 1, `size` = 4.5 WHERE `id` = 610;
UPDATE `peq`.`npc_types` SET `race` = 261, `gender` = 2, `texture` = 0, `size` = 5 WHERE `id` = 611;
UPDATE `peq`.`npc_types` SET `race` = 271, `gender` = 2, `texture` = 0, `size` = 4.3 WHERE `id` = 612;
UPDATE `peq`.`npc_types` SET `race` = 271, `gender` = 2, `texture` = 0, `size` = 4.4 WHERE `id` = 747;
UPDATE `peq`.`npc_types` SET `race` = 271, `gender` = 2, `texture` = 0, `size` = 4.5 WHERE `id` = 748;
UPDATE `peq`.`npc_types` SET `race` = 271, `gender` = 2, `texture` = 0, `size` = 4.6 WHERE `id` = 749;
UPDATE `peq`.`npc_types` SET `race` = 271, `gender` = 2, `texture` = 0, `size` = 4.7 WHERE `id` = 750;
UPDATE `peq`.`npc_types` SET `race` = 271, `gender` = 2, `texture` = 0, `size` = 4.8 WHERE `id` = 751;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 4.5 WHERE `id` = 613;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 4.6 WHERE `id` = 819;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 4.7 WHERE `id` = 820;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 4.8 WHERE `id` = 821;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 4.9 WHERE `id` = 822;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 5 WHERE `id` = 823;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 5.1 WHERE `id` = 852;
UPDATE `peq`.`npc_types` SET `race` = 698, `gender` = 2, `texture` = 0, `size` = 5.2 WHERE `id` = 853;
UPDATE `peq`.`npc_types` SET `race` = 585, `gender` = 2, `texture` = 1, `size` = 1.5 WHERE `id` = 599;
UPDATE `peq`.`npc_types` SET `race` = 585, `gender` = 2, `texture` = 1, `size` = 1.5 WHERE `id` = 769;
UPDATE `peq`.`npc_types` SET `race` = 547, `gender` = 2, `texture` = 3, `size` = 2.8 WHERE `id` = 600;
UPDATE `peq`.`npc_types` SET `race` = 145, `gender` = 2, `texture` = 2, `size` = 1.5 WHERE `id` = 601;
UPDATE `peq`.`npc_types` SET `race` = 608, `gender` = 2, `texture` = 3, `size` = 3 WHERE `id` = 602;
UPDATE `peq`.`npc_types` SET `race` = 465, `gender` = 2, `texture` = 0, `size` = 7 WHERE `id` = 603;
UPDATE `peq`.`npc_types` SET `race` = 465, `gender` = 2, `texture` = 1, `size` = 8 WHERE `id` = 604;
UPDATE `peq`.`npc_types` SET `race` = 315, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 605;
UPDATE `peq`.`npc_types` SET `race` = 165, `gender` = 2, `texture` = 0, `size` = 2 WHERE `id` = 606;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 3, `size` = 6 WHERE `id` = 634;
UPDATE `peq`.`npc_types` SET `race` = 224, `gender` = 1, `texture` = 0, `size` = 2.5 WHERE `id` = 617;
UPDATE `peq`.`npc_types` SET `race` = 367, `gender` = 2, `texture` = 4, `size` = 3.6 WHERE `id` = 618;
UPDATE `peq`.`npc_types` SET `race` = 70, `gender` = 1, `texture` = 0, `size` = 3.6 WHERE `id` = 619;
UPDATE `peq`.`npc_types` SET `race` = 367, `gender` = 2, `texture` = 2, `size` = 2.5 WHERE `id` = 614;
UPDATE `peq`.`npc_types` SET `race` = 471, `gender` = 0, `texture` = 0, `size` = 3.9 WHERE `id` = 620;
UPDATE `peq`.`npc_types` SET `race` = 471, `gender` = 1, `texture` = 0, `size` = 4.1 WHERE `id` = 621;
UPDATE `peq`.`npc_types` SET `race` = 224, `gender` = 0, `texture` = 0, `size` = 3.6 WHERE `id` = 622;
UPDATE `peq`.`npc_types` SET `race` = 368, `gender` = 2, `texture` = 0, `size` = 5.4 WHERE `id` = 623;
UPDATE `peq`.`npc_types` SET `race` = 367, `gender` = 2, `texture` = 3, `size` = 5.7 WHERE `id` = 624;
UPDATE `peq`.`npc_types` SET `race` = 485, `gender` = 2, `texture` = 0, `size` = 5 WHERE `id` = 625;
UPDATE `peq`.`npc_types` SET `race` = 485, `gender` = 2, `texture` = 0, `size` = 5 WHERE `id` = 902;
UPDATE `peq`.`npc_types` SET `race` = 576, `gender` = 2, `texture` = 1, `size` = 4.8 WHERE `id` = 626;
UPDATE `peq`.`npc_types` SET `race` = 576, `gender` = 2, `texture` = 1, `size` = 5 WHERE `id` = 903;
UPDATE `peq`.`npc_types` SET `race` = 491, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 627;
UPDATE `peq`.`npc_types` SET `race` = 491, `gender` = 2, `texture` = 0, `size` = 6.3 WHERE `id` = 904;
UPDATE `peq`.`npc_types` SET `race` = 606, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 628;
UPDATE `peq`.`npc_types` SET `race` = 606, `gender` = 2, `texture` = 0, `size` = 6.1 WHERE `id` = 905;
UPDATE `peq`.`npc_types` SET `race` = 606, `gender` = 2, `texture` = 0, `size` = 6.2 WHERE `id` = 907;
UPDATE `peq`.`npc_types` SET `race` = 606, `gender` = 2, `texture` = 0, `size` = 6.3 WHERE `id` = 906;
UPDATE `peq`.`npc_types` SET `race` = 70, `gender` = 0, `texture` = 0, `size` = 3 WHERE `id` = 615;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 629;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 0, `size` = 6.1 WHERE `id` = 908;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 0, `size` = 6.2 WHERE `id` = 909;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 0, `size` = 6.3 WHERE `id` = 910;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 0, `size` = 6.4 WHERE `id` = 911;
UPDATE `peq`.`npc_types` SET `race` = 719, `gender` = 2, `texture` = 0, `size` = 6.5 WHERE `id` = 912;
UPDATE `peq`.`npc_types` SET `race` = 362, `gender` = 2, `texture` = 0, `size` = 5 WHERE `id` = 630;
UPDATE `peq`.`npc_types` SET `race` = 362, `gender` = 2, `texture` = 0, `size` = 5.1 WHERE `id` = 913;
UPDATE `peq`.`npc_types` SET `race` = 362, `gender` = 2, `texture` = 0, `size` = 5.2 WHERE `id` = 914;
UPDATE `peq`.`npc_types` SET `race` = 362, `gender` = 2, `texture` = 0, `size` = 5.3 WHERE `id` = 915;
UPDATE `peq`.`npc_types` SET `race` = 362, `gender` = 2, `texture` = 0, `size` = 5.4 WHERE `id` = 916;
UPDATE `peq`.`npc_types` SET `race` = 362, `gender` = 2, `texture` = 0, `size` = 5.5 WHERE `id` = 917;
UPDATE `peq`.`npc_types` SET `race` = 270, `gender` = 2, `texture` = 0, `size` = 7 WHERE `id` = 631;
UPDATE `peq`.`npc_types` SET `race` = 270, `gender` = 2, `texture` = 0, `size` = 7.1 WHERE `id` = 918;
UPDATE `peq`.`npc_types` SET `race` = 270, `gender` = 2, `texture` = 0, `size` = 7.2 WHERE `id` = 919;
UPDATE `peq`.`npc_types` SET `race` = 270, `gender` = 2, `texture` = 0, `size` = 7.3 WHERE `id` = 920;
UPDATE `peq`.`npc_types` SET `race` = 270, `gender` = 2, `texture` = 0, `size` = 7.4 WHERE `id` = 921;
UPDATE `peq`.`npc_types` SET `race` = 270, `gender` = 2, `texture` = 0, `size` = 7.5 WHERE `id` = 922;
UPDATE `peq`.`npc_types` SET `race` = 85, `gender` = 2, `texture` = 0, `size` = 6 WHERE `id` = 663;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 6.5 WHERE `id` = 632;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 6.6 WHERE `id` = 789;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 6.7 WHERE `id` = 790;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 6.8 WHERE `id` = 791;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 6.9 WHERE `id` = 792;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 7 WHERE `id` = 793;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 7.1 WHERE `id` = 840;
UPDATE `peq`.`npc_types` SET `race` = 605, `gender` = 2, `texture` = 0, `size` = 7.2 WHERE `id` = 841;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 633;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 784;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 785;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 786;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 787;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 788;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 842;
UPDATE `peq`.`npc_types` SET `race` = 373, `gender` = 2, `texture` = 0, `size` = 8 WHERE `id` = 843;
UPDATE `peq`.`npc_types` SET `race` = 367, `gender` = 2, `texture` = 1, `size` = 3 WHERE `id` = 616;

-- Allow all races to be all classes
INSERT INTO `peq`.`char_create_combinations` (`allocation_id`, `race`, `class`, `deity`, `start_zone`, `expansions_req`) VALUES

-- Barbarians
     (2, 2, 11, 201, 45, 0),
     (2, 2, 14, 201, 45, 0),
     (2, 2, 13, 201, 45, 0),
     (2, 2, 12, 201, 45, 0),
     (2, 2, 14, 208, 394, 2048),
     (2, 2, 12, 208, 394, 2048),
     (2, 2, 13, 206, 394, 2048),
     (2, 2, 11, 201, 394, 2048),
     (2, 2, 13, 204, 394, 2048),
     (2, 2, 12, 207, 394, 2048),
     (2, 2, 11, 206, 394, 2048),
     (2, 2, 13, 201, 394, 2048),
     (2, 2, 14, 396, 394, 2048),
     (2, 2, 13, 208, 394, 2048),
     (2, 2, 14, 212, 394, 2048),
     (2, 2, 13, 207, 394, 2048),
     (2, 2, 14, 207, 394, 2048),
     (2, 2, 12, 212, 394, 2048),
     (2, 2, 12, 206, 394, 2048),
     (2, 2, 14, 206, 394, 2048),
     (2, 2, 12, 396, 394, 2048),
     (2, 2, 14, 204, 394, 2048),
     (2, 2, 12, 201, 394, 2048),
     (2, 2, 14, 201, 394, 2048),
     (2, 2, 12, 213, 394, 2048),
     (2, 2, 12, 204, 394, 2048),
     (2, 2, 13, 396, 394, 2048),
     (2, 2, 13, 212, 394, 2048),
     (2, 2, 14, 396, 1, 0),
     (2, 2, 14, 212, 1, 0),
     (2, 2, 12, 207, 1, 0),
     (2, 2, 13, 396, 1, 0),
     (2, 2, 13, 212, 1, 0),
     (2, 2, 12, 396, 1, 0),
     (2, 2, 12, 213, 1, 0),
     (2, 2, 14, 207, 1, 0),
     (2, 2, 13, 207, 1, 0),
     (2, 2, 12, 212, 1, 0),
     (3, 2, 8, 214, 394, 2048),
     (3, 2, 8, 215, 394, 2048),
     (3, 2, 8, 216, 394, 2048),
     (3, 2, 8, 396, 394, 2048),
     (3, 2, 2, 208, 394, 2048),
     (3, 2, 8, 211, 394, 2048),
     (3, 2, 8, 209, 394, 2048),
     (3, 2, 2, 201, 394, 2048),
     (3, 2, 2, 204, 394, 2048),
     (3, 2, 2, 206, 394, 2048),
     (3, 2, 2, 207, 394, 2048),
     (3, 2, 2, 212, 394, 2048),
     (3, 2, 3, 204, 394, 2048),
     (3, 2, 3, 207, 394, 2048),
     (3, 2, 3, 208, 394, 2048),
     (3, 2, 3, 212, 394, 2048),
     (3, 2, 4, 207, 394, 2048),
     (3, 2, 8, 213, 394, 2048),
     (3, 2, 4, 215, 394, 2048),
     (3, 2, 6, 207, 394, 2048),
     (3, 2, 6, 215, 394, 2048),
     (3, 2, 7, 210, 394, 2048),
     (3, 2, 7, 396, 394, 2048),
     (3, 2, 8, 202, 394, 2048),
     (3, 2, 8, 204, 394, 2048),
     (3, 2, 8, 205, 394, 2048),
     (3, 2, 8, 207, 394, 2048),
     (3, 2, 8, 208, 394, 2048),
     (3, 2, 8, 210, 394, 2048),
     (3, 2, 8, 212, 394, 2048),
     (3, 2, 4, 215, 3, 0),
     (3, 2, 4, 207, 3, 0),
     (3, 2, 8, 396, 1, 0),
     (3, 2, 3, 212, 2, 0),
     (3, 2, 3, 207, 1, 0),
     (3, 2, 8, 213, 1, 0),
     (3, 2, 2, 212, 2, 0),
     (3, 2, 8, 215, 1, 0),
     (3, 2, 8, 214, 1, 0),
     (3, 2, 7, 396, 2, 0),
     (3, 2, 2, 207, 1, 0),
     (3, 2, 8, 212, 1, 0),
     (3, 2, 8, 211, 1, 0),
     (3, 2, 8, 210, 1, 0),
     (3, 2, 8, 209, 1, 0),
     (3, 2, 8, 207, 1, 0),
     (3, 2, 8, 205, 1, 0),
     (3, 2, 8, 202, 1, 0),
     (3, 2, 8, 216, 1, 0),
     (3, 2, 6, 215, 3, 0),
     (3, 2, 6, 207, 3, 0),
     (3, 2, 2, 201, 45, 0),
     (4, 2, 5, 206, 394, 2048),
     (4, 2, 5, 201, 394, 2048),
     (4, 2, 5, 201, 45, 0),
-- Dark Elf
     (5, 6, 15, 203, 52, 4),
     (5, 6, 15, 206, 52, 4),
     (5, 6, 10, 208, 50, 16),
     (5, 6, 4, 216, 394, 2048),
     (5, 6, 6, 216, 394, 2048),
     (5, 6, 3, 208, 394, 2064),
     (5, 6, 15, 203, 394, 2052),
     (5, 6, 15, 206, 394, 2052),
     (5, 6, 10, 208, 394, 2064),
     (5, 6, 3, 208, 50, 16),
     (6, 6, 8, 216, 394, 2048),
     (9, 6, 16, 396, 49, 64),
     (9, 6, 7, 216, 394, 2048),
     (9, 6, 16, 396, 394, 2112),
-- Dwarf
     (13, 8, 6, 207, 19, 0),
     (13, 8, 10, 208, 50, 16),
     (13, 8, 6, 207, 394, 2048),
     (13, 8, 10, 208, 394, 2064),
     (14, 8, 5, 201, 55, 0),
     (14, 8, 15, 214, 29, 4),
     (14, 8, 15, 208, 29, 4),
     (14, 8, 5, 201, 394, 2048),
     (14, 8, 15, 214, 394, 2052),
     (14, 8, 15, 208, 394, 2052),
     (15, 8, 8, 396, 54, 0),
     (15, 8, 8, 205, 54, 0),
     (15, 8, 8, 204, 54, 0),
     (15, 8, 8, 202, 54, 0),
     (15, 8, 8, 216, 54, 0),
     (15, 8, 8, 208, 54, 0),
     (15, 8, 8, 210, 54, 0),
     (15, 8, 8, 209, 54, 0),
     (15, 8, 8, 207, 54, 0),
     (15, 8, 4, 207, 19, 0),
     (15, 8, 8, 214, 54, 0),
     (15, 8, 8, 213, 54, 0),
     (15, 8, 8, 212, 54, 0),
     (15, 8, 8, 211, 54, 0),
     (15, 8, 8, 215, 54, 0),
     (15, 8, 13, 396, 55, 0),
     (15, 8, 12, 396, 55, 0),
     (15, 8, 11, 201, 55, 0),
     (15, 8, 13, 202, 55, 0),
     (15, 8, 14, 396, 55, 0),
     (15, 8, 12, 202, 55, 0),
     (15, 8, 14, 202, 55, 0),
     (15, 8, 13, 201, 55, 0),
     (15, 8, 12, 213, 55, 0),
     (15, 8, 14, 201, 55, 0),
     (15, 8, 12, 201, 55, 0),
     (15, 8, 7, 210, 383, 1024),
     (15, 8, 8, 396, 394, 2048),
     (15, 8, 8, 209, 394, 2048),
     (15, 8, 4, 207, 394, 2048),
     (15, 8, 8, 216, 394, 2048),
     (15, 8, 8, 208, 394, 2048),
     (15, 8, 8, 207, 394, 2048),
     (15, 8, 8, 215, 394, 2048),
     (15, 8, 8, 214, 394, 2048),
     (15, 8, 8, 204, 394, 2048),
     (15, 8, 8, 213, 394, 2048),
     (15, 8, 8, 202, 394, 2048),
     (15, 8, 8, 212, 394, 2048),
     (15, 8, 7, 396, 394, 2048),
     (15, 8, 7, 210, 394, 2048),
     (15, 8, 8, 211, 394, 2048),
     (15, 8, 8, 205, 394, 2048),
     (15, 8, 8, 210, 394, 2048),
     (15, 8, 7, 396, 2, 0),
     (15, 8, 14, 202, 394, 2048),
     (15, 8, 11, 201, 394, 2048),
     (15, 8, 12, 201, 394, 2048),
     (15, 8, 13, 202, 394, 2048),
     (15, 8, 12, 213, 394, 2048),
     (15, 8, 12, 202, 394, 2048),
     (15, 8, 12, 396, 394, 2048),
     (15, 8, 14, 396, 394, 2048),
     (15, 8, 13, 201, 394, 2048),
     (15, 8, 13, 396, 394, 2048),
     (15, 8, 14, 201, 394, 2048),
-- Erudite
     (21, 3, 1, 201, 45, 0),
     (21, 3, 10, 214, 29, 0),
     (21, 3, 15, 208, 29, 4),
     (21, 3, 15, 214, 29, 4),
     (21, 3, 16, 396, 29, 64),
     (21, 3, 16, 211, 29, 64),
     (21, 3, 16, 214, 29, 64),
     (21, 3, 1, 206, 382, 1024),
     (21, 3, 1, 204, 382, 1024),
     (21, 3, 7, 210, 383, 1024),
     (21, 3, 8, 215, 382, 1024),
     (21, 3, 8, 216, 382, 1024),
     (21, 3, 8, 202, 382, 1024),
     (21, 3, 8, 396, 382, 1024),
     (21, 3, 8, 204, 382, 1024),
     (21, 3, 9, 396, 382, 1024),
     (21, 3, 8, 205, 382, 1024),
     (21, 3, 1, 211, 382, 1024),
     (21, 3, 8, 208, 382, 1024),
     (21, 3, 9, 206, 382, 1024),
     (21, 3, 9, 204, 382, 1024),
     (21, 3, 8, 209, 382, 1024),
     (21, 3, 8, 210, 382, 1024),
     (21, 3, 1, 396, 382, 1024),
     (21, 3, 8, 211, 382, 1024),
     (21, 3, 1, 208, 382, 1024),
     (21, 3, 8, 213, 382, 1024),
     (21, 3, 9, 205, 382, 1024),
     (21, 3, 8, 214, 382, 1024),
     (21, 3, 8, 216, 394, 2048),
     (21, 3, 7, 396, 394, 2048),
     (21, 3, 9, 207, 394, 2048),
     (21, 3, 8, 396, 394, 2048),
     (21, 3, 9, 201, 394, 2048),
     (21, 3, 8, 202, 394, 2048),
     (21, 3, 9, 204, 394, 2048),
     (21, 3, 8, 204, 394, 2048),
     (21, 3, 1, 206, 394, 2048),
     (21, 3, 9, 205, 394, 2048),
     (21, 3, 8, 205, 394, 2048),
     (21, 3, 9, 206, 394, 2048),
     (21, 3, 1, 208, 394, 2048),
     (21, 3, 8, 207, 394, 2048),
     (21, 3, 1, 204, 394, 2048),
     (21, 3, 1, 201, 394, 2048),
     (21, 3, 1, 212, 394, 2048),
     (21, 3, 1, 211, 394, 2048),
     (21, 3, 8, 209, 394, 2048),
     (21, 3, 9, 212, 394, 2048),
     (21, 3, 1, 396, 394, 2048),
     (21, 3, 8, 210, 394, 2048),
     (21, 3, 4, 216, 394, 2048),
     (21, 3, 6, 207, 394, 2048),
     (21, 3, 8, 208, 394, 2048),
     (21, 3, 9, 396, 394, 2048),
     (21, 3, 8, 212, 394, 2048),
     (21, 3, 1, 207, 394, 2048),
     (21, 3, 6, 215, 394, 2048),
     (21, 3, 8, 213, 394, 2048),
     (21, 3, 8, 215, 394, 2048),
     (21, 3, 7, 210, 394, 2048),
     (21, 3, 8, 214, 394, 2048),
     (21, 3, 8, 211, 394, 2048),
     (21, 3, 8, 205, 1, 0),
     (21, 3, 8, 207, 1, 0),
     (21, 3, 8, 209, 1, 0),
     (21, 3, 8, 210, 1, 0),
     (21, 3, 8, 211, 1, 0),
     (21, 3, 8, 213, 1, 0),
     (21, 3, 8, 214, 1, 0),
     (21, 3, 8, 215, 1, 0),
     (21, 3, 8, 216, 1, 0),
     (21, 3, 8, 396, 1, 0),
     (21, 3, 9, 201, 2, 0),
     (21, 3, 9, 205, 2, 0),
     (21, 3, 9, 207, 2, 0),
     (21, 3, 9, 212, 2, 0),
     (21, 3, 9, 396, 2, 0),
     (21, 3, 8, 212, 1, 0),
     (21, 3, 1, 207, 1, 0),
     (21, 3, 1, 211, 1, 0),
     (21, 3, 1, 212, 1, 0),
     (21, 3, 1, 396, 1, 0),
     (21, 3, 6, 207, 3, 0),
     (21, 3, 6, 215, 3, 0),
     (21, 3, 7, 396, 2, 0),
     (21, 3, 8, 202, 1, 0),
     (21, 3, 10, 214, 394, 2048),
     (21, 3, 15, 214, 394, 2052),
     (21, 3, 15, 208, 394, 2052),
     (21, 3, 16, 211, 394, 2112),
     (21, 3, 16, 214, 394, 2112),
     (21, 3, 16, 396, 394, 2112),
-- Gnome
     (27, 12, 4, 207, 19, 0),
     (27, 12, 6, 207, 19, 0),
     (27, 12, 6, 207, 394, 2048),
     (27, 12, 4, 207, 394, 2048),
     (27, 12, 15, 396, 155, 4),
     (27, 12, 10, 396, 155, 4),
     (27, 12, 15, 396, 394, 2052),
     (27, 12, 10, 396, 394, 2052),
     (28, 12, 7, 396, 2, 0),
     (28, 12, 8, 211, 54, 0),
     (28, 12, 8, 208, 54, 0),
     (28, 12, 8, 209, 54, 0),
     (28, 12, 8, 396, 54, 0),
     (28, 12, 8, 216, 54, 0),
     (28, 12, 8, 212, 54, 0),
     (28, 12, 8, 215, 54, 0),
     (28, 12, 8, 213, 54, 0),
     (28, 12, 8, 214, 54, 0),
     (28, 12, 8, 210, 54, 0),
     (28, 12, 8, 207, 54, 0),
     (28, 12, 8, 205, 54, 0),
     (28, 12, 8, 204, 54, 0),
     (28, 12, 8, 202, 54, 0),
     (28, 12, 7, 210, 383, 1024),
     (28, 12, 8, 209, 394, 2048),
     (28, 12, 8, 208, 394, 2048),
     (28, 12, 8, 216, 394, 2048),
     (28, 12, 8, 215, 394, 2048),
     (28, 12, 8, 214, 394, 2048),
     (28, 12, 8, 207, 394, 2048),
     (28, 12, 8, 213, 394, 2048),
     (28, 12, 8, 205, 394, 2048),
     (28, 12, 8, 212, 394, 2048),
     (28, 12, 8, 204, 394, 2048),
     (28, 12, 8, 211, 394, 2048),
     (28, 12, 8, 202, 394, 2048),
     (28, 12, 8, 210, 394, 2048),
     (28, 12, 7, 396, 394, 2048),
     (28, 12, 8, 396, 394, 2048),
     (28, 12, 7, 210, 394, 2048),
     (28, 12, 16, 396, 67, 64),
     (28, 12, 16, 396, 394, 2112),
-- Half Elf
     (31, 7, 14, 204, 62, 0),
     (31, 7, 14, 396, 62, 0),
     (31, 7, 14, 215, 62, 0),
     (31, 7, 14, 208, 62, 0),
     (31, 7, 14, 207, 62, 0),
     (31, 7, 14, 396, 394, 2048),
     (31, 7, 14, 215, 394, 2048),
     (31, 7, 14, 208, 394, 2048),
     (31, 7, 14, 207, 394, 2048),
     (31, 7, 14, 204, 394, 2048),
     (32, 7, 2, 215, 61, 0),
     (32, 7, 13, 204, 62, 0),
     (32, 7, 12, 396, 62, 0),
     (32, 7, 12, 215, 62, 0),
     (32, 7, 12, 213, 62, 0),
     (32, 7, 12, 208, 62, 0),
     (32, 7, 12, 207, 62, 0),
     (32, 7, 12, 204, 62, 0),
     (32, 7, 11, 201, 55, 0),
     (32, 7, 13, 396, 62, 0),
     (32, 7, 13, 215, 62, 0),
     (32, 7, 13, 208, 62, 0),
     (32, 7, 13, 207, 62, 0),
     (32, 7, 10, 208, 50, 16),
     (32, 7, 2, 215, 394, 2048),
     (32, 7, 12, 204, 394, 2048),
     (32, 7, 13, 215, 394, 2048),
     (32, 7, 13, 204, 394, 2048),
     (32, 7, 13, 207, 394, 2048),
     (32, 7, 13, 208, 394, 2048),
     (32, 7, 12, 208, 394, 2048),
     (32, 7, 12, 213, 394, 2048),
     (32, 7, 11, 201, 394, 2048),
     (32, 7, 12, 207, 394, 2048),
     (32, 7, 12, 215, 394, 2048),
     (32, 7, 13, 396, 394, 2048),
     (32, 7, 12, 396, 394, 2048),
     (32, 7, 10, 208, 394, 2064),
     (33, 7, 5, 201, 55, 0),
     (33, 7, 15, 214, 29, 4),
     (33, 7, 15, 208, 29, 4),
     (33, 7, 5, 201, 394, 2048),
     (33, 7, 15, 214, 394, 2052),
     (33, 7, 15, 208, 394, 2052),
     (35, 7, 16, 211, 29, 64),
     (35, 7, 16, 396, 29, 64),
     (35, 7, 16, 214, 29, 64),
     (35, 7, 7, 210, 383, 1024),
     (35, 7, 7, 396, 394, 2048),
     (35, 7, 7, 210, 394, 2048),
     (35, 7, 7, 396, 2, 0),
     (35, 7, 16, 214, 394, 2112),
     (35, 7, 16, 211, 394, 2112),
     (35, 7, 16, 396, 394, 2112),
-- Halfling
     (38, 11, 10, 208, 50, 16),
     (38, 11, 12, 202, 55, 0),
     (38, 11, 14, 201, 55, 0),
     (38, 11, 12, 201, 55, 0),
     (38, 11, 12, 396, 55, 0),
     (38, 11, 11, 201, 55, 0),
     (38, 11, 13, 202, 55, 0),
     (38, 11, 14, 396, 55, 0),
     (38, 11, 13, 396, 55, 0),
     (38, 11, 13, 201, 55, 0),
     (38, 11, 12, 213, 55, 0),
     (38, 11, 14, 202, 55, 0),
     (38, 11, 12, 201, 394, 2048),
     (38, 11, 11, 201, 394, 2048),
     (38, 11, 12, 202, 394, 2048),
     (38, 11, 14, 201, 394, 2048),
     (38, 11, 13, 201, 394, 2048),
     (38, 11, 12, 213, 394, 2048),
     (38, 11, 14, 396, 394, 2048),
     (38, 11, 14, 202, 394, 2048),
     (38, 11, 13, 396, 394, 2048),
     (38, 11, 13, 202, 394, 2048),
     (38, 11, 12, 396, 394, 2048),
     (38, 11, 10, 208, 394, 2064),
     (39, 11, 5, 201, 55, 0),
     (39, 11, 5, 201, 394, 2048),
     (40, 11, 15, 396, 155, 4),
     (40, 11, 15, 396, 394, 2052),
     (41, 11, 7, 396, 2, 0),
     (41, 11, 8, 208, 54, 0),
     (41, 11, 8, 202, 54, 0),
     (41, 11, 8, 204, 54, 0),
     (41, 11, 8, 205, 54, 0),
     (41, 11, 8, 207, 54, 0),
     (41, 11, 8, 210, 54, 0),
     (41, 11, 8, 211, 54, 0),
     (41, 11, 8, 212, 54, 0),
     (41, 11, 8, 213, 54, 0),
     (41, 11, 8, 214, 54, 0),
     (41, 11, 8, 215, 54, 0),
     (41, 11, 8, 216, 54, 0),
     (41, 11, 8, 396, 54, 0),
     (41, 11, 8, 209, 54, 0),
     (41, 11, 7, 210, 383, 1024),
     (41, 11, 8, 208, 394, 2048),
     (41, 11, 8, 209, 394, 2048),
     (41, 11, 8, 210, 394, 2048),
     (41, 11, 8, 211, 394, 2048),
     (41, 11, 8, 212, 394, 2048),
     (41, 11, 8, 213, 394, 2048),
     (41, 11, 8, 214, 394, 2048),
     (41, 11, 8, 215, 394, 2048),
     (41, 11, 8, 216, 394, 2048),
     (41, 11, 8, 396, 394, 2048),
     (41, 11, 8, 202, 394, 2048),
     (41, 11, 7, 210, 394, 2048),
     (41, 11, 7, 396, 394, 2048),
     (41, 11, 8, 204, 394, 2048),
     (41, 11, 8, 205, 394, 2048),
     (41, 11, 8, 207, 394, 2048),
     (41, 11, 16, 205, 67, 64),
     (41, 11, 16, 396, 67, 64),
     (41, 11, 16, 202, 67, 64),
     (41, 11, 16, 205, 394, 2112),
     (41, 11, 16, 396, 394, 2112),
     (41, 11, 16, 202, 394, 2112),
-- High Elf
     (43, 5, 4, 215, 54, 0),
     (43, 5, 6, 215, 54, 0),
     (43, 5, 15, 208, 29, 4),
     (43, 5, 15, 214, 29, 4),
     (43, 5, 10, 208, 50, 16),
     (43, 5, 4, 215, 394, 2048),
     (43, 5, 6, 215, 394, 2048),
     (43, 5, 6, 207, 394, 2048),
     (43, 5, 4, 207, 394, 2048),
     (43, 5, 4, 207, 3, 0),
     (43, 5, 6, 215, 3, 0),
     (43, 5, 6, 207, 3, 0),
     (43, 5, 4, 215, 3, 0),
     (43, 5, 15, 208, 394, 2052),
     (43, 5, 15, 214, 394, 2052),
     (43, 5, 10, 208, 394, 2064),
     (45, 5, 5, 201, 55, 0),
     (45, 5, 11, 201, 55, 0),
     (45, 5, 5, 201, 394, 2048),
     (45, 5, 11, 201, 394, 2048),
     (46, 5, 1, 209, 54, 0),
     (46, 5, 8, 211, 54, 0),
     (46, 5, 9, 205, 54, 0),
     (46, 5, 8, 210, 54, 0),
     (46, 5, 8, 209, 54, 0),
     (46, 5, 8, 214, 54, 0),
     (46, 5, 8, 205, 54, 0),
     (46, 5, 8, 202, 54, 0),
     (46, 5, 8, 213, 54, 0),
     (46, 5, 1, 211, 54, 0),
     (46, 5, 1, 201, 45, 0),
     (46, 5, 8, 396, 54, 0),
     (46, 5, 1, 396, 54, 0),
     (46, 5, 9, 396, 54, 0),
     (46, 5, 1, 215, 54, 0),
     (46, 5, 1, 214, 54, 0),
     (46, 5, 9, 215, 54, 0),
     (46, 5, 8, 216, 54, 0),
     (46, 5, 8, 215, 54, 0),
     (46, 5, 16, 214, 29, 64),
     (46, 5, 16, 211, 29, 64),
     (46, 5, 16, 396, 29, 64),
     (46, 5, 8, 211, 382, 1024),
     (46, 5, 1, 208, 382, 1024),
     (46, 5, 1, 396, 382, 1024),
     (46, 5, 8, 396, 382, 1024),
     (46, 5, 1, 204, 382, 1024),
     (46, 5, 8, 215, 382, 1024),
     (46, 5, 1, 211, 382, 1024),
     (46, 5, 8, 204, 382, 1024),
     (46, 5, 9, 205, 382, 1024),
     (46, 5, 8, 202, 382, 1024),
     (46, 5, 1, 209, 382, 1024),
     (46, 5, 8, 216, 382, 1024),
     (46, 5, 1, 214, 382, 1024),
     (46, 5, 8, 214, 382, 1024),
     (46, 5, 8, 213, 382, 1024),
     (46, 5, 8, 205, 382, 1024),
     (46, 5, 1, 206, 382, 1024),
     (46, 5, 8, 208, 382, 1024),
     (46, 5, 9, 204, 382, 1024),
     (46, 5, 8, 209, 382, 1024),
     (46, 5, 8, 210, 382, 1024),
     (46, 5, 9, 396, 382, 1024),
     (46, 5, 1, 396, 394, 2048),
     (46, 5, 1, 214, 394, 2048),
     (46, 5, 1, 212, 394, 2048),
     (46, 5, 1, 211, 394, 2048),
     (46, 5, 1, 209, 394, 2048),
     (46, 5, 1, 208, 394, 2048),
     (46, 5, 1, 207, 394, 2048),
     (46, 5, 1, 206, 394, 2048),
     (46, 5, 1, 204, 394, 2048),
     (46, 5, 1, 201, 394, 2048),
     (46, 5, 9, 212, 394, 2048),
     (46, 5, 8, 212, 394, 2048),
     (46, 5, 8, 213, 394, 2048),
     (46, 5, 8, 214, 394, 2048),
     (46, 5, 8, 215, 394, 2048),
     (46, 5, 8, 216, 394, 2048),
     (46, 5, 8, 396, 394, 2048),
     (46, 5, 9, 201, 394, 2048),
     (46, 5, 9, 204, 394, 2048),
     (46, 5, 9, 205, 394, 2048),
     (46, 5, 9, 207, 394, 2048),
     (46, 5, 9, 215, 394, 2048),
     (46, 5, 8, 210, 394, 2048),
     (46, 5, 8, 209, 394, 2048),
     (46, 5, 8, 208, 394, 2048),
     (46, 5, 8, 207, 394, 2048),
     (46, 5, 8, 205, 394, 2048),
     (46, 5, 8, 204, 394, 2048),
     (46, 5, 8, 202, 394, 2048),
     (46, 5, 7, 216, 394, 2048),
     (46, 5, 1, 215, 394, 2048),
     (46, 5, 9, 396, 394, 2048),
     (46, 5, 8, 211, 394, 2048),
     (46, 5, 8, 212, 1, 0),
     (46, 5, 9, 201, 2, 0),
     (46, 5, 8, 214, 1, 0),
     (46, 5, 1, 207, 1, 0),
     (46, 5, 8, 215, 1, 0),
     (46, 5, 8, 207, 1, 0),
     (46, 5, 8, 211, 1, 0),
     (46, 5, 8, 396, 1, 0),
     (46, 5, 9, 205, 2, 0),
     (46, 5, 1, 209, 1, 0),
     (46, 5, 1, 211, 1, 0),
     (46, 5, 8, 210, 1, 0),
     (46, 5, 9, 207, 2, 0),
     (46, 5, 8, 216, 1, 0),
     (46, 5, 8, 209, 1, 0),
     (46, 5, 9, 212, 2, 0),
     (46, 5, 1, 212, 1, 0),
     (46, 5, 1, 214, 1, 0),
     (46, 5, 8, 213, 1, 0),
     (46, 5, 9, 396, 2, 0),
     (46, 5, 1, 396, 1, 0),
     (46, 5, 8, 202, 1, 0),
     (46, 5, 8, 205, 1, 0),
     (46, 5, 16, 396, 394, 2112),
     (46, 5, 16, 211, 394, 2112),
     (46, 5, 16, 214, 394, 2112),
-- Human
     (48, 1, 10, 214, 29, 0),
     (48, 1, 10, 214, 394, 2048),
     (55, 1, 15, 208, 29, 4),
     (55, 1, 15, 214, 29, 4),
     (55, 1, 15, 214, 394, 2052),
     (55, 1, 15, 208, 394, 2052),
     (58, 1, 16, 211, 29, 64),
     (58, 1, 16, 396, 29, 64),
     (58, 1, 16, 214, 29, 64),
     (58, 1, 16, 211, 394, 2112),
     (58, 1, 16, 214, 394, 2112),
     (58, 1, 16, 396, 394, 2112),
-- Iksar
     (60, 128, 9, 206, 50, 16),
     (60, 128, 8, 216, 394, 2048),
     (60, 128, 9, 206, 394, 2064),
     (60, 128, 16, 216, 394, 2048),
     (61, 128, 12, 208, 50, 16),
     (61, 128, 13, 216, 394, 2048),
     (61, 128, 14, 216, 394, 2048),
     (61, 128, 12, 208, 394, 2064),
     (63, 128, 3, 208, 50, 16),
     (63, 128, 2, 208, 50, 16),
     (63, 128, 2, 206, 50, 16),
     (63, 128, 4, 216, 394, 2048),
     (63, 128, 6, 216, 394, 2048),
     (63, 128, 2, 208, 394, 2064),
     (63, 128, 2, 206, 394, 2064),
     (63, 128, 3, 208, 394, 2064),
-- Ogre
     (65, 10, 3, 208, 50, 16),
     (65, 10, 4, 216, 394, 2048),
     (65, 10, 3, 208, 394, 2064),
     (67, 10, 11, 206, 50, 16),
     (67, 10, 12, 208, 50, 16),
     (67, 10, 13, 216, 394, 2048),
     (67, 10, 14, 216, 394, 2048),
     (67, 10, 12, 208, 394, 2064),
     (67, 10, 11, 206, 394, 2064),
     (68, 10, 2, 206, 50, 16),
     (68, 10, 2, 208, 50, 16),
     (68, 10, 6, 216, 394, 2048),
     (68, 10, 2, 206, 394, 2064),
     (68, 10, 2, 208, 394, 2064),
-- Troll
     (70, 9, 3, 208, 50, 16),
     (70, 9, 4, 216, 394, 2048),
     (70, 9, 3, 208, 394, 2064),
     (71, 9, 9, 206, 50, 16),
     (71, 9, 7, 216, 394, 2048),
     (71, 9, 8, 216, 394, 2048),
     (71, 9, 9, 206, 394, 2064),
     (72, 9, 12, 208, 50, 16),
     (72, 9, 11, 206, 50, 16),
     (72, 9, 13, 216, 394, 2048),
     (72, 9, 14, 216, 394, 2048),
     (72, 9, 12, 208, 394, 2064),
     (72, 9, 11, 206, 394, 2064),
     (73, 9, 2, 208, 50, 16),
     (73, 9, 2, 206, 50, 16),
     (73, 9, 6, 216, 394, 2048),
     (73, 9, 2, 208, 394, 2064),
     (73, 9, 2, 206, 394, 2064),
-- Vah Shir
     (77, 130, 7, 216, 394, 2048),
     (79, 130, 6, 216, 394, 2048),
     (79, 130, 5, 216, 394, 2048),
     (79, 130, 4, 216, 394, 2048),
     (79, 130, 2, 216, 394, 2048),
     (79, 130, 3, 216, 394, 2048),
     (79, 130, 14, 216, 394, 2048),
     (79, 130, 11, 216, 394, 2048),
     (79, 130, 12, 216, 394, 2048),
     (79, 130, 13, 216, 394, 2048),
-- Wood Elf
     (82, 4, 14, 204, 62, 0),
     (82, 4, 12, 208, 62, 0),
     (82, 4, 14, 207, 62, 0),
     (82, 4, 12, 204, 62, 0),
     (82, 4, 13, 204, 62, 0),
     (82, 4, 11, 201, 55, 0),
     (82, 4, 12, 213, 62, 0),
     (82, 4, 12, 215, 62, 0),
     (82, 4, 12, 396, 62, 0),
     (82, 4, 13, 207, 62, 0),
     (82, 4, 14, 208, 62, 0),
     (82, 4, 14, 215, 62, 0),
     (82, 4, 14, 396, 62, 0),
     (82, 4, 12, 207, 62, 0),
     (82, 4, 13, 208, 62, 0),
     (82, 4, 13, 215, 62, 0),
     (82, 4, 13, 396, 62, 0),
     (82, 4, 10, 208, 50, 16),
     (82, 4, 13, 396, 394, 2048),
     (82, 4, 13, 215, 394, 2048),
     (82, 4, 13, 208, 394, 2048),
     (82, 4, 13, 207, 394, 2048),
     (82, 4, 13, 204, 394, 2048),
     (82, 4, 14, 207, 394, 2048),
     (82, 4, 12, 396, 394, 2048),
     (82, 4, 14, 208, 394, 2048),
     (82, 4, 14, 204, 394, 2048),
     (82, 4, 14, 215, 394, 2048),
     (82, 4, 12, 215, 394, 2048),
     (82, 4, 11, 201, 394, 2048),
     (82, 4, 12, 204, 394, 2048),
     (82, 4, 12, 213, 394, 2048),
     (82, 4, 12, 207, 394, 2048),
     (82, 4, 12, 208, 394, 2048),
     (82, 4, 14, 396, 394, 2048),
     (82, 4, 10, 208, 394, 2064),
     (83, 4, 2, 215, 61, 0),
     (83, 4, 3, 215, 61, 0),
     (83, 4, 3, 215, 394, 2048),
     (83, 4, 2, 215, 394, 2048),
     (84, 4, 15, 208, 29, 4),
     (84, 4, 15, 214, 29, 4),
     (84, 4, 16, 205, 67, 64),
     (84, 4, 16, 396, 67, 64),
     (84, 4, 16, 202, 67, 64),
     (84, 4, 7, 216, 394, 2048),
     (84, 4, 15, 208, 394, 2052),
     (84, 4, 15, 214, 394, 2052),
     (84, 4, 16, 205, 394, 2112),
     (84, 4, 16, 396, 394, 2112),
     (84, 4, 16, 202, 394, 2112),
     (85, 4, 5, 201, 55, 0),
     (85, 4, 5, 201, 394, 2048),
-- Froglok
     (87, 330, 13, 202, 55, 0),
     (87, 330, 13, 201, 55, 0),
     (87, 330, 13, 396, 55, 0),
     (87, 330, 14, 201, 55, 0),
     (87, 330, 14, 202, 55, 0),
     (87, 330, 14, 396, 55, 0),
     (87, 330, 13, 202, 394, 2048),
     (87, 330, 13, 201, 394, 2048),
     (87, 330, 13, 396, 394, 2048),
     (87, 330, 14, 201, 394, 2048),
     (87, 330, 14, 202, 394, 2048),
     (87, 330, 14, 396, 394, 2048),
     (89, 330, 8, 204, 54, 0),
     (89, 330, 8, 212, 54, 0),
     (89, 330, 8, 205, 54, 0),
     (89, 330, 8, 210, 54, 0),
     (89, 330, 8, 207, 54, 0),
     (89, 330, 8, 208, 54, 0),
     (89, 330, 8, 211, 54, 0),
     (89, 330, 8, 396, 54, 0),
     (89, 330, 8, 216, 54, 0),
     (89, 330, 8, 215, 54, 0),
     (89, 330, 8, 214, 54, 0),
     (89, 330, 8, 213, 54, 0),
     (89, 330, 8, 202, 54, 0),
     (89, 330, 8, 209, 54, 0),
     (89, 330, 7, 203, 106, 1),
     (89, 330, 16, 202, 67, 64),
     (89, 330, 16, 205, 67, 64),
     (89, 330, 16, 396, 67, 64),
     (89, 330, 8, 215, 394, 2048),
     (89, 330, 8, 216, 394, 2048),
     (89, 330, 8, 396, 394, 2048),
     (89, 330, 8, 210, 394, 2048),
     (89, 330, 8, 202, 394, 2048),
     (89, 330, 8, 204, 394, 2048),
     (89, 330, 8, 205, 394, 2048),
     (89, 330, 8, 207, 394, 2048),
     (89, 330, 8, 208, 394, 2048),
     (89, 330, 8, 209, 394, 2048),
     (89, 330, 8, 211, 394, 2048),
     (89, 330, 8, 212, 394, 2048),
     (89, 330, 8, 213, 394, 2048),
     (89, 330, 8, 214, 394, 2048),
     (89, 330, 7, 203, 394, 2059),
     (89, 330, 16, 202, 394, 2112),
     (89, 330, 16, 205, 394, 2112),
     (89, 330, 16, 396, 394, 2112),
     (91, 330, 4, 207, 19, 0),
     (91, 330, 6, 207, 19, 0),
     (91, 330, 6, 207, 394, 2048),
     (91, 330, 4, 207, 394, 2048),
     (91, 330, 15, 396, 155, 4),
     (91, 330, 15, 396, 394, 2052),
-- Drakkin
     (95, 522, 10, 216, 394, 2048),
     (100, 522, 15, 216, 394, 2048),
     (100, 522, 16, 216, 394, 2048),
-- Ogre
     (108, 10, 9, 206, 50, 16),
     (108, 10, 8, 216, 394, 2048),
     (108, 10, 7, 216, 394, 2048),
     (108, 10, 9, 206, 394, 2064);
	 
-- POK Spell Vendor - Add spell level ranges under the name.
UPDATE `peq`.`npc_types` SET `lastname` = 'Wizard Spells 1-25' WHERE `id` = 202174;
UPDATE `peq`.`npc_types` SET `lastname` = 'Wizard Spells 71-80' WHERE `id` = 202175;
UPDATE `peq`.`npc_types` SET `lastname` = 'Wizard Spells 61-70' WHERE `id` = 202176;
UPDATE `peq`.`npc_types` SET `lastname` = 'Wizard Spells 51-60' WHERE `id` = 202177;
UPDATE `peq`.`npc_types` SET `lastname` = 'Wizard Spells 26-50' WHERE `id` = 202178;

UPDATE `peq`.`npc_types` SET `lastname` = 'Shaman Spells 1-25' WHERE `id` = 202179;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shaman Spells 71-80' WHERE `id` = 202180;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shaman Spells 61-70' WHERE `id` = 202181;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shaman Spells 51-60' WHERE `id` = 202182;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shaman Spells 26-50' WHERE `id` = 202183;

UPDATE `peq`.`npc_types` SET `lastname` = 'Shadow Knight Spells 1-25' WHERE `id` = 202184;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shadow Knight Spells 71-80' WHERE `id` = 202185;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shadow Knight Spells 61-70' WHERE `id` = 202186;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shadow Knight Spells 51-60' WHERE `id` = 202187;
UPDATE `peq`.`npc_types` SET `lastname` = 'Shadow Knight Spells 26-50' WHERE `id` = 202188;

UPDATE `peq`.`npc_types` SET `lastname` = 'Ranger Spells 1-25' WHERE `id` = 202189;
UPDATE `peq`.`npc_types` SET `lastname` = 'Ranger Spells 71-80' WHERE `id` = 202190;
UPDATE `peq`.`npc_types` SET `lastname` = 'Ranger Spells 61-70' WHERE `id` = 202191;
UPDATE `peq`.`npc_types` SET `lastname` = 'Ranger Spells 51-60' WHERE `id` = 202192;
UPDATE `peq`.`npc_types` SET `lastname` = 'Ranger Spells 26-50' WHERE `id` = 202193;

UPDATE `peq`.`npc_types` SET `lastname` = 'Paladin Spells 1-25' WHERE `id` = 202194;
UPDATE `peq`.`npc_types` SET `lastname` = 'Paladin Spells 71-80' WHERE `id` = 202195;
UPDATE `peq`.`npc_types` SET `lastname` = 'Paladin Spells 61-70' WHERE `id` = 202196;
UPDATE `peq`.`npc_types` SET `lastname` = 'Paladin Spells 51-60' WHERE `id` = 202197;
UPDATE `peq`.`npc_types` SET `lastname` = 'Paladin Spells 26-50' WHERE `id` = 202198;

UPDATE `peq`.`npc_types` SET `lastname` = 'Necromancer Spells 1-25' WHERE `id` = 202199;
UPDATE `peq`.`npc_types` SET `lastname` = 'Necromancer Spells 71-80' WHERE `id` = 202200;
UPDATE `peq`.`npc_types` SET `lastname` = 'Necromancer Spells 61-70' WHERE `id` = 202201;
UPDATE `peq`.`npc_types` SET `lastname` = 'Necromancer Spells 51-60' WHERE `id` = 202202;
UPDATE `peq`.`npc_types` SET `lastname` = 'Necromancer Spells 26-50' WHERE `id` = 202203;

UPDATE `peq`.`npc_types` SET `lastname` = 'Magician Spells 1-25' WHERE `id` = 202204;
UPDATE `peq`.`npc_types` SET `lastname` = 'Magician Spells 71-80' WHERE `id` = 202205;
UPDATE `peq`.`npc_types` SET `lastname` = 'Magician Spells 61-70' WHERE `id` = 202206;
UPDATE `peq`.`npc_types` SET `lastname` = 'Magician Spells 51-60' WHERE `id` = 202207;
UPDATE `peq`.`npc_types` SET `lastname` = 'Magician Spells 26-50' WHERE `id` = 202208;

UPDATE `peq`.`npc_types` SET `lastname` = 'Enchanter Spells 1-25' WHERE `id` = 202209;
UPDATE `peq`.`npc_types` SET `lastname` = 'Enchanter Spells 71-80' WHERE `id` = 202210;
UPDATE `peq`.`npc_types` SET `lastname` = 'Enchanter Spells 61-70' WHERE `id` = 202211;
UPDATE `peq`.`npc_types` SET `lastname` = 'Enchanter Spells 51-60' WHERE `id` = 202212;
UPDATE `peq`.`npc_types` SET `lastname` = 'Enchanter Spells 26-50' WHERE `id` = 202213;

UPDATE `peq`.`npc_types` SET `lastname` = 'Druid Spells 1-25' WHERE `id` = 202214;
UPDATE `peq`.`npc_types` SET `lastname` = 'Druid Spells 71-80' WHERE `id` = 202215;
UPDATE `peq`.`npc_types` SET `lastname` = 'Druid Spells 61-70' WHERE `id` = 202216;
UPDATE `peq`.`npc_types` SET `lastname` = 'Druid Spells 51-60' WHERE `id` = 202217;
UPDATE `peq`.`npc_types` SET `lastname` = 'Druid Spells 26-50' WHERE `id` = 202218;

UPDATE `peq`.`npc_types` SET `lastname` = 'Cleric Spells 1-25' WHERE `id` = 202219;
UPDATE `peq`.`npc_types` SET `lastname` = 'Cleric Spells 71-80' WHERE `id` = 202220;
UPDATE `peq`.`npc_types` SET `lastname` = 'Cleric Spells 61-70' WHERE `id` = 202221;
UPDATE `peq`.`npc_types` SET `lastname` = 'Cleric Spells 51-60' WHERE `id` = 202222;
UPDATE `peq`.`npc_types` SET `lastname` = 'Cleric Spells 26-50' WHERE `id` = 202223;

UPDATE `peq`.`npc_types` SET `lastname` = 'Beastlord Spells 1-25' WHERE `id` = 202224;
UPDATE `peq`.`npc_types` SET `lastname` = 'Beastlord Spells 71-80' WHERE `id` = 202225;
UPDATE `peq`.`npc_types` SET `lastname` = 'Beastlord Spells 61-70' WHERE `id` = 202226;
UPDATE `peq`.`npc_types` SET `lastname` = 'Beastlord Spells 51-60' WHERE `id` = 202227;
UPDATE `peq`.`npc_types` SET `lastname` = 'Beastlord Spells 26-50' WHERE `id` = 202228;

UPDATE `peq`.`npc_types` SET `lastname` = 'Bard Songs 1-25' WHERE `id` = 202229;
UPDATE `peq`.`npc_types` SET `lastname` = 'Bard Songs 71-80' WHERE `id` = 202230;
UPDATE `peq`.`npc_types` SET `lastname` = 'Bard Songs 61-70' WHERE `id` = 202231;
UPDATE `peq`.`npc_types` SET `lastname` = 'Bard Songs 51-60' WHERE `id` = 202232;
UPDATE `peq`.`npc_types` SET `lastname` = 'Bard Songs 26-50' WHERE `id` = 202233;
