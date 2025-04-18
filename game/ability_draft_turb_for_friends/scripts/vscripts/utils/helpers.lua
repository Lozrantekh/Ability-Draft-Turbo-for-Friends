for _, listenerId in ipairs(registeredGameEventListeners or {}) do
	StopListeningToGameEvent(listenerId)
end
registeredGameEventListeners = {}
function RegisterGameEventListener(eventName, callback)
	local listenerId = ListenToGameEvent(eventName, callback, nil)
	table.insert(registeredGameEventListeners, listenerId)
end


function DisplayError(playerId, message)
	local player = PlayerResource:GetPlayer(playerId)
	if player then
		CustomGameEventManager:Send_ServerToPlayer(player, "display_custom_error", { message = message })
	end
end


function GetConnectionState(playerId)
	return PlayerResource:IsFakeClient(playerId) and DOTA_CONNECTION_STATE_CONNECTED or PlayerResource:GetConnectionState(playerId)
end


function GetPlayerIdBySteamId(id)
	for i = 0, 23 do
		if PlayerResource:IsValidPlayerID(i) and tostring(PlayerResource:GetSteamID(i)) == id then
			return i
		end
	end

	return -1
end


function FindTalentValue(abilityKV,sTalentName)
	local specialVal = GetAbilityKeyValuesByName(sTalentName)
	for l, m in pairs(specialVal or {}) do
		if m["value"] then
			return m["value"]
		end
	end
	return nil
end


function IsValidAlive(entity)
	return entity and IsValidEntity(entity) and not entity:IsNull() and entity:IsAlive()
end


function ListModifiers(unit)
	if not unit then
		print('Failed to find unit to list modifiers.')
		return
	end

	print('Modifiers for ' .. unit:GetUnitName())

	local count = unit:GetModifierCount()
	for i = 0, count - 1 do
		print(unit:GetModifierNameByIndex(i))
	end
end


function RemoveAllAbilities(hero)
	if IsValidEntity(hero) then
		for i = 1, 24 do
			local ability = hero:GetAbilityByIndex(i - 1)
			if ability then
				hero:RemoveAbility(ability:GetAbilityName())
			end
		end
	end
end


function ListAbilities(hero)
	if IsValidEntity(hero) then
		for i = 1, 20 do
			local hAbility = hero:GetAbilityByIndex(i - 1)
			if hAbility and string.sub(hAbility:GetAbilityName(), 1, 14) ~= "special_bonus_"  then
				print(hAbility:GetAbilityName() .. ":" .. hAbility:GetLevel())
			end
		end
	end
end


function GetDirectoryFromPath(path)
	return path:match("(.*[/\\])")
end


function ModuleRequire(this, fileName)
	return require(GetDirectoryFromPath(this) .. fileName)
end


function UnhideAbilities(hero)
	if IsValidEntity(hero) then
		for i = 1, 20 do
			local hAbility = hero:GetAbilityByIndex(i - 1)
			if hAbility and string.sub(hAbility:GetAbilityName(), 1, 14) ~= "special_bonus_" then
			   hAbility:SetHidden(false)
			end
		end
	end
end


function RemoveAllItems(unit)
	for i = 0, 11 do 
		local item = unit:GetItemInSlot(i)
		if item then
			UTIL_Remove(item)
		end
	end
end


function RemoveAllGenericHiddenAbilities(hero)
	while (hero:HasAbility("generic_hidden"))
	do
		hero:RemoveAbility("generic_hidden")
	end
end

-- https://www.desmos.com/calculator/qs5l48xrx2
-- min is the minimum value, period is the distance between minimum and maximum, max is the maximum value, x is just a constant along the curve
-- works for any values of min and max
function CosWave(min, period, max, x)
		if x < 0 then
		return min
	elseif x > period then
		return min + max
	else
		return min + (max / 2) * (1 + math.cos((x - period) * math.pi / period))
	end
end

---@type table<string, string>
local summon_corresponded_ability = {
	npc_dota_lycan_wolf1 = "lycan_summon_wolves_lua",
	npc_dota_lycan_wolf2 = "lycan_summon_wolves_lua",
	npc_dota_lycan_wolf3 = "lycan_summon_wolves_lua",
	npc_dota_lycan_wolf4 = "lycan_summon_wolves_lua",
	npc_dota_beastmaster_hawk = "beastmaster_call_of_the_wild_hawk",
	npc_dota_beastmaster_hawk_1 = "beastmaster_call_of_the_wild_hawk",
	npc_dota_beastmaster_hawk_2 = "beastmaster_call_of_the_wild_hawk",
	npc_dota_beastmaster_hawk_3 = "beastmaster_call_of_the_wild_hawk",
	npc_dota_beastmaster_hawk_4 = "beastmaster_call_of_the_wild_hawk",
	npc_dota_beastmaster_boar = "beastmaster_call_of_the_wild_boar",
	npc_dota_beastmaster_greater_boar = "beastmaster_call_of_the_wild_boar",
	npc_dota_invoker_forged_spirit = "invoker_forge_spirit_ad_lua",
	npc_dota_furion_treant = "furion_force_of_nature",
	npc_dota_visage_familiar1 = "visage_summon_familiars",
	npc_dota_visage_familiar2 = "visage_summon_familiars",
	npc_dota_visage_familiar3 = "visage_summon_familiars",
	npc_dota_witch_doctor_death_ward = "witch_doctor_death_ward",
	npc_dota_wraith_king_skeleton_warrior = "skeleton_king_vampiric_aura",
	npc_dota_necronomicon_warrior_3 = "item_demonicon",
	npc_dota_necronomicon_archer_3 = "item_demonicon",
}

---@param caster CDOTA_BaseNPC
---@param summon CDOTA_BaseNPC
function GetAbilityCorrespondingSummon(caster, summon)
	if IsValidEntity(caster) and IsValidEntity(summon) then
		local summon_name = summon:GetUnitName()
		
		if summon_name == "npc_dota_witch_doctor_death_ward" and caster:HasModifier("modifier_witch_doctor_voodoo_switcheroo") then
			return caster:FindAbilityByName("witch_doctor_voodoo_switcheroo")
		end

		local ability_name = summon_corresponded_ability[summon_name]
		if ability_name then
			return caster:FindAbilityByName(ability_name) or caster:FindItemInInventory(ability_name)
		end
	end
end

function CleanAbilityThinkers(position, radius)
	local targets = Entities:FindAllByClassnameWithin("npc_dota_thinker", position, radius) ---@type CDOTA_BaseNPC[]

	for _,thinker in pairs(targets) do
		if thinker:HasModifier("modifier_arc_warden_spark_wraith_thinker") 
		or thinker:HasModifier("modifier_broodmother_sticky_snare")
		or thinker:HasModifier("modifier_warlock_upheaval_lua_thinker")
		or thinker:HasModifier("modifier_lich_chain_frost_thinker") then
			thinker:ForceKill(false)
		end
	end
end

function CleanFireRemnants(position, radius)
	local targets = Entities:FindAllByClassnameWithin("npc_dota_base_additive", position, radius)

	for _,target in pairs(targets) do
		local modifier_thinker = target:FindModifierByName("modifier_ember_spirit_fire_remnant_thinker")
		if modifier_thinker then
			local die_time = modifier_thinker:GetDieTime()
			local caster = modifier_thinker:GetCaster()
			
			target:ForceKill(false)

			if caster then
				local modifiers = caster:FindAllModifiersByName("modifier_ember_spirit_fire_remnant_timer")
				for _, modifier in pairs(modifiers) do
					if modifier:GetDieTime() == die_time then
						modifier:Destroy()
					end
				end
			end
		end
	end
end


function CleanTreantEyes(position, radius)
	local targets = Entities:FindAllByClassnameWithin("npc_dota_treant_eyes", position, radius)

	for _,thinker in pairs(targets) do
		GridNav:DestroyTreesAroundPoint(thinker:GetAbsOrigin(), 16, false)
	end
end

---@param position Vector
---@param center Vector
---@param bounds Vector
function IsPositionInRect2D(position, center, bounds) 
	return position.x < (center.x + bounds.x) 
		and position.x > (center.x - bounds.x)
		and position.y < (center.y + bounds.y) 
		and position.y > (center.y - bounds.y)
end

---@param point Vector
---@param center Vector
---@param bounds Vector
function ClosestPointInRect2D(point, center, bounds)
	if IsPositionInRect2D(point, center, bounds) then 
		return point 
	end

	local x = math.max(center.x - bounds.x, math.min(point.x, center.x + bounds.x))
	local y = math.max(center.y - bounds.y, math.min(point.y, center.y + bounds.y))
	
	return Vector(x, y, center.z)
end

function CastTargetedAbility(unit, target, ability)
	ExecuteOrderFromTable({
		UnitIndex = unit:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_TARGET,
		TargetIndex = target:entindex(),
		AbilityIndex = ability:entindex()
	})
end

function CastPositionalAbility(unit, position, ability)
	ExecuteOrderFromTable({
		UnitIndex = unit:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_POSITION,
		Position = position,
		AbilityIndex = ability:entindex()
	})
end

function CastUntargetedAbility(unit, ability)
	ExecuteOrderFromTable({
		UnitIndex = unit:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_NO_TARGET,
		AbilityIndex = ability:entindex()
	})
end

function CastToggleAbility(unit, ability)
	ExecuteOrderFromTable({
		UnitIndex = unit:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_TOGGLE,
		AbilityIndex = ability:entindex()
	})
end

function CastToggleAutoCastAbility(unit, ability)
	ExecuteOrderFromTable({
		UnitIndex = unit:entindex(),
		OrderType = DOTA_UNIT_ORDER_CAST_TOGGLE_AUTO,
		AbilityIndex = ability:entindex()
	})
end

function LobbyPlayerCount() 
	local i = 0

	for pID = 0, DOTA_MAX_TEAM_PLAYERS-1 do
		if PlayerResource:IsValidPlayerID(pID) and not PlayerResource:IsFakeClient(pID) then
			i = i + 1
		end
	end

	return i
end

function IsNeutralItem(item_name)
	return GameMode.neutral_items[item_name] ~= nil
end

function GetNeutralItemTier(item_name)
	return GameMode.neutral_items[item_name]
end

function IsBitSet(value, ...)
	local flags = bit.bor(...)
	return bit.band(value, flags) == flags
end

function IsBitOff(value, ...)
	local flags = bit.bor(...)
	return bit.band(value, flags) == 0
end

function math.round(num)
	return math.ceil(num - 0.5)
end

function DummyFilterFunc(unit)
	-- Filter Valve dummies like Bulwark Soldiers and etc
	if unit:GetClassname() == "npc_dota_base_additive" then
		return false
	end

	local unit_name = unit:GetUnitName()

	-- Filter CHC cosmetic abilities(high five & sprays) dummy caster
	if unit_name == "npc_dummy_cosmetic_caster" then
		return false
	end

	return true
end

function RegisterSpecialValuesModifier(modifier)
	local parent = modifier:GetParent()

	parent:AddNewModifier(parent, nil, "modifier_special_values_handler", nil)

	parent.special_values_modifiers = parent.special_values_modifiers or {}

	if not table.contains(parent.special_values_modifiers, modifier) then
		table.insert(parent.special_values_modifiers, modifier)
	end
end

function RegisterSpellAmplifyMultModifier(modifier)
	local parent = modifier:GetParent()

	parent.spell_amp_mult_modifiers = parent.spell_amp_mult_modifiers or {}

	if not table.contains(parent.spell_amp_mult_modifiers, modifier) then
		table.insert(parent.spell_amp_mult_modifiers, modifier)
	end
end

function GetEnfosArena(location)
    if location.x < -4000 then
        return ENFOS_ARENA_RADIANT
    elseif location.x > 4000 then
        return ENFOS_ARENA_DIRE
    else
        return ENFOS_ARENA_PVP
    end
end

function GetEnfosArenaForTeam(team)
    if team == DOTA_TEAM_GOODGUYS then
    	return ENFOS_ARENA_RADIANT
    elseif team == DOTA_TEAM_BADGUYS then
    	return ENFOS_ARENA_DIRE
    end
end

function GetUnitCurrentArena(unit)
	if Enfos:IsEnfosMode() then
		return GetEnfosArena(unit:GetAbsOrigin())
	else
		-- Wave creeps
		if unit.spawn_team then
			return unit.spawn_team
		end
		
		local unit_team = unit:GetTeam()
		local unit_state = unit.unit_state or GameMode:GetTeamState(unit_team)

		-- Units arena number same as team number, except if they in duel
		return unit_state == TEAM_STATE_DUELING and 1 or unit_team
	end	
end

function IsValidLocationForCast(location, caster)
	if location.x > GetWorldMaxX() 
	or location.x < GetWorldMinX() 
	or location.y > GetWorldMaxY() 
	or location.y < GetWorldMinY() then return false end

	if Enfos:IsEnfosMode() then
		return true --caster:GetEnfosArena() == GetEnfosArena(location)
	else
		local center_arena = caster:GetHeroCurrentArenaCenter()
		local distance_from_arena_center = (location - center_arena):Length2D()

		return distance_from_arena_center < ARENA_MAX_CAST_DISTANCE
	end

end

function IsUnitsOnSameArena(unit1, unit2)
	return GetUnitCurrentArena(unit1) == GetUnitCurrentArena(unit2)
end

function FindAllUnitsInArena(team, team_filter, type_filter, flag_filter, arena)
	if Enfos:IsEnfosMode() then
		return FindUnitsInLine(team, ENFOS_ARENA_START_POS[arena], ENFOS_ARENA_END_POS[arena], nil, 3000, team_filter, type_filter, flag_filter)
	else
		local radius = ARENA_MAX_CAST_DISTANCE + 400
		local location = arena == 1 and GameMode.pvp_center or GameMode.arena_centers[arena]
		local targets = FindUnitsInRadius(team, location, nil, radius, team_filter, type_filter, flag_filter, FIND_ANY_ORDER, true)
		return targets
	end
end

function FindAllUnitsInCurrentArena(team, team_filter, type_filter, flag_filter, unit)
	return FindAllUnitsInArena(team, team_filter, type_filter, flag_filter, GetUnitCurrentArena(unit))
end

function FindUnitsInArena(team, location, radius, team_filter, type_filter, flag_filter, order, arena)
	if Enfos:IsEnfosMode() then
		if radius == FIND_UNITS_EVERYWHERE or radius == nil then radius = 15000 end
		if not location then location = ENFOS_ARENA_CENTER[arena] or Vector(0, 0, 0) end

		local targets = FindUnitsInRadius(team, location, nil, radius, team_filter, type_filter, flag_filter, order, true)

		for i = #targets, 1, -1 do
			local target = targets[i]

			if target:GetEnfosArena() ~= arena then
				table.remove(targets, i)
			end
		end

		return targets
	else
		if radius == FIND_UNITS_EVERYWHERE or radius == nil then radius = ARENA_MAX_CAST_DISTANCE end
		
		if not location then
			location = arena == 1 and GameMode.pvp_center or GameMode.arena_centers[arena]
		end
		
		return FindUnitsInRadius(team, location, nil, radius, team_filter, type_filter, flag_filter, order, true)
	end
end


--- Verifies validity of passed player id
---@param player_id number
---@return boolean
function IsValidPlayerID(player_id)
	return player_id ~= nil and PlayerResource:IsValidPlayerID(player_id)
end


function DebugMessage(...)
	-- we have to convert all arguments that aren't strings or numbers, cause table.concat doesn't handle other types
	-- arg is reserved internal name to reference ...
	local args = {...}
	for i, argument in pairs(args) do
		local arg_type = type(argument)
		if arg_type == "table" then
			args[i] = table.to_string(argument)
		elseif arg_type ~= "string" and arg_type ~= "number" then
			args[i] = tostring(argument) or ""
		end
	end

	local message = table.concat({"[DEBUG]", unpack(args)}, " ")

	print(message)
	CustomGameEventManager:Send_ServerToAllClients("server_print", { message = message })
end
