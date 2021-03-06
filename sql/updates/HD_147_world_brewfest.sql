-- Tapper Swindlekeg SAI
SET @ENTRY := 24711;
SET @SPELL_GROW := 50551;
SET @SPELL_DRINK := 50552;
SET @SPELL_FINISH := 50555;
SET @QUEST_DIRE_BREW := 12492;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,@QUEST_DIRE_BREW,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tapper Swindlekeg - On Quest Complete - Run Script"),
(@ENTRY*100+0,9,0,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 0"),
(@ENTRY*100+0,9,1,0,0,0,100,0,0,0,0,0,11,@SPELL_DRINK,0,0,0,0,0,0,1,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Cast Questgiver Tries Dire Brew"),
(@ENTRY*100+0,9,2,0,0,0,100,0,8500,8500,0,0,11,@SPELL_FINISH,0,0,0,0,0,0,1,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Cast Questgiver Finishes Drinking"),
(@ENTRY*100+0,9,3,0,0,0,100,0,0,0,0,0,28,@SPELL_GROW,0,0,0,0,0,0,1,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Remove Growth Aura"),
(@ENTRY*100+0,9,4,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 1"),
(@ENTRY*100+0,9,5,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 2"),
(@ENTRY*100+0,9,6,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 3");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Well time's money, and time's wasting! Let's have that drink...",12,0,100,1,0,0,"Tapper Swindlekeg"),
(@ENTRY,1,0,"Wow! This really greases the steamplugs!",12,0,100,1,0,0,"Tapper Swindlekeg"),
(@ENTRY,2,0,"If I were an honest goblin, I'd say this was the best beer of the festival...",12,0,100,1,0,0,"Tapper Swindlekeg"),
(@ENTRY,3,0,"Too bad Coren's dead. If I could buy that brew from him and resell it - watered down and rebottled under my own label, of course - I'd be rich!",12,0,100,1,0,0,"Tapper Swindlekeg"),
-- These three are used in areatrigger script
(@ENTRY,4,0,"Hey there, and welcome to Brewfest. Come in and have a drink or three!",12,1,100,3,0,0,"Tapper Swindlekeg"),
(@ENTRY,4,1,"What's up, friend? Welcome to the Brewfest Grounds! Now go buy some drinks!",12,1,100,3,0,0,"Tapper Swindlekeg"),
(@ENTRY,4,2,"Hey hey, it's another $r! Welcome to my annual Brewfest celebration... now go feast and drink some!",12,1,100,3,0,0,"Tapper Swindlekeg");

-- Ipfelkofer Ironkeg SAI
SET @ENTRY := 24710;
SET @SPELL_GROW := 50551;
SET @SPELL_DRINK := 50552;
SET @SPELL_FINISH := 50555;
SET @QUEST_DIRE_BREW := 12491;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,@QUEST_DIRE_BREW,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Quest Complete - Run Script"),
(@ENTRY*100+0,9,0,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 0"),
(@ENTRY*100+0,9,1,0,0,0,100,0,0,0,0,0,11,@SPELL_DRINK,0,0,0,0,0,0,1,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Cast Questgiver Tries Dire Brew"),
(@ENTRY*100+0,9,2,0,0,0,100,0,8500,8500,0,0,11,@SPELL_FINISH,0,0,0,0,0,0,1,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Cast Questgiver Finishes Drinking"),
(@ENTRY*100+0,9,3,0,0,0,100,0,0,0,0,0,28,@SPELL_GROW,0,0,0,0,0,0,1,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Remove Growth Aura"),
(@ENTRY*100+0,9,4,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 1"),
(@ENTRY*100+0,9,5,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 2"),
(@ENTRY*100+0,9,6,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 3");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Right! Let's try this so-called dire brew...",12,0,100,0,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,1,0,"Bronzebeard's beard! What a drink!",12,0,100,0,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,2,0,"$N, this beer... well, it might be the best of Brewfest!",12,0,100,15,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,3,0,"It is a shame Coren's Dire Brew can't quench more thirsting throats! It's blasphemy, I know, but I envy those Dark Iron dwarves!",12,0,100,274,0,0,"Ipfelkofer Ironkeg"),
-- These three are used in areatrigger script
(@ENTRY,4,0,"Ho there, and welcome to Brewfest!",12,7,100,3,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,4,1,"Hello, friend! Welcome to the Brewfest Grounds!",12,7,100,3,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,4,2,"Hail, good $c! Welcome to Ironforge's annual Brewfest celebration!",12,7,100,3,0,0,"Ipfelkofer Ironkeg");

-- Areatrigger scriptname
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (4829,4820);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4829,'at_brewfest'), -- Durotar
(4820,'at_brewfest'); -- Dun Morogh

-- [Q] [A/H] Catch the Wild Wolpertinger!

-- Wild Wolpertinger SAI
SET @ENTRY := 23487;
SET @SPELL_NET := 41621;
SET @SPELL_CREATE_ITEM := 41622;
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=`unit_flags`|512 WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=24.539537 WHERE `guid`=207045 AND `id`=@ENTRY; -- For some reason this one was spawned in air
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,8,0,100,0,@SPELL_NET,0,0,0,11,@SPELL_CREATE_ITEM,2,0,0,0,0,7,0,0,0,0,0,0,0,"Wild Wolpertinger - On Spellhit - Cast Create Stunned Wolpertinger Item"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wild Wolpertinger - On Spellhit - Forced Despawn");

-- [Q] [A/H] Pink Elekks On Parade

SET @SPELL_ELEKK_DISPERSION := 44654;
SET @SPELL_DRUNK_INVISIBILITY := 36440;

-- Converted this to SAI to make it work properly
DELETE FROM `creature_template_addon` WHERE `entry` IN (23530,23529,23528,23527,23507,23531);

-- Tirisfal Pink Elekk SAI
SET @ENTRY := 23530;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL_DRUNK_INVISIBILITY,0,2000,2000,11,@SPELL_DRUNK_INVISIBILITY,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tirisfal Pink Elekk - Drunk Invisibility (Pink) not present - Aura Drunk Invisibility (Pink)'),
(@ENTRY,0,1,2,8,0,100,0,@SPELL_ELEKK_DISPERSION,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Tirisfal Pink Elekk - On Spellhit - Give quest credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tirisfal Pink Elekk - On Spellhit - Forced Despawn");

-- Eversong Pink Elekk SAI
SET @ENTRY := 23531;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL_DRUNK_INVISIBILITY,0,2000,2000,11,@SPELL_DRUNK_INVISIBILITY,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Eversong Pink Elekk - Drunk Invisibility (Pink) not present - Aura Drunk Invisibility (Pink)'),
(@ENTRY,0,1,2,8,0,100,0,@SPELL_ELEKK_DISPERSION,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Eversong Pink Elekk - On Spellhit - Give quest credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Eversong Pink Elekk - On Spellhit - Forced Despawn");

-- Mulgore Pink Elekk SAI
SET @ENTRY := 23529;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL_DRUNK_INVISIBILITY,0,2000,2000,11,@SPELL_DRUNK_INVISIBILITY,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mulgore Pink Elekk - Drunk Invisibility (Pink) not present - Aura Drunk Invisibility (Pink)'),
(@ENTRY,0,1,2,8,0,100,0,@SPELL_ELEKK_DISPERSION,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mulgore Pink Elekk - On Spellhit - Give quest credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mulgore Pink Elekk - On Spellhit - Forced Despawn");

-- Elwynn Pink Elekk SAI
SET @ENTRY := 23507;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL_DRUNK_INVISIBILITY,0,2000,2000,11,@SPELL_DRUNK_INVISIBILITY,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Elwynn Pink Elekk - Drunk Invisibility (Pink) not present - Aura Drunk Invisibility (Pink)'),
(@ENTRY,0,1,2,8,0,100,0,@SPELL_ELEKK_DISPERSION,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elwynn Pink Elekk - On Spellhit - Give quest credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Elwynn Pink Elekk - On Spellhit - Forced Despawn");

-- Teldrassil Pink Elekk SAI
SET @ENTRY := 23527;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL_DRUNK_INVISIBILITY,0,2000,2000,11,@SPELL_DRUNK_INVISIBILITY,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Teldrassil Pink Elekk - Drunk Invisibility (Pink) not present - Aura Drunk Invisibility (Pink)'),
(@ENTRY,0,1,2,8,0,100,0,@SPELL_ELEKK_DISPERSION,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Teldrassil Pink Elekk - On Spellhit - Give quest credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Teldrassil Pink Elekk - On Spellhit - Forced Despawn");

-- Azuremyst Pink Elekk SAI
SET @ENTRY := 23528;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL_DRUNK_INVISIBILITY,0,2000,2000,11,@SPELL_DRUNK_INVISIBILITY,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Azuremyst Pink Elekk - Drunk Invisibility (Pink) not present - Aura Drunk Invisibility (Pink)'),
(@ENTRY,0,1,2,8,0,100,0,@SPELL_ELEKK_DISPERSION,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Azuremyst Pink Elekk - On Spellhit - Give quest credit"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Azuremyst Pink Elekk - On Spellhit - Forced Despawn");