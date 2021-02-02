local _setCallinStrength = missionCommands.addSubMenu('Set Call In Strength')
local _hostileModernAC = missionCommands.addSubMenu('Hostile Modern Aircraft')
local _hostileKoreaAC = missionCommands.addSubMenu('Hostile Korean Era Aircraft')
local _hostileWWIIAC = missionCommands.addSubMenu('Hostile WWII Era Aircraft')
local _hostileHeloAC = missionCommands.addSubMenu('Hostile Helicopters')
local commandDB = {}

local hostileACDB = {}
hostileACDB['mig23'] = {type = 'mig23', name = 'MiG-23MLD', group = 'Targets - AA Modern 1', flag = 201, units = {'m11', 'm12', 'm13', 'm14'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['m2000'] = {type = 'm2000', name = 'M2000-C', group = 'Targets - AA Modern 2', flag = 202, units = {'m21', 'm22', 'm23', 'm24'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['mig25'] = {type = 'mig25', name = 'MiG-25PD', group = 'Targets - AA Modern 3', flag = 203, units = {'m31', 'm32', 'm33', 'm34'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['f5'] = {type = 'f5', name = 'F-5E', group = 'Targets - AA Modern 4', flag = 204, units = {'m41', 'm42', 'm43', 'm44'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['f15'] = {type = 'f15', name = 'F-15C', group = 'Targets - AA Modern 5', flag = 205, units = {'m51', 'm52', 'm53', 'm54'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['f16'] = {type = 'f16', name = 'F-16C', group = 'Targets - AA Modern 6', flag = 206, units = {'m61', 'm62', 'm63', 'm64'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['f18'] = {type = 'f18', name = 'F/A-18C', group = 'Targets - AA Modern 7', flag = 207, units = {'m71', 'm72', 'm73', 'm74'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['mig29'] = {type = 'mig29', name = 'MiG-29S', group = 'Targets - AA Modern 8', flag = 208, units = {'m81', 'm82', 'm83', 'm84'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['mig31'] = {type = 'mig31', name = 'MiG-31', group = 'Targets - AA Modern 9', flag = 209, units = {'m91', 'm92', 'm93', 'm94'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['su33'] = {type = 'su33', name = 'Su-33', group = 'Targets - AA Modern 10', flag = 210, units = {'m101', 'm102', 'm103', 'm104'}, menu = _hostileModernAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['mig15'] = {type = 'mig15', name = 'MiG-15Bis', group = 'Targets - AA Korea 1', flag = 211, units = {'k11', 'k12', 'k13', 'k14'}, menu = _hostileKoreaAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['f86'] = {type = 'f86', name = 'F-86F', group = 'Targets - AA Korea 2', flag = 212, units = {'k21', 'k22', 'k23', 'k24'}, menu = _hostileKoreaAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['bf109'] = {type = 'bf109', name = 'Bf 109 K-4', group = 'Targets - AA WWII 1', flag = 221, units = {'w11', 'w12', 'w13', 'w14'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['p5125'] = {type = 'p5125', name = 'P-51D-25-NA', group = 'Targets - AA WWII 2', flag = 222, units = {'w21', 'w22', 'w23', 'w24'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['fw190'] = {type = 'fw190', name = 'Fw 190 D-9', group = 'Targets - AA WWII 3', flag = 223, units = {'w31', 'w32', 'w33', 'w34'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['p5130'] = {type = 'p5130', name = 'P-51D-30-NA', group = 'Targets - AA WWII 4', flag = 224, units = {'w41', 'w42', 'w43', 'w44'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['s9'] = {type = 's9', name = 'Spitfire LF Mk. IX', group = 'Targets - AA WWII 5', flag = 225, units = {'w51', 'w52', 'w53', 'w54'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['s9cw'] = {type = 's9cw', name = 'Spitfire LF Mk. IX CW', group = 'Targets - AA WWII 6', flag = 226, units = {'w61', 'w62', 'w63', 'w64'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['i16'] = {type = 'i16', name = 'I-16', group = 'Targets - AA WWII 7', flag = 227, units = {'w71', 'w72', 'w73', 'w74'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['fw190a8'] = {type = 'fw190a8', name = 'Fw 190 A-8', group = 'Targets - AA WWII 8', flag = 228, units = {'w81', 'w82', 'w83', 'w84'}, menu = _hostileWWIIAC, zones = {'Kill AI 1', 'Kill AI 2', 'Kill AI 3'}, menuState = true}
hostileACDB['mi8'] = {type = 'mi8', name = 'Mi-8MTV2', group = 'Targets - AA Helo 1', flag = 231, units = {'h11', 'h12', 'h13', 'h14'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['ah1'] = {type = 'ah1', name = 'AH-1W', group = 'Targets - AA Helo 2', flag = 232, units = {'h21', 'h22', 'h23', 'h24'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['ah64a'] = {type = 'ah64a', name = 'AH-64A', group = 'Targets - AA Helo 3', flag = 233, units = {'h31', 'h32', 'h33', 'h34'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['ah64d'] = {type = 'ah64d', name = 'AH-64D', group = 'Targets - AA Helo 4', flag = 234, units = {'h41', 'h42', 'h43', 'h44'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['uh1'] = {type = 'uh1', name = 'UH-1H', group = 'Targets - AA Helo 5', flag = 235, units = {'h51', 'h52', 'h53', 'h54'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['sa342mistral'] = {type = 'sa342mistal', name = 'SA342Mistral', group = 'Targets - AA Helo 6', flag = 236, units = {'h61', 'h62', 'h63', 'h64'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['mi24v'] = {type = 'mi24v', name = 'Mi-24V', group = 'Targets - AA Helo 7', flag = 237, units = {'h71', 'h72', 'h73', 'h74'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['mi28n'] = {type = 'mi28n', name = 'Mi-28N', group = 'Targets - AA Helo 8', flag = 238, units = {'h81', 'h82', 'h83', 'h84'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['sa342m'] = {type = 'sa342m', name = 'SA342M', group = 'Targets - AA Helo 9', flag = 239, units = {'h91', 'h92', 'h93', 'h94'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}
hostileACDB['sa342l'] = {type = 'sa342l', name = 'SA342L', group = 'Targets - AA Helo 10', flag = 240, units = {'h101', 'h102', 'h103', 'h104'}, menu = _hostileHeloAC, zones = {'Helo Kill AI 1'}, menuState = true}

droneACDB = {}
droneACDB['Helo'] = {name = 'AA Helo', group = 'Targets - AA Helo Drone'}
droneACDB['modern1'] = {name = 'AA Modern 1', group = 'Targets - AA Modern Drone 1'}
droneACDB['modern2'] = {name = 'AA Modern 2', group = 'Targets - AA Modern Drone 2'}
droneACDB['modern3'] = {name = 'AA Modern 3', group = 'Targets - AA Modern Drone 3'}
droneACDB['modern4'] = {name = 'AA Modern 4', group = 'Targets - AA Modern Drone 4'}
droneACDB['korea1'] = {name = 'AA WWII 1', group = 'Targets - AA WWII Drone 1'}
droneACDB['korea2'] = {name = 'AA WWII 2', group = 'Targets - AA WWII Drone 2'}
droneACDB['wwii1'] = {name = 'AA Helo', group = 'Targets - AA Helo Drone'}
droneACDB['wwii2'] = {name = 'AA Helo', group = 'Targets - AA Helo Drone'}

groundDB = {}
groundDB['static'] = {name = 'Static', group = 'Targets - Static',  zone = 'Zone - Static', static = true}
groundDB['sam'] = {name = 'SAM', group = 'Targets - SAMS',  zone = 'Zone - SAMS', static = false}
groundDB['soft'] = {name = 'Soft', group = 'Targets - Soft',  zone = 'Zone - Soft', static = false}
groundDB['larmor'] = {name = 'Light Armor', group = 'Targets - Light Armor',  zone = 'Zone - Light Armor', static = false}
groundDB['armor'] = {name = 'Armor', group = 'Targets - Armor',  zone = 'Zone - Armor', static = false}
groundDB['afac'] = {name = 'AFAC', group = 'Targets - AFAC',  zone = 'Zone - AFAC', static = false}
groundDB['ship'] = {name = 'Ship', group = 'Targets - Ship',  zone = 'Zone - Ship', static = false}

function setCallInStrength(strength)
    trigger.action.setUserFlag(199, strength)
    local msg = {}
    msg.text = "Calling in hostiles will spawn " .. strength .. " aircraft."
    msg.displayTime = 30
    msg.msgFor = {coa = {'all'}}
    mist.message.add(msg)
end

function spawnHostileAC(hostileAC)
    local msg = {}
    msg.text = "Spawning" .. hostileAC['name'] .. "'s"
    msg.displayTime = 30
    msg.msgFor = {coa = {'all'}}
    mist.message.add(msg)
    mist.respawnGroup(hostileAC['group'] , true)
    missionCommands.removeItem(commandDB[hostileAC['type']])
    hostileAC['menuState'] = false

    for index, unit in pairs(hostileAC['units']) do
      if index > trigger.misc.getUserFlag(199) then
        Unit.destroy(Unit.getByName(unit))
      end 
    end
end

for k, v in pairs(hostileACDB) do
  commandDB[v['type']] = missionCommands.addCommand(v['name'] .. "'s", v['menu'], spawnHostileAC, v)
  mist.flagFunc.units_in_zones{ 
    units = v['units'],
    zones = v['zones'],
    flag = v['flag'],
    toggle = true,
    zone_type = 'cylinder' 
  }
end

missionCommands.addCommand("Set Call In Strength to 1", _setCallinStrength, setCallInStrength, 1)
missionCommands.addCommand("Set Call In Strength to 2", _setCallinStrength, setCallInStrength, 2)
missionCommands.addCommand("Set Call In Strength to 3", _setCallinStrength, setCallInStrength, 3)
missionCommands.addCommand("Set Call In Strength to 4", _setCallinStrength, setCallInStrength, 4)
trigger.action.setUserFlag(199, 2)

function combat_respawn()
  for k, v in pairs(hostileACDB) do
    if trigger.misc.getUserFlag(v['flag']) > 0 then
      for j, u in pairs(v['units']) do
        if Unit.getByName(u) then
          Unit.getByName(u):destroy()
        end
      end
    end

    if (not Group.getByName(v['group']) and v['menuState'] == false) then
      commandDB[v['type']] = missionCommands.addCommand(v['name'] .. "'s", v['menu'], spawnHostileAC, v)
      v['menuState'] = true
    end
  end

  for k, v in pairs(droneACDB) do
    if not Group.getByName(v['group']) then
      local msg = {}
      msg.text = "Respawning" .. v['name'] .. "Drone Group."
      msg.displayTime = 30
      msg.msgFor = {coa = {'all'}}
      mist.message.add(msg)
      mist.respawnGroup(v['group'], true)
      local con = Group.getByName(v['group']):getController()
      con:setOption(AI.Option.Air.id.ROE, AI.Option.Air.val.ROE.WEAPON_HOLD)
      con:setOption(AI.Option.Air.id.RADAR_USING, AI.Option.Air.val.RADAR_USING.NEVER)
      con:setOption(AI.Option.Air.id.SILENCE, true)
      con:setOption(AI.Option.Air.id.REACTION_ON_THREAT, AI.Option.Air.val.REACTION_ON_THREAT.EVADE_FIRE)
    end
  end

  for k, v in pairs(groundDB) do
    if (not Group.getByName(v['group']) or Group.getByName(v['group']):getSize() == 0) then
      local msg = {}
      msg.text = "Respawning" ..  v['name'] .. "Range"
      msg.displayTime = 30
      msg.msgFor = {coa = {'all'}}
      mist.message.add(msg)
      mist.respawnInZone(v['group'], v['zone'])
      local con = Group.getByName(v['group']):getController()
      if v['static'] then
        con:setOption(AI.Option.Ground.id.ROE, AI.Option.Ground.val.ROE.WEAPON_HOLD)
      end
      con:setOption(AI.Option.Ground.id.DISPERSE_ON_ATTACK, false)
    end
  end
end

ctld.JTACAutoLase("AFAC", 1688, false, "all")
mist.scheduleFunction(combat_respawn, {}, timer.getTime() + 10, 60)