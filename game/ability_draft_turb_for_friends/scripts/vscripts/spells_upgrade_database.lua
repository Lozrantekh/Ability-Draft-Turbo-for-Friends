_G.ExcludedSpellUpgrades = {
    generic_hidden = true,
	mirana_starfall_ultimate = true,
	dawnbreaker_converge = true,
	--furion_sprout = true,
	--furion_teleportation = true,
	--furion_wrath_of_nature = true,
	monkey_king_mischief = true,
	phoenix_fire_spirits_nb2017 = true,
    dawnbreaker_land = true,
	invoker_invoke = true,

	--custom
    inventory_content_checker_sb2023 = true,
	mk_auto_tree_dance_sb_2023 = true,
	monkey_king_tree_dance = true,
	fake_ability_dark_moon = true,

    --new hidden abilities
    ability_capture = true,
	abyssal_underlord_portal_warp = true,
	twin_gate_portal_warp = true,
	ability_lamp_use = true,
	ability_pluck_famango = true,

	--other
	nevermore_shadowraze2 = true,
	nevermore_shadowraze3 = true,

	--golden treasure upgrades
	ability_open_golden_treasure = true,
}

_G.EXCLUDED_SPELL_UPGRADE_PROPERTIES = {
	templar_assassin_psi_blades =
	{
	--	attack_spill_penalty = true,
	--	attack_spill_pct = true,
	},

	medusa_mana_shield =
	{
		absorption_pct = true,
	},

	luna_lucent_beam =
	{
		prop_damage_reducing = true,
	},

	windrunner_powershot =
	{
		damage_reduction = true,
	},

	drow_ranger_multishot =
	{
		arrow_count_per_wave = true,
	},

	dawnbreaker_fire_wreath =
	{
		duration = true,
	},

	faceless_void_time_lock =
	{
		duration = true,
		delay = true,
		--chance_pct = true,
	},

	huskar_inner_fire =
	{
	--	hero_damage_heal_pct = true,
	--	creep_damage_heal_pct = true,
	--	movement_slow_pct = true,
	},

	grimstroke_dark_artistry =
	{
		abilitycastrange = true,
	},

	undying_tombstone =
	{
		hits_to_destroy_tooltip = true
	},

	undying_soul_rip =
	{
		tombstone_heal = true
	},

	slark_dark_pact =
	{
		delay = true
	},

	pangolier_shield_crash =
	{
		hero_stacks = true
	},

	crystal_maiden_freezing_field =
	{
	--	movespeed_slow = true,
	--	attack_slow = true,
	},

	witch_doctor_paralyzing_cask =
	{
		hero_duration = true
	},

	aghsfort_witch_doctor_maledict =
	{
	--	abilityduration = true
	},

	tinker_laser = 
	{
	--	duration_hero = true
	},

	crystal_maiden_frostbite =
	{
	--	duration = true
	},

	abyssal_underlord_pit_of_malice = 
	{
		speed_bonus = true
	},

	tiny_grow = 
	{
		attack_speed_reduction = true
	},

	vengefulspirit_command_aura = {
	--	aura_radius = true
	},

	storm_spirit_overload = {
		overload_move_slow = true,
		overload_attack_slow = true,
	},

	terrorblade_metamorphosis = {
		transformation_time = true
	},

	monkey_king_jingu_mastery_dark_moon = {
		counter_duration = true,
		max_duration = true,
	},

	monkey_king_jingu_mastery = {
		counter_duration = true,
		max_duration = true,
	},

	lina_light_strike_array = {
		light_strike_array_delay_time = true
	},

	zuus_lightning_bolt = {
		true_sight_radius = true,
	--	sight_radius_day = true,
	--	sight_radius_night = true,
	--	sight_duration = true,
	},

	zuus_heavenly_jump = {
	--	hop_distance = true,
	--	hop_duration = true,
	--	hop_height = true,
	--	duration = true,
	--	move_slow = true,
	--	aspd_slow = true,
	--	cast_slow = true
	},

	furion_force_of_nature = {
	--	area_of_effect = true,
	},

	silencer_last_word = {
	--	int_multiplier = true
	},

	void_spirit_dissimilate = {
		phase_duration = true
	},

	void_spirit_aether_remnant = {
	--	remnant_watch_distance = true,
		activation_delay = true,
	--	pull_duration = true
	},

	lycan_shapeshift = {
		transformation_time = true
	},

	jakiro_ice_path = {
		path_delay = true
	},

	tusk_snowball = {
		snowball_duration = true,
		snowball_windup = true,
	},

	nevermore_shadowraze1 = {
		shadowraze_range = true,
	},
	
	nevermore_shadowraze2 = {
		shadowraze_range = true,
	},

	nevermore_shadowraze3 = {
		shadowraze_range = true,
	},
	
	skywrath_mage_shield_of_the_scion = {
		stack_duration = true,
	},

	shadow_fiend_shadowraze_ad_2023 = {
		shadowraze_range = true,
		AbilityChargeRestoreTime = true,
	--	AbilityCharges = true,
	},

	elder_titan_echo_stomp = {
		cast_time = true
	},

	elder_titan_earth_splitter = {
		crack_time = true,
	--	crack_distance = true,
	--	slow_pct = true,
	--	slow_duration = true,
	},

	troll_warlord_whirling_axes_melee = {
		AbilityCooldown = true,
		AbilityManacost = true,
	},

	troll_warlord_whirling_axes_ranged = {
		AbilityCooldown = true,
		AbilityManacost = true,
	},

	arc_warden_flux = {
		search_radius = true,
	--	move_speed_slow_pct = true,
	--	AbilityCastRange = true
	},

	arc_warden_magnetic_field = {
	--	evasion_chance = true,
	--	radius = true,
	},

	arc_warden_spark_wraith = {
	--	move_speed_slow_pct = true
	},

	arc_warden_tempest_double = {
		bounty = true
	},

	meepo_earthbind = {
	--	abilitycastrange = true
	},

	--meepo_divided_we_stand = {
	--	fling_damage = true,
	--},

	faceless_void_time_dilation = {
	--	slow = true,
	--	cooldown_percentage = true,
	},

	huskar_life_break = {
	--	health_damage = true,
	--	health_cost_percent = true
	},

	pugna_decrepify = {
		bonus_spell_damage_pct_allies = true
	},

	drow_ranger_marksmanship = {
	--	split_damage_reduction = true
	},

	kunkka_x_marks_the_spot = {
		allied_duration = true
	},

	void_spirit_astral_step = {
	--	movement_slow_pct = true
	},

	sniper_shrapnel = {
		slow_movement_speed = true
	},
	
	aghsfort_phantom_assassin_stifling_dagger =
	{
		move_slow = true,
	},

	enigma_black_hole = {
	--	duration = true
	},

	wisp_spirits = {
	--	hero_damage = true
	},

	medusa_mystic_snake = {
		snake_speed_scale = true,
		movement_slow = true,
		turn_slow = true,
		slow_duration = true,
	},

	luna_lunar_blessing = {
	--	bonus_night_vision = true,
	--	radius = true
	},

	luna_eclipse = {
		night_duration = true,
		AbilityDuration = true,
		beam_interval = true,
	},

	hoodwink_sharpshooter = {
		max_slow_debuff_duration = true,
		slow_move_pct = true
	},

	hoodwink_acorn_shot = {
		slow = true,
		debuff_duration = true
	},

	primal_beast_uproar = {
		move_slow_per_stack = true,
	--	slow_duration = true,
		damage_limit = true,
	--	stack_limit = true,
	--	split_delay = true,
	},

	marci_unleash = {
		pulse_attack_slow_pct = true,
		pulse_move_slow_pct = true,
	},

	marci_grapple = {
		movement_slow_pct = true,
	--	debuff_duration = true
	},

	ember_spirit_sleight_of_fist = {
		attack_interval = true
	},

	lone_druid_spirit_bear = {
		bear_movespeed = true,
	},

	warlock_rain_of_chaos = {
	--	golem_hp = true,
	},

	dark_willow_bedlam = {
	--	attack_targets = true,
	},

	phoenix_launch_fire_spirit_nb2017 =
	{
		attackspeed_slow = true,
	},

	keeper_of_the_light_spirit_form_illuminate = {
		max_channel_time = true
	},

	tusk_walrus_wallop_nb2017 = {
		knockback_distance = true
	},

	muerta_pierce_the_veil = {
		transform_duration = true
	},

	oracle_false_promise = {
		--duration = true,
	},

	muerta_dead_shot = {
		impact_slow_percent = true
	},

	dragon_knight_elder_dragon_form = {
		duration = true,
	},

	clinkz_burning_army = {
		spawn_interval = true,
	},
	
	clinkz_burning_barrage = {
		range = true,
	},

	winter_wyvern_winters_curse_sb_2023 = {
		damage_reduction = true,
	},

	monkey_king_primal_spring = {
		AbilityChannelTime = true
	},

	zuus_arc_lightning = {
		damage_health_pct = true
	},

	weaver_shukuchi = {
		fade_time = true,
	},

	mars_arena_of_blood = {
		formation_time = true,
	},

	skeleton_king_reincarnation = {
		reincarnate_time = true,
	},

	primal_beast_onslaught = {
		charge_speed = true,
	--	max_distance = true,
	},

	primal_beast_rock_throw = {
		fragment_impact_distance = true
	},

	aghsfort_slark_dark_pact = {
		delay = true,
	},

	slark_pounce_sb_2023 = {
	--	pounce_distance = true,
	--	charge_restore_time = true,
		AbilityCharges = true,
	--	pounce_distance_scepter = true,
	},

	aghsfort_slark_essence_shift =
	{
	--	agi_gain = true,
	--	stat_loss = true,
		passive_agility = true,
		reduction = true,
	},

	centaur_hoof_stomp = {
		windup_time = true,
	},

	centaur_stampede = {
		damage_reduction = true,
	},
	
	abyssal_underlord_firestorm = 
	{
		burn_interval = true,
		burn_duration = true,
	},

	venomancer_plague_ward = {
		--threshold_max_hp_pct = true,
	},

	clinkz_burning_barrage = {
		--AbilityChannelTime = true,
	},

	magnataur_reverse_polarity = {
		pull_duration = true,
		knockback_height = true,
		max_knockback_distance = true,
		push_radius = true,
	},

	--darkmoon excluded
	-- lich_frost_nova = {
	-- 	slow_movement_speed = true,
	-- 	slow_attack_speed_primary = true,
	-- },
	-- queenofpain_shadow_strike = {
	-- 	movement_slow = true,
	-- },

	--siltbreaker excluded
	-- necrolyte_reapers_scythe = {
	-- 	stun_duration = true,
	-- 	max_dmg_hp = true,
	-- },
}

_G.NEGATIVE_SPELL_UPGRADES_CUMULATION = {
	templar_assassin_meld =
	{
		bonus_armor = true
	},

	windrunner_windrun =
	{
		enemy_movespeed_bonus_pct = true
	},

	ogre_magi_ignite =
	{
		slow_movement_speed_pct = true
	},

	slardar_amplify_damage =
	{
		armor_reduction = true
	},

	creature_acid_spray =
	{
		armor_reduction = true
	},

	vengefulspirit_wave_of_terror = 
	{
		armor_reduction = true
	},

	axe_battle_hunger = 
	{
		slow = true
	},

	ancient_apparition_ice_vortex = {
		movement_speed_pct = true,
		spell_resist_pct = true,
	},

	invoker_ice_wall = {
		slow = true,
	},

	invoker_ice_wall_ad = {
		slow = true,
	},

	silencer_curse_of_the_silent = {
		movespeed = true,
	},

	treant_leech_seed = {
		movement_slow = true,
	},

	enchantress_untouchable = {
		slow_attack_speed = true
	},

	jakiro_dual_breath = {
		slow_attack_speed_pct = true,
		slow_movement_speed_pct = true
	},

	jakiro_liquid_fire = {
		slow_attack_speed_pct = true
	},

	nevermore_dark_lord = {
		presence_armor_reduction = true
	},

	skywrath_mage_ancient_seal = {
		resist_debuff = true
	},

	pugna_decrepify = {
		bonus_spell_damage_pct = true,
		bonus_movement_speed = true,
	},

	batrider_sticky_napalm = {
		turn_rate_pct = true,
		movement_speed_pct = true,
	},

	tidehunter_anchor_smash = {
		damage_reduction = true
	},

	dragon_knight_breathe_fire = {
		reduction = true
	},

	drow_ranger_frost_arrows = {
		frost_arrows_movement_speed = true,
	},

	clinkz_tar_bomb = {
		slow_movement_speed = true,
	},

	ursa_earthshock = {
		movement_slow = true
	},

	pudge_rot = {
		rot_slow = true,
	},

	lich_frost_nova = {
		slow_movement_speed = true,
		slow_attack_speed_primary = true,
	},

	queenofpain_shadow_strike = {
		movement_slow = true,
	},

	venomancer_venomous_gale = {
		movement_slow = true
	},

	venomancer_poison_sting = {
		movement_speed = true
	},

	item_desolator_2 = {
		corruption_armor = true,
	},

	nevermore_shadowraze1 = {
		movement_speed_pct = true
	},

	shadow_fiend_shadowraze_ad_2023 = {
		movement_speed_pct = true
	},
	
	beastmaster_boar_poison_lua = {
		attack_speed = true,
		movement_speed = true,
	},
}

_G.SPELL_UPGRADE_REDUCTION = {
	luna_moon_glaive =
	{
		damage_reduction_percent = true
	},

	aghsfort_phantom_assassin_stifling_dagger =
	{
		attack_factor = true,
	},

	windrunner_powershot =
	{
		damage_reduction = true,
	},

	monkey_king_wukongs_command =
	{
		attack_speed = true
	},

	dawnbreaker_luminosity =
	{
		heal_from_creeps = true,
		attack_count = true
	},

	dawnbreaker_luminosity_ad_ranked =
	{
		heal_from_creeps = true,
		attack_count = true
	},

	alchemist_chemical_rage =
	{
		base_attack_time = true
	},

	creature_acid_spray =
	{
		tick_rate = true
	},

	huskar_burning_spear =
	{
		health_cost = true
	},

	phoenix_icarus_dive =
	{
		hp_cost_perc = true,
	},

	phoenix_sun_ray =
	{
		hp_cost_perc_per_second = true
	},

	phoenix_launch_fire_spirit_nb2017 =
	{
		hp_cost_perc = true,
	},

	luna_lucent_beam =
	{
		tick_rate = true
	},

	bristleback_bristleback =
	{
		quill_release_threshold = true
	},

	bristleback_bristleback_dm =
	{
		quill_release_threshold = true
	},

	obsidian_destroyer_arcane_orb =
	{
		mana_cost_percentage = true
	},

	undying_tombstone =
	{
		zombie_interval = true
	},

	rattletrap_battery_assault =
	{
		interval = true
	},

	witch_doctor_voodoo_restoration =
	{
		mana_per_second = true
	},
	
	witch_doctor_voodoo_switcheroo =
	{
		attack_speed_reduction = true
	},

	leshrac_split_earth = 
	{
		delay = true
	},

	leshrac_pulse_nova  = 
	{
		mana_cost_per_second = true
	},

	abyssal_underlord_firestorm = 
	{
		wave_interval = true
	},

	razor_eye_of_the_storm = 
	{
		strike_interval = true
	},

	disruptor_kinetic_field = 
	{
		formation_time = true
	},

	viper_nethertoxin = 
	{
		max_duration = true
	},

	storm_spirit_ball_lightning = 
	{
		ball_lightning_travel_cost_percent = true
	},

	terrorblade_sunder = {
		hit_point_minimum_pct = true
	},

	terrorblade_metamorphosis = {
		base_attack_time = true
	},

	broodmother_spin_web = {
		AbilityChargeRestoreTime = true
	},

	zeus_thundergods_wrath_nb2017 = {
		cloud_bolt_interval = true
	},

	silencer_last_word = {
		debuff_duration = true
	},

	monkey_king_jingu_mastery_dark_moon = {
		required_hits = true
	},

	monkey_king_jingu_mastery = {
		required_hits = true
	},

	ember_spirit_fire_remnant = {
		AbilityChargeRestoreTime = true
	},

	void_spirit_astral_step = {
		AbilityChargeRestoreTime = true
	},

	morphling_morph_agi = {
		mana_cost = true
	},

	morphling_morph_str = {
		mana_cost = true
	},

	ember_spirit_sleight_of_fist = {
		attack_interval = true
	},

	void_spirit_resonant_pulse = {
		charge_restore_time = true
	},

	lone_druid_spirit_bear = {
		bear_bat = true
	},

	lone_druid_true_form = {
		base_attack_time = true,
		transformation_time = true,
	},

	techies_sticky_bomb = {
		countdown = true
	},

	techies_land_mines = {
		activation_delay = true
	},

	invoker_emp = {
		delay = true
	},

	invoker_cold_snap_ad = {
		freeze_cooldown = true
	},

	gyrocopter_flak_cannon = {
		fire_rate = true
	},

	troll_warlord_berserkers_rage = {
		base_attack_time = true
	},

	pugna_nether_blast = {
		delay = true
	},

	marci_unleash = {
		time_between_flurries = true
	},

	enigma_demonic_conversion = {
		split_attack_count = true
	},

	warlock_shadow_word = {
		tick_interval = true
	},

	warlock_upheaval = {
		damage_tick_interval = true
	},

	arc_warden_spark_wraith = {
		activation_delay = true
	},

	arc_warden_tempest_double = {
		attack_damage_penalty = true
	},

	wisp_relocate = {
		cast_delay = true
	},

	invoker_cold_snap = {
		freeze_cooldown = true
	},

	disruptor_thunder_strike = {
		strike_interval = true
	},

	centaur_double_edge = {
		self_damage = true
	},

	queenofpain_shadow_strike = {
		damage_interval = true,
	},

	hoodwink_sharpshooter = {
		max_charge_time = true,
	},

	primal_beast_pulverize = {
		interval = true
	},

	dark_willow_cursed_crown = {
		delay = true
	},

	dark_willow_shadow_realm = {
		max_damage_duration = true
	},

	dark_willow_bedlam = {
		attack_interval = true,
		roaming_seconds_per_rotation = true,
	},

	abaddon_death_coil = {
		self_damage = true
	},

	tidehunter_kraken_shell = {
		damage_cleanse = true
	},

	shredder_chakram = {
		mana_per_second = true
	},

	spectre_desolate = {
		radius = true
	},

	invoker_sun_strike_ad = {
		delay = true,
	},

	axe_counter_helix = {
		trigger_attacks = true,
	},

	dazzle_bad_juju = {
		mana_cost_increase_pct = true,
		mana_cost_increase_duration = true,
	},

	black_dragon_fireball_hero = {
		burn_interval = true,
	},

	io_blob = {
		interval = true,
	},

	invoker_chaos_meteor = {
		damage_interval = true,
		land_time = true,
	},

	invoker_sun_strike = {
		delay = true,
	},

	juggernaut_blade_fury = {
		shard_attack_rate = true
	},

	weaver_the_swarm = {
		attack_rate = true
	},

	beastmaster_drums_of_slom = {
		min_drum_hit_interval = true,
		max_drum_hit_interval = true,
		max_stacks = true
	},

	riki_backstab  = {
		fade_delay = true,
	},

	zuus_cloud = {
		cloud_bolt_interval = true,
	},

	mars_bulwark = {
		redirect_speed_penatly = true,
	},

	tiny_tree_channel = {
		interval = true
	},

	rattletrap_overclocking = {
		debuff_duration = true
	},

	razor_unstable_current = {
		strike_internal_cd = true
	},

	techies_suicide = {
		hp_cost = true
	},

	primal_beast_rock_throw = {
		min_range = true,
		min_travel_time = true,
		max_travel_time = true,
	},

	pangolier_gyroshell = {
		shield_crash_cooldown = true
	},

	slark_pounce_sb_2023 = {
		leash_radius = true,
	},

	lycan_summon_wolves = {
		wolf_bat = true
	},

	--these values are dependencies for illusion_outgoing_damage/illusion_incoming_damage
	chaos_knight_phantasm =
	{
		incoming_damage_tooltip = true,
	},

	naga_siren_mirror_image = {
		tooltip_incoming_damage_total_pct = true,
	},

	terrorblade_conjure_image = {
		illusion_incoming_damage_total_tooltip = true,
	},

	shadow_demon_disruption = {
		tooltip_total_illusion_incoming_damage = true,
	},

	phantom_lancer_juxtapose = {
		tooltip_total_illusion_damage_in_pct = true,
	},

	shadow_demon_soul_catcher = {
		illusion_incoming_damage_tooltip = true,
	},
	
	grimstroke_dark_portrait = {
		images_take_damage_percent_tooltip = true,
	},

	primal_beast_onslaught = {
		max_charge_time = true,
	},
	
	visage_gravekeepers_cloak = {
		recovery_time = true,
	},

	--ITEMS:
	item_specialists_array = {
		AbilityCooldown = true,
	},

	item_dandelion_amulet = {
		AbilityCooldown = true,
	},

	item_enchanted_quiver = {
		AbilityCooldown = true,
	},

	item_ascetic_cap = {
		AbilityCooldown = true,
	},

	item_eye_of_the_vizier = {
		mana_reduction_pct = true,
	},

	item_vampire_fangs = {
		creep_lifesteal_reduction_pct = true
	},

	keeper_of_the_light_illuminate = {
		max_channel_time = true
	},
	
	tiny_tree_channel = {
		speed = true,
		range = true,
	},
}

_G.MIN_SPELL_UPGRADE_VALUES = {
	viper_nethertoxin = 
	{
		max_duration = 1
	},

	undying_tombstone = 
	{
		zombie_interval = 0.5
	},

	windrunner_powershot =
	{
		damage_reduction = 0,
	},

	terrorblade_metamorphosis = {
		base_attack_time = 0.75
	},

	terrorblade_sunder = {
		hit_point_minimum_pct = 1
	},

	broodmother_spin_web = {
		AbilityChargeRestoreTime = 1
	},

	zeus_thundergods_wrath_nb2017 = {
		cloud_bolt_interval = 0.95
	},

	silencer_last_word = {
		debuff_duration = 1
	},
	
	monkey_king_jingu_mastery_dark_moon = {
		required_hits = 2
	},

	monkey_king_jingu_mastery = {
		required_hits = 2
	},

	dawnbreaker_luminosity =
	{
		heal_from_creeps = 0,
		attack_count = 2
	},

	dawnbreaker_luminosity_ad_ranked = {
		heal_from_creeps = 0,
		attack_count = 2
	},

	bristleback_bristleback =
	{
		quill_release_threshold = 150
	},

	bristleback_bristleback_dm =
	{
		quill_release_threshold = 150
	},

	void_spirit_resonant_pulse = {
		charge_restore_time = 5
	},

	lone_druid_spirit_bear = {
		bear_bat = 0.5
	},

	lone_druid_true_form = {
		base_attack_time = 0.5,
		transformation_time = 0.5,
	},

	techies_sticky_bomb = {
		countdown = 0.1
	},

	techies_land_mines = {
		activation_delay = 0.1
	},

	invoker_emp = {
		delay = 0.5
	},

	invoker_cold_snap_ad = {
		freeze_cooldown = 0.15
	},

	gyrocopter_flak_cannon = {
		fire_rate = 0.9
	},

	troll_warlord_berserkers_rage = {
		base_attack_time = 0.5
	},

	pugna_nether_blast = {
		delay = 0.1
	},

	marci_unleash = {
		time_between_flurries = 0.5
	},

	enigma_demonic_conversion = {
		split_attack_count = 2
	},

	warlock_shadow_word = {
		tick_interval = 0.25
	},

	warlock_upheaval = {
		damage_tick_interval = 0.25
	},

	arc_warden_spark_wraith = {
		activation_delay = 0.25
	},

	arc_warden_tempest_double = {
		attack_damage_penalty = 0
	},

	wisp_relocate = {
		cast_delay = 0.5
	},

	invoker_cold_snap = {
		freeze_cooldown = 0.15
	},

	disruptor_thunder_strike = {
		strike_interval = 0.2
	},

	void_spirit_astral_step = {
		AbilityChargeRestoreTime = 10
	},

	rattletrap_battery_assault =
	{
		interval = 0.55
	},

	alchemist_chemical_rage =
	{
		base_attack_time = 0.75
	},

	centaur_double_edge = {
		self_damage = 0
	},

	queenofpain_shadow_strike = {
		damage_interval = 0.2,
		movement_slow = -85,
	},

	hoodwink_sharpshooter = {
		max_charge_time = 1.5,
	},

	primal_beast_pulverize = {
		interval = 0.25
	},
	
	abyssal_underlord_firestorm = 
	{
		wave_interval = 0.5
	},

	razor_eye_of_the_storm =
	{
		strike_interval = 0.4
	},
	
	tidehunter_anchor_smash = {
		damage_reduction = -75
	},

	dark_willow_cursed_crown = {
		delay = 1.5
	},

	dark_willow_shadow_realm = {
		max_damage_duration = 0.5
	},

	dark_willow_bedlam = {
		attack_interval = 0.1,
		roaming_seconds_per_rotation = 0.5
	},

	abaddon_death_coil = {
		self_damage = 0
	},

	luna_lucent_beam =
	{
		tick_rate = 0.25
	},

	tidehunter_kraken_shell = {
		damage_cleanse = 150
	},

	shredder_chakram = {
		mana_per_second = 5
	},

	spectre_desolate = {
		radius = 0
	},

	invoker_sun_strike_ad = {
		delay = 0.25,
	},

	axe_counter_helix = {
		trigger_attacks = 2,
	},

	dazzle_bad_juju = {
		mana_cost_increase_pct = 5,
		mana_cost_increase_duration = 2,
	},

	black_dragon_fireball_hero = {
		burn_interval = 0.3,
	},

    luna_moon_glaive =
	{
		damage_reduction_percent = 0
	},

	io_blob = {
		interval = 0.35,
	},

	invoker_chaos_meteor = {
		damage_interval = 0.1,
		land_time = 0.5,
	},

	invoker_sun_strike = {
		delay = 0.5,
	},

	juggernaut_blade_fury = {
		shard_attack_rate = 0.5
	},

	slardar_amplify_damage =
	{
		armor_reduction = -35
	},

	ursa_earthshock = {
		movement_slow = -75
	},

	pudge_rot = {
		rot_slow = -65,
	},

	lich_frost_nova = {
		slow_movement_speed = -50,
		slow_attack_speed_primary = -100,
	},

	dragon_knight_breathe_fire = {
		reduction = -45
	},

	venomancer_venomous_gale = {
		movement_slow = -75
	},

	venomancer_poison_sting = {
		movement_speed = -30
	},

	rattletrap_overclocking = {
		debuff_duration = 0
	},

	razor_unstable_current = {
		strike_internal_cd = 0.5
	},

	item_desolator_2 = {
		corruption_armor = -25,
	},

	templar_assassin_meld =
	{
		bonus_armor = -16
	},

	techies_suicide = {
		hp_cost = 0
	},

	primal_beast_onslaught = {
		max_charge_time = 0.5,
	},

	primal_beast_rock_throw = {
		min_range = 225,
		min_travel_time = 0.25,
		max_travel_time = 0.75,
	},

	pangolier_gyroshell = {
		shield_crash_cooldown = 1.0
	},

	keeper_of_the_light_illuminate = {
		max_channel_time = 1.0
	},

	slark_pounce_sb_2023 = {
		leash_radius = 200,
	},

	huskar_burning_spear =
	{
		health_cost = 0.5
	},

	lycan_summon_wolves = {
		wolf_bat = 0.25
	},

	witch_doctor_voodoo_switcheroo =
	{
		attack_speed_reduction = 0,
	},

	--Tooltip dependencies
	chaos_knight_phantasm =
	{
		incoming_damage_tooltip = 185,
	},

	naga_siren_mirror_image = {
		tooltip_incoming_damage_total_pct = 220,
	},

	terrorblade_conjure_image = {
		illusion_incoming_damage_total_tooltip = 200,
	},

	shadow_demon_disruption = {
		tooltip_total_illusion_incoming_damage = 200,
	},

	phantom_lancer_juxtapose = {
		tooltip_total_illusion_damage_in_pct = 350,
	},

	shadow_demon_soul_catcher = {
		illusion_incoming_damage_tooltip = 200,
	},

	grimstroke_dark_portrait = {
		images_take_damage_percent_tooltip = 200,
	},
	
	visage_gravekeepers_cloak = {
		recovery_time = 1.8,
	},
	
	lycan_shapeshift = {
		speed = 825,
	},
	
	clinkz_burning_barrage = {
		wave_count = 10,
		damage_pct = 150,
	},
	
	shredder_flamethrower = {
		duration = 15,
		width = 400,
		length = 800,
		move_slow_pct = 50,
		building_dmg_pct = 75,
		debuff_linger_duration = 3.5,
	},
	
	tiny_tree_channel = {
		splash_radius = 800,
		tree_grab_radius = 1111,
	},

	--ITEMS:
	item_specialists_array = {
		AbilityCooldown = 2,
	},

	item_eye_of_the_vizier = {
		mana_reduction_pct = 0,
	},

	item_vampire_fangs = {
		creep_lifesteal_reduction_pct = 0
	},

	item_dandelion_amulet = {
		AbilityCooldown = 8,
	},

	item_enchanted_quiver = {
		AbilityCooldown = 2,
	},

	item_ascetic_cap = {
		AbilityCooldown = 10,
	},

	leshrac_split_earth = 
	{
		delay = 0.1
	},

	monkey_king_wukongs_command =
	{
		attack_speed = 0.25
	},

	weaver_the_swarm = {
		attack_rate = 0.25
	},

	beastmaster_drums_of_slom = {
		min_drum_hit_interval = 0.2,
		max_drum_hit_interval = 1.5,
		max_stacks = 10,
	},

	riki_backstab  = {
		fade_delay = 0.5
	},

	zuus_cloud = {
		cloud_bolt_interval = 1.25,
	},

	mars_bulwark = {
		redirect_speed_penatly = 10,
	},

	tiny_tree_channel = {
		interval = 0.2
	},

	storm_spirit_ball_lightning = 
	{
		ball_lightning_travel_cost_percent = 0.1
	},
}

_G.SPELL_UPGRADES_TO_INTEGERS = {
	aghsfort_witch_doctor_death_ward =
	{
		bounces = true
	},
	undying_decay =
	{
		str_steal = true
	},
	silencer_glaives_of_wisdom =
	{
		int_steal = true
	},
	slark_essence_shift =
	{
		agi_gain = true
	},
	templar_assassin_refraction =
	{
		instances = true
	},
	pangolier_lucky_shot = 
	{
		armor = true
	},
	nevermore_necromastery = 
	{
		necromastery_max_souls = true
	},

	luna_moon_glaive = 
	{
		bounces = true,
		rotating_glaives = true,
	},

	medusa_split_shot = 
	{
		arrow_count = true
	},

	dawnbreaker_luminosity = {
		attack_count = true
	},

	dawnbreaker_luminosity_ad_ranked = {
		attack_count = true
	},

	monkey_king_jingu_mastery_dark_moon = {
		required_hits = true
	},

	monkey_king_jingu_mastery = {
		required_hits = true
	},

	furion_force_of_nature = {
		max_treants = true
	},

	chaos_knight_phantasm = {
		images_count = true
	},

	phantom_lancer_juxtapose = {
		max_illusions = true
	},

	drow_ranger_multishot =
	{
		wave_count = true,
		arrow_count_per_wave = true,
	}, 

	shadow_shaman_shackles = {
		shard_ward_count = true
	},

	tiny_tree_grab = {
		attack_count = true
	},

	riki_tricks_of_the_trade = {
		attack_count = true,
	},

	enigma_demonic_conversion = {
		spawn_count = true,
		split_attack_count = true
	},

	luna_eclipse = {
		hit_count = true,
		beams = true,
	},

	leshrac_lightning_storm = {
		jump_count = true
	},

	clinkz_strafe = {
		wave_count = true
	},

	enchantress_natures_attendants = {
		wisp_count = true
	},

	lycan_feral_impulse = {
		bonus_hp_regen = true,
	},

	doom_bringer_devour = {
		armor = true
	},

	lion_finger_of_death = {
		damage_per_kill = true
	},

	pudge_flesh_heap_dark_moon = {
		damage_block = true,
	},

	gyrocopter_flak_cannon = {
		max_attacks = true
	},

	ursa_overpower = {
		max_attacks = true,
	},
	
	mud_golem_rock_destroy_Hero = {
		shard_amount = true,
	},

	luna_eclipse = {
		beams = true,
		hit_count = true,
	},
	
	visage_summon_familiars = {
		tooltip_familiar_count = true,
	},
	
	wisp_spirits = {
		spirit_amount = true,
	},
}

_G.MAX_SPELL_UPGRADE_VALUES = {
	bristleback_bristleback =
	{
		back_damage_reduction = 65,
		side_damage_reduction = 45,
	},

	bristleback_bristleback_dm =
	{
		back_damage_reduction = 65,
		side_damage_reduction = 45,
	},

	ogre_magi_multicast_custom = {
		multicast_2_times = 95,
		multicast_3_times = 70,
		multicast_4_times = 32
	},

	necrolyte_sadist  = {
		bonus_damage = 0
	},

	chaos_knight_phantasm = {
		images_count = 6
	},

	phantom_assassin_coup_de_grace = {
		crit_bonus = 1000
	},

    windrunner_focusfire = {
		focusfire_damage_reduction = -12
	},

	enchantress_impetus = {
		distance_cap = 3500
	},

	mars_bulwark = {
		physical_damage_reduction = 80,
		physical_damage_reduction_side = 50,
	},

	pudge_flesh_heap_dark_moon = {
		max_stack_count = 1000,
		flesh_heap_strength_buff_amount = 0.1
	},

	invoker_wex = {
		cooldown_reduction = 10
	},

	juggernaut_blade_fury = {
		shard_damage_pct = 125,
		duration = 7.5
	},

	muerta_gunslinger = {
		double_shot_chance = 65
	},

	luna_moon_glaive = {
		bounces = 12,
		rotating_glaives = 6,
		rotating_glaives_damage_reduction = 50,
		rotating_glaives_collision_damage = 125,
		rotating_glaives_duration = 12,
	},

	medusa_split_shot = {
		damage_modifier_tooltip = 125
	},

	ursa_enrage = {
		damage_reduction = 90,
		status_resistance = 75,
		duration = 6.5,
	},

	skeleton_king_hellfire_blast= {
		blast_slow = 50,
	},

	storm_spirit_electric_vortex = {
		electric_vortex_self_slow = 0
	},

	zuus_arc_lightning = {
		max_extra_damage = 350
	},

	bane_fiends_grip = {
		AbilityChannelTime = 7,
	},
	
	
	bane_brain_sap = {
		--damage = 1000,
	},
	pudge_dismember = {
		AbilityChannelTime = 5.0,
	},

	storm_spirit_overload = {
		shard_activation_radius = 2500,
		shard_activation_charges = 8,
		shard_attack_speed_bonus = 120,
		shard_activation_duration = 30,
	},

	shadow_demon_disseminate = {
		damage_reflection_pct = 50
	},

	primal_beast_uproar = {
		bonus_damage_per_stack = 15,
		roar_duration = 12,
		projectile_damage = 300,
		projectile_break_duration = 4,
	},

	primal_beast_trample = {
		attack_damage = 80,
	},

	phantom_assassin_phantom_strike = {
		lifesteal_pct = 60,
	},

	antimage_mana_overload = {
		outgoing_damage = 0,
	},

	faceless_void_chronosphere = {
		duration = 10
	},

	aghsfort_slark_essence_shift = {
		max_stacks = 50,
		active_duration = 25,
	},

	roshan_bash_hero = {
		bash_chance = 35,
		stun_duration = 1.25
	},

	hill_troll_rally_hero = {
		damage_bonus = 20,
	},

	juggernaut_swift_slash = {
		duration = 2.5,
	},

	dark_willow_shadow_realm = {
		duration = 7,
	},

	slardar_bash = {
		duration = 1.25,
	},

	faceless_void_time_lock = {
		duration = 0.75,
		chance_pct = 35,
	},

	spirit_breaker_greater_bash = {
		chance_pct = 35,
		duration = 1.75,
	},

	kobold_disarm_hero = {
		duration = 3.0
	},

	earthshaker_enchant_totem = {
		totem_damage_percentage = 650,
	},

	tusk_walrus_punch_ad_ranked = {
		crit_multiplier = 1000,
	},

	skeleton_king_mortal_strike = {
		crit_mult = 650,
	},

	mars_gods_rebuke = {
		crit_mult = 650,
	},

	monkey_king_boundless_strike = {
		strike_crit_mult = 650,
	},

	dawnbreaker_luminosity_ad_ranked = {
		bonus_damage = 650,
	},

	alpha_wolf_critical_strike = {
		crit_mult = 750,
	},

	rattletrap_battery_assault = {
		duration = 14
	},

	naga_siren_mirror_image = {
		images_count = 6
	},

	phantom_lancer_juxtapose = {
		max_illusions = 14
	},
	
	ancient_apparition_ice_blast = {
		kill_pct = 22
	},
	
	life_stealer_rage = {
		duration = 10.5,
	},
	
	undying_tombstone = 
	{
		duration = 45,
	},
	
	skywrath_mage_concussive_shot = {
		slow_duration = 6,
	},
	
	razor_eye_of_the_storm = {
		radius = 1000,
	},
	
	furion_wrath_of_nature = {
		max_targets = 25,
		damage_percent_add = 25,
		jump_delay = 0.25
	},
	
	medusa_mystic_snake = {
		radius = 950,
		snake_jumps = 12,
		snake_mana_steal = 100,
		snake_scale = 55,
		jump_delay = 0.25,
		movement_slow = 80
	},
	
	troll_warlord_berserkers_rage = {
		trance_duration = 10
	},
	
	spirit_breaker_bulldoze = {
		status_resistance = 90,
		duration = 10,
	},
	
	bloodseeker_bloodrage = {
		damage_pct = 2.1
	},
	
	zuus_thundergods_wrath = {
		damage_pct = 22
	},
	
	troll_warlord_battle_trance = {
		trance_duration = 13
	},
	
	viper_viper_strike = {
		duration = 12
	},
	
	doom_bringer_infernal_blade = {
		burn_damage_pct = 7.5,
		burn_duration = 9, 
	},
	
	winter_wyvern_arctic_burn = {
		attack_range_bonus = 800,
		damage_duration = 8,
		percent_damage = 17.5,
	},
	
	doom_bringer_doom = {
		duration = 24
	},
	
	luna_eclipse = {
		beams = 30,
		hit_count = 30,
	},
	
	visage_summon_familiars = {
		familiar_hp = 1750,
		tooltip_familiar_count = 5,
	},
	
	abyssal_underlord_firestorm = 
	{
		burn_damage = 8,
	},
	
	--ITEMS:
	item_grove_bow = {
		magic_resistance_reduction = 35
	},

	item_philosophers_stone = {
		bonus_damage = 30
	},

	item_specialists_array = {
		count = 10,
	},

	item_paladin_sword = {
		bonus_amp = 35
	},

	item_vindicators_axe = {
		bonus_damage = 75,
		bonus_armor = 50,
	},

	item_enchanted_quiver = {
		bonus_damage = 350,
		active_bonus_attack_range = 650,
	},

	item_dandelion_amulet = {
		magic_block = 600,
	},

	item_cloak_of_flames = {
		damage = 150,
		damage_illusions = 75,
	},

	item_ascetic_cap = {
		status_resistance = 75,
		slow_resistance = 75,
	},

	item_stormcrafter = {
		damage = 400,
		max_targets = 6,
	},

	item_havoc_hammer = {
		nuke_base_dmg = 350,
		nuke_str_dmg = 3,
	},

	item_martyrs_plate = {
		damage_redirection = 75,
	},

	item_demonicon = {
		summon_duration = 125,
	},

	item_fallen_sky = {
		impact_damage_units = 350,
		burn_dps_units = 120,
	},

	item_force_field = {
		bonus_aoe_armor = 15,
		bonus_aoe_mres = 40,
		active_reflection_pct = 75,
	},

	item_trident = {
		bonus_strength = 60,
		bonus_agility = 60,
		bonus_intellect = 60,
		status_resistance = 60,
		bonus_attack_speed = 75,
		movement_speed_percent_bonus = 35,
		hp_regen_amp = 60,
		mana_regen_multiplier = 60,
		spell_amp = 50,
		magic_damage_attack = 100,
	},
	
}

_G.SPELL_UPGRADES_TOOLTIP_DEPENDENCIES = {
	medusa_split_shot = {
		damage_modifier_tooltip = "damage_modifier"
	},

	chaos_knight_phantasm = {
		outgoing_damage_tooltip = "outgoing_damage",
		incoming_damage_tooltip = "incoming_damage"
	},

	shadow_demon_disruption = {
		illusion_outgoing_tooltip = "illusion_outgoing_damage",
		tooltip_total_illusion_incoming_damage = "illusion_incoming_damage"
	},

	phantom_lancer_juxtapose = {
		tooltip_total_illusion_damage_in_pct = "illusion_damage_in_pct"
	},

	naga_siren_mirror_image = {
		outgoing_damage_tooltip = "outgoing_damage",
		tooltip_incoming_damage_total_pct = "incoming_damage",
	},

	shadow_demon_soul_catcher = {
		illusion_outgoing_damage_tooltip = "illusion_outgoing_damage",
		illusion_incoming_damage_tooltip = "illusion_incoming_damage",
	},

	terrorblade_reflection = {
		illusion_outgoing_tooltip = "illusion_outgoing_damage"
	},

	terrorblade_conjure_image = {
		illusion_outgoing_tooltip = "illusion_outgoing_damage",
		illusion_incoming_damage_total_tooltip = "illusion_incoming_damage",
	},

	grimstroke_dark_portrait = {
		images_take_damage_percent_tooltip = "images_take_damage_percent",
		images_do_damage_percent_tooltip = "images_do_damage_percent",
	},
	
}

--spells with MIN VALUE that after all upgrades will not have applied talents (only AbilityValues KV, AbilitySpecial KV apply talents inside lua spell file)
--Slardar with armor reduction want to have applied talents
--Luna with glaives dmg reduction doesn't want to have applied talents (because it will increase value if it already reached 0)
_G.BLOCK_ADDING_TALENT_OVER_SPELL_VALUE_LIMIT = {
	luna_moon_glaive = {
		damage_reduction_percent = true
	},

	techies_land_mines = {
		activation_delay = true
	},
}

_G.ALLOW_VERY_SMALL_UPGRADE_VALUES = {
	pudge_flesh_heap_dark_moon = {
		flesh_heap_strength_buff_amount = true
	},

	pudge_dismember = {
		strength_damage = true
	},

	invoker_chaos_meteor = {
		damage_interval = true
	},

	gyrocopter_flak_cannon = {
		fire_rate = true
	},

	queenofpain_masochist = {
		spell_amplification_per_level = true,
	},
}

_G.NON_RELATIVE_BIG_UPGRADES = {
	axe_battle_hunger = 
	{
		armor_multiplier = true
	},

	bristleback_viscous_nasal_goo = {
		stack_limit = true,
	},

	legion_commander_overwhelming_odds = {
		shield_per_damage_pct = true,
	},
}


--Uses only for properties that have excluded words but we want to use them
_G.SPELL_FORCED_PROPERTY_UPGRADES = {
	juggernaut_blade_fury = {
		shard_attack_rate = true,
		shard_damage_pct = true,
		shard_bonus_move_speed = true,
	},

	luna_moon_glaive = {
		rotating_glaives = true,
		rotating_glaives_damage_reduction = true,
		rotating_glaives_collision_damage = true,
		rotating_glaives_duration = true,
	},

	storm_spirit_overload = {
		shard_activation_radius = true,
		shard_activation_charges = true,
		shard_attack_speed_bonus = true,
		shard_activation_duration = true,
	},

	--items
	item_specialists_array = {
		AbilityCooldown = true,
	},

	item_dandelion_amulet = {
		AbilityCooldown = true,
	},

	item_enchanted_quiver = {
		AbilityCooldown = true,
	},

	item_ascetic_cap = {
		AbilityCooldown = true,
	},
	
	mud_golem_rock_destroy_Hero = {
		shard_health = true,
		shard_damage = true,
		shard_duration = true,
		shard_amount = true,
	},
	
	satyr_soulstealer_health_burn = {
		burn_amount = true,	
		str_multiplier = true,
	},
	
	luna_eclipse = {
		beams = true,
		hit_count = true,
	},
	
	visage_summon_familiars = {
		familiar_hp = true,
		tooltip_familiar_count = true,
	},
	
	wisp_spirits = {
		spirit_amount = true,
	},
}
_G.SPELL_PROPERTY_FORCED_ORIGINAL_VALUE = {
	queenofpain_masochist = {
		spell_amplification_per_level = 1,
	},
}

_G.SPELL_SHOW_SHARD_INFO = {
	storm_spirit_overload = {
		properties = {
			shard_activation_radius = true,
			shard_activation_charges = true,
			shard_attack_speed_bonus = true,
			shard_activation_duration = true,
		},

		need_update_values = false
	},

	luna_moon_glaive = {
		properties = {
			rotating_glaives = true,
			rotating_glaives_damage_reduction = true,
			rotating_glaives_collision_damage = true,
			rotating_glaives_duration = true
		},

		need_update_values = true
	},
}

_G.RELATIVE_LEVELS_TO_COMPARE = {
}

_G.SHOW_MINUS_UPGRADE_TOOLTIP =  {
	necrolyte_sadist  = {
		bonus_damage = true
	},

	windrunner_focusfire = {
		focusfire_damage_reduction = true
	},

	shredder_chakram = {
		mana_per_second = true
	},
	
	item_desolator_2 = {
		corruption_armor = true,
	},
}

_G.FORCE_NO_MINUS_UPGRADE_TOOLTIP = {
	dragon_knight_breathe_fire = {
		reduction = true
	},
}

_G.SPELL_PROPERTY_FORCED_VALUE = {
	-- drow_ranger_multishot = {
	-- 	AbilityChannelTime = {
	-- 		value = 10,
	-- 	}
	-- }
}

_G.EXTRA_ABILITY_PROPERTY = {
	windrunner_focusfire = {
		AbilityDuration = true
	},
	
	--meepo_divided_we_stand= {
	--	tooltip_clones = true,
	--},

	-- storm_spirit_ball_lightning = {
	-- 	["#AbilityDamage"] = true
	-- },
	
	-- kunkka_ghostship = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- death_prophet_carrion_swarm = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- mirana_arrow = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- nevermore_requiem = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- skeleton_king_hellfire_blast = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- sven_storm_bolt = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- zuus_lightning_bolt = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- tidehunter_ravage = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- tidehunter_dead_in_the_water = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- lich_frost_nova = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- aghsfort_witch_doctor_maledict = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- necrolyte_death_pulse = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- dragon_knight_dragon_tail = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- leshrac_diabolic_edict = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- ancient_apparition_ice_blast = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- ursa_earthshock = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- gyrocopter_homing_missile = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- pangolier_gyroshell = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- void_spirit_dissimilate = {
	-- 	["#AbilityDamage"] = true
	-- },
	-- leshrac_split_earth = {
	-- 	["#AbilityDamage"] = true
	-- },
}