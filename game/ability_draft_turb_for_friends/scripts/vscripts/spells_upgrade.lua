--special ability upgrades
--Special Upgrades for Abilities:
LinkLuaModifier("modifier_ability_value_upgrades_sb_2023", "modifiers/special_upgrades/modifier_ability_value_upgrades_sb_2023", LUA_MODIFIER_MOTION_NONE)

LinkLuaModifier("modifier_enchantress_impetus_doubled_upgrade", "modifiers/special_upgrades/modifier_enchantress_impetus_doubled_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_enchantress_impetus_no_mana", "modifiers/special_upgrades/modifier_enchantress_impetus_no_mana", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_sniper_assissinate_chance_dark_moon", "modifiers/special_upgrades/modifier_sniper_assissinate_chance_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_sniper_assissinate_scatter_dmg_ad_2023", "modifiers/special_upgrades/modifier_sniper_assissinate_scatter_dmg_ad_2023", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_disruptor_thunder_chance_dark_moon", "modifiers/special_upgrades/modifier_disruptor_thunder_chance_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_earthshaker_aftershock_chance_dark_moon", "modifiers/special_upgrades/modifier_earthshaker_aftershock_chance_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_medusa_snake_fall_mana_dark_moon", "modifiers/special_upgrades/modifier_medusa_snake_fall_mana_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_juggernaut_cd_omnislash_dark_moon", "modifiers/special_upgrades/modifier_juggernaut_cd_omnislash_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_bristleback_quilled_dark_moon", "modifiers/special_upgrades/modifier_bristleback_quilled_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_faceless_void_small_chrono_dark_moon", "modifiers/special_upgrades/modifier_faceless_void_small_chrono_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_snapfire_cookie_dark_moon", "modifiers/special_upgrades/modifier_snapfire_cookie_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_lina_laguna_blade_effect_dark_moon", "modifiers/special_upgrades/modifier_lina_laguna_blade_effect_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_drow_ranger_frost_arrow_freez_dark_moon", "modifiers/special_upgrades/modifier_drow_ranger_frost_arrow_freez_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_witch_doctor_paralyzing_cask_dark_moon", "modifiers/special_upgrades/modifier_witch_doctor_paralyzing_cask_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_lion_mana_hex_around_dark_moon", "modifiers/special_upgrades/modifier_lion_mana_hex_around_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_pangolier_revolver_dark_moon", "modifiers/special_upgrades/modifier_pangolier_revolver_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_lone_druid_little_bear_dark_moon", "modifiers/special_upgrades/modifier_lone_druid_little_bear_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_drow_ranger_multishot_chance_dark_moon", "modifiers/special_upgrades/modifier_drow_ranger_multishot_chance_dark_moon", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_pudge_dismember_hooks_upgrade", "modifiers/special_upgrades/modifier_pudge_dismember_hooks_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_fiends_grip_nightmare_hunger_upgrade", "modifiers/special_upgrades/modifier_fiends_grip_nightmare_hunger_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_dk_breathe_fire_extra_attack_upgrade", "modifiers/special_upgrades/modifier_dk_breathe_fire_extra_attack_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_db_hammer_attack_chance_upgrade", "modifiers/special_upgrades/modifier_db_hammer_attack_chance_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_windrunner_attack_powershot_upgrade", "modifiers/special_upgrades/modifier_windrunner_attack_powershot_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_lina_light_strike_array_slave_upgrade", "modifiers/special_upgrades/modifier_lina_light_strike_array_slave_upgrade", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_antimage_attack_mana_void", "modifiers/special_upgrades/modifier_antimage_attack_mana_void", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_phantom_assassin_auto_dagger_ad_2023", "modifiers/special_upgrades/modifier_phantom_assassin_auto_dagger_ad_2023", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_marci_unleash_attack_buff_ad_2023", "modifiers/special_upgrades/modifier_marci_unleash_attack_buff_ad_2023", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_zeus_bolt_counter_attack_ad_2023", "modifiers/special_upgrades/modifier_zeus_bolt_counter_attack_ad_2023", LUA_MODIFIER_MOTION_NONE)

if CDungeonSpellsUpgrade == nil then
	CDungeonSpellsUpgrade = class({})
end

function CDungeonSpellsUpgrade:Init( gameMode)
	self.gameMode = gameMode
    self.abilityUpgrades = {}
    self.maxUpgradesCount = 2

    --extra abilities from golden treasure
	self.abilityRerollQueue = {}
	self.reservedAbilitiesForPlayers = {}
    self.heroMaxLevelExtraTreasure = {}

    self.abilityLevelUpgradeBase = 1
    self.ulitmateLevelUpgradeBase = 2
    self.invokerMaxAbilityLevel = 8

    self.bigAbilityValue = 7
    
    self.minUpgradeValue = 0.1
    self.verySmallUpgradeValue = 0.01

    self.baseMinUpgrade = 14
    self.baseMaxUpgrade = 24
	
    self.nonRelativeUpgrades = 0.65
    self.nonRelativeUpgradesBigValues = 0.5

    self.mythicalMinUpgradeValue = 28
    self.mythicalMaxUpgradeValue = 38

    self.smallValueChangeMultiplier = 1.25
    self.verySmallValueChangeMultiplier = 1.65
    self.tinyValueChangeMultiplier = 10

    self.playersUpgradeOptions = {}
    self.playersAwaitingUpgradeOptions = {}

    self.playersPickedSpecialAbilities = {}
    self.playersPickedBaseAbilityUpgrades = {}

    self.maxProcessAttemptsToLocalizeAbility = 10
    self.maxTotalAttemptsToLocalizeAbility = 5

    self.timeToLocalizeAbility = 1.5
    self.delayPerAttemptToLocalizeAbility = 0.5

    --max 10 attempts (+1s extra delay after last attempt)
    self.maxTimeToLocalizeAbilitiesStartGame = 1.5 * self.maxProcessAttemptsToLocalizeAbility + self.delayPerAttemptToLocalizeAbility * (1+2+3+4+5+6+7+8+9+10) + 1
    self.maxTimeToLocalizeAbilities = 5

    local maxPlayers = self.gameMode.maxPlayers or DOTA_MAX_PLAYERS

    --shard upgrades info for Ability Tooltips
    --Tooltips for shards that are not new abilities are not updated when ability values are changed
    self.shardsValueInfo = {}

    --neutral items value info (tolltips for items if they are not normal as ability but use +/- prefixes will not update values with upgrades)
    self.neutralItemsValueInfo = {}

    for playerID = 0, maxPlayers, 1 do
        self:InitializePlayerAwaitingUpgradesTable(playerID)
        self:InitializePlayerShardValueInfo(playerID)
        self:InitializePlayerNeutralItemsValueInfo(playerID, nil, nil)
    end

    --Start thinker for queue hero rerolls
	GameRules:GetGameModeEntity():SetThink( "ExtraAbilityReservingQueueThink", self, "ExtraAbilityReservingQueueThinker", 0)

    self.playerDisabledUpgrades = {}

    self.excludedSpellPropertyStrings = {
		"AbilityCooldown",
		"AbilityManaCost",

		"Tooltip",
		"tooltip",

        --shard blocked, but for single hero can be unlocked
		"shard",

		"scepter",
		"var_type",
		"RequiresShard",
		"RequiresScepter",
		"LinkedSpecialBonus",
		"LinkedSpecialBonusOperation",
		"LinkedSpecialBonusField",
        "special_bonus_shard",
        "special_bonus_scepter",

        --new
        "SpecialUpgradeLevel30",
	}

    self.scepterShardUpgradeStrings = {
        "special_bonus_shard",
        "special_bonus_scepter",
        "RequiresScepter",
        "RequiresShard",
    }

    self.baseAbilitySpecialNames = {
        AbilityDamage  = "Damage"
    }

    self.upgradeToIntegerPropertyStrings = {
		count = true,
		strikes = true,
		charges = true,
		Charges = true,
		stack_limit = true,
		bounces = true,
		targets = true,
		jumps = true,
        stacks = true,
        _armor = true,
        _movement_speed = true,
        bonus_damage = true,
        _arrow_ = true,
        _attributes = true,
        _stats = true,
    }

    --SPECIAL UPGRADES
    self.specialAbilityInfo = {
        -- npc_dota_hero_pudge = {
        --     pudge_dismember = {
        --         pudge_dismember_hooks = {
        --             -- "FISHING: Pudge cast hooks in random directions during channeling ultimate.",
        --             modifier = "modifier_pudge_dismember_hooks_upgrade",
        --             isCustomTooltip = true,
        --         }
        --     }
        -- },
    
        npc_dota_hero_lina = {
            lina_dragon_slave = {
                -- 3x Dragon Slave.
                triple_strike = {
                    modifier = "modifier_lina_light_strike_array_slave_upgrade",
                    isBaseTooltip = true,
                }
            }
        },
    
        -- npc_dota_hero_ogre_magi = {
        --     ogre_magi_ignite = {
        --         stuns = {
        --             desc = "IGNITED: Every unit affected with Ignite will get stun from Fireblast.",
        --             modifier = ""
        --         }
        --     }
        -- },
    
        npc_dota_hero_windrunner = {
            windrunner_powershot = {
                -- triple = {
                --     desc = "TRIPLED: After first PowerShot 2 next will be cast in the same direction in short time interval.",
                --     modifier = ""
                -- },

                --every attack have chance to proc PowerShot
                attack_shot = {
                    modifier = "modifier_windrunner_attack_powershot_upgrade",
                    isCustomTooltip = true,
                    values = {
                        chance = 16,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "16%",
                    }
                }
            }
        },

        npc_dota_hero_antimage = {
            antimage_mana_void = {
                --every attack have chance to proc Mana Void
                attack_shot = {
                    modifier = "modifier_antimage_attack_mana_void",
                    isCustomTooltip = true,
                    values = {
                        chance = 12,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "12%",
                    }
                }
            }
        },
    
        -- npc_dota_hero_queenofpain = {
        --     queenofpain_blink = {
        --         screamed = {
        --             desc = "SCREAMED: After finished blink Scream of Pain will be cast.",
        --             modifier = ""
        --         }
        --     }
        -- },
        -- npc_dota_hero_vengefulspirit = {
        --     vengefulspirit_wave_of_terror = {
        --         missiled = {
        --             desc = "MISSILED: Enemy units affected with Wave of Terror have 50% chance to be stunned.",
        --             modifier = ""
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_venomancer = {
        --     venomancer_venomous_gale = {
        --         plagued = {
        --             desc = "PLAGUED: There is a 25% chance that 1 Plague Wards and 1 Scourge Ward will be created on enemy position when they are affected by Venomous Gale.",
        --             modifier = ""
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_enchantress = {
        --     enchantress_impetus = {
        --         impetused = {
        --             desc = "IMPETUSED: There is a 22% chance that 3 additional attacks will be performed in 1200 range (hits the farthest enemies). Works with Impetus and additional attacks have 0 cost.",
        --             isCustomTooltip = true,
        --             modifier = "modifier_enchantress_impetus_doubled_upgrade",
        --             values = {
        --                 chance = 22,
        --                 extra_attacks = 3,
        --                 tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%",
        --                 tooltip_value_1 = 22,
        --                 tooltip_name_2 = "%dMODIFIER_PROPERTY_TOOLTIP2%",
        --                 tooltip_value_2 = 3
        --             }
        --         }
        --     }
        -- },
    
        npc_dota_hero_sniper = {
            sniper_assassinate_ad_2023 = {
                assassinated = {
                    -- "ASSASSINATED: There is a 10% chance that during attacks Assasstinate will be cast on targeted enemy (no stun).",
                    isCustomTooltip = true,
                    modifier = "modifier_sniper_assissinate_chance_dark_moon",
                    values = {
                        chance = 10,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "10%"
                    }
                },

                scatter = {
                    -- "ASSASSINATED: There is a 10% chance that during attacks Assasstinate will be cast on targeted enemy (no stun).",
                    isCustomTooltip = true,
                    modifier = "modifier_sniper_assissinate_scatter_dmg_ad_2023",
                    values = {
                        scatter_damage = 25,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "25%"
                    }
                },   
            }
        },
    
        -- npc_dota_hero_disruptor = {
        --     disruptor_thunder_strike = {
        --         thundered = {
        --             desc = "THUNDERED: There is a 35% chance that during attacks Thunder Strike will be cast on targeted enemy.",
        --             modifier = "modifier_disruptor_thunder_chance_dark_moon"
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_necrolyte = {
        --     necrolyte_sadist = {
        --         pulsed = {
        --             desc = "PULSED: Ghost Shroud is cast 2 x Death Pulse will be created.",
        --             modifier = "modifier_disruptor_thunder_chance_dark_moon"
        --         }
        --     }
        -- },
    
        npc_dota_hero_earthshaker = {
            earthshaker_aftershock = {
                aftershocked = {
                    -- TRY ME-TOUCH ME: After receiving 10 attacks 2x AfterShock will be triggered
                    modifier = "modifier_earthshaker_aftershock_chance_dark_moon",
                    isCustomTooltip = true,
                    values = {
                        attacks = 10,
                        counter = 1,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%",
                        tooltip_value_1 = 10,
                        tooltip_name_2 = "%dMODIFIER_PROPERTY_TOOLTIP2%",
                        tooltip_value_2 = 1
                    }
                }
            }
        },
    
        npc_dota_hero_medusa = {
            medusa_mystic_snake = {
                snaked = {
                    desc = "ANGRY SNAKES: 2x Mystic Snake will be cast when Medusa mana pool falls below 20% (cast range x2, cooldown: 10s).",
                    modifier = "modifier_medusa_snake_fall_mana_dark_moon",
                    isCustomTooltip = true,
                    values = {
                        cooldown = 10,
                        maxSnakes = 2,

                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%",
                        tooltip_value_1 = 10,
                        tooltip_name_2 = "%dMODIFIER_PROPERTY_TOOLTIP2%",
                        tooltip_value_2 = 2
                    }
                }
            }
        },
    
        npc_dota_hero_juggernaut = {
            juggernaut_omni_slash = {
                cd = {
                    -- ENDLESS SLASHES: During Omnislash every perfomed attack reduces current Omnislash cooldown by 2s
                    modifier = "modifier_juggernaut_cd_omnislash_dark_moon",
                    isCustomTooltip = true,
                    values = {
                        cooldown_reduction = 1.5,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%",
                        tooltip_value_1 = 1.5,
                    }
                }
            }
        },
    
        -- npc_dota_hero_zuus = {
        --     zuus_heavenly_jump = {
        --         jumped = {
        --             desc ="LIGHT JUMPS: After Heavenly Jump Zeus will cast 2 x Arc Lightning (cast range x2).",
        --             modifier = ""
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_bristleback = {
        --     bristleback_quill_spray = {
        --         quilled = {
        --             desc = "PRICKLY SHELL: Every time Bristleback HP falls below 5% he will hide in the Prickly Shell where can't be hurt and gets 10% regen per 0.5s. Shell casts Quill Spray. (duration: 5s, cooldown: 45s).",
        --             modifier = "modifier_bristleback_quilled_dark_moon",
        --             values = {
        --                 hpMargines = 0.15,
        --                 hpRegen = 0.1,
        --                 duration = 5.1,
        --                 interval = 0.5,
        --                 coolDown= 45
        --             }
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_faceless_void = {
        --     faceless_void_time_walk = {
        --         sphered = {
        --             desc = "SPHERED: After finished Time Walk the Small Chronosphere will be cast there (200 radius, 1.75s duration)." ,
        --             modifier = "modifier_faceless_void_small_chrono_dark_moon"
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_snapfire = {
        --     snapfire_scatterblast = {
        --         cooked = {
        --             desc = "COOKED: After ScatterBlast 3 Mortimer Kisses will be placed on the ground." ,
        --             modifier = "modifier_snapfire_cookie_dark_moon"
        --         }
        --     }
        -- },
    
        npc_dota_hero_drow_ranger = {
            drow_ranger_multishot = {
                -- frozen = {
                --     desc = "CHILLY-PERSON: Units that are under Frost Arrows more than 3s freeze for 1.75s" ,
                --     modifier = "modifier_drow_ranger_frost_arrow_freez_dark_moon",
                --     values = {
                --         interval = 3.0,
                --         stun = 1.75
                --     }
                -- }
    
                arrows = {
                    -- "ENDLESS ARROWS: There is a 10% chance that during attacks Multishot will be cast towards the targeted unit." ,
                    isCustomTooltip = true,
                    modifier = "modifier_drow_ranger_multishot_chance_dark_moon",
                    values = {
                        chance = 18,
                        wave_count = 1,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "18%",

                        tooltip_name_2 = "%dMODIFIER_PROPERTY_TOOLTIP2%",
                        tooltip_value_2 = 1
                    }
                }
            }
        },
    
        -- npc_dota_hero_witch_doctor = {
        --     witch_doctor_paralyzing_cask = {
        --         freeward = {
        --             -- "THE WILD WARD: After 6 Paralyzing Casks bounces the Death Ward will be placed on the last enemy position. Attacks 3 units with 125 dmg (not bounces), lasts 4.5s. (There can be only 1 ward)." ,
        --             isCustomTooltip = true,
        --             modifier = "modifier_witch_doctor_paralyzing_cask_dark_moon",
        --             values = {
        --                 bounces = 6,
        --                 maxAttacks = 2,
        --                 wardDuration = 4.5,
        --                 damage = 100,

        --                 tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%",
        --                 tooltip_value_1 = 6,
        --                 tooltip_name_2 = "%dMODIFIER_PROPERTY_TOOLTIP2%",
        --                 tooltip_value_2 = 2
        --             }
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_lion = {
        --     lion_mana_drain = {
        --         hexed = {
        --             desc = "TOAD HATCHERY: When Lion use Mana Drain every enemy unit in 750 radius is hexed for 50% current Hex duration." ,
        --             modifier = "modifier_lion_mana_hex_around_dark_moon",
        --             values = {
        --                 range = 750,
        --                 multiplier = 0.5
        --             }
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_pangolier = {
        --     pangolier_swashbuckle = {
        --         revolver = {
        --             desc = "EXTRA REVOLVER: SWASHBUCKLE damage is increased by 75% of current Pangolier attack damage." ,
        --             modifier = "modifier_pangolier_revolver_dark_moon",
        --             values = {
        --                 damage = 75,
        --             }
        --         }
        --     }
        -- },
    
        -- npc_dota_hero_lone_druid = {
        --     lone_druid_spirit_bear = {
        --         little_bear = {
        --             desc = "MY LITTLE BEAR: Lone Druid will summon a little bear (175 dmg and 0.5 attack speed) but he can't hold any items. This little bear sometimes gets scared and runs away on his dad's back. (Unit uncontrollable).",
        --             modifier = "modifier_lone_druid_little_bear_dark_moon"
        --         }
        --     }
        -- },

        -- npc_dota_hero_bane = {
        --     bane_fiends_grip = {
        --         nightmare_hungry = {
        --             -- "NIGHTMARE HUNGER: During Ultimate Bane use Brainsap every 1s on the target."
        --             modifier = "modifier_fiends_grip_nightmare_hunger_upgrade",
        --             isCustomTooltip = true,
        --             values = {
        --                 interval = 1,
        --                 tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%",
        --                 tooltip_value_1 = 1,
        --             }
        --         }
        --     }
        -- },
        npc_dota_hero_dragon_knight= {
            dragon_knight_breathe_fire = {
                fire_attack = {
                    -- "FIRE ATTACK: There is a 10% chance that during attacks Breathe Fire will be cast towards the targeted unit."
                    modifier = "modifier_dk_breathe_fire_extra_attack_upgrade",
                    isCustomTooltip = true,
                    values = {
                        chance = 18,
                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "18%",
                    }
                }
            }
        },

        --currently broken cause of Aghanim abilities
        -- npc_dota_hero_dawnbreaker= {
        --     dawnbreaker_celestial_hammer = {
        --         solar_hammers = {
        --             -- "SOLAR HAMMERS: There is a 12% chance that Dawnbreaker will cast Celestial Hammer towards an enemy that deals damage to her."
        --             modifier = "modifier_db_hammer_attack_chance_upgrade",
        --             extra_abilities = {"aghsfort_dawnbreaker_celestial_hammer", "aghsfort_dawnbreaker_converge"},
        --             isCustomTooltip = true,
        --             values = {
        --                 chance = 15,
        --                 cooldown = 2.5,
        --                 tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
        --                 tooltip_value_1 = "12%",

        --                 tooltip_name_2 = "%2fMODIFIER_PROPERTY_TOOLTIP2%",
        --                 tooltip_value_2 = 2.5
        --             }
        --         }
        --     }
        -- },

        -- npc_dota_hero_winter_wyvern = {
        --     aghsfort_winter_wyvern_arctic_burn = {
        --         splash_arctic = {
        --             -- "Arctic Burn attacks damage enemies in a %value% radius around the target.",
        --             ability = "aghsfort_special_winter_wyvern_arctic_burn_splash_damage",
        --         },

        --         -- double_arctic = {
        --         --     desc = "Arctic Burn attacks damage enemies in a %value% radius around the target.",
        --         --     ability = "aghsfort_special_winter_wyvern_arctic_burn_doubleattack",
        --         -- }
        --     }
        -- },

        -- npc_dota_hero_slark = {
        --     aghsfort_slark_dark_pact = {
        --         essence_shift = {
        --             ability = "aghsfort_special_slark_dark_pact_essence_shift"
        --         }
        --     }
        -- },

        npc_dota_hero_phantom_assassin = {

            --currently broken cause of Aghanim abilities
            -- aghsfort_phantom_assassin_stifling_dagger = {
            --     dagger_on_attack = {
            --         -- "auto dagger every 2.5s.",
            --         ability = "aghsfort_special_phantom_assassin_stifling_dagger_autodagger",
            --     }
            -- },

            phantom_assassin_stifling_dagger = {
                dagger_on_attack = {
                    -- "auto dagger every 2.5s.",
                    modifier = "modifier_phantom_assassin_auto_dagger_ad_2023",
                    isCustomTooltip = true,
                    values = {
                        cooldown = 3.5,

                        tooltip_name_1 = "%1fMODIFIER_PROPERTY_TOOLTIP%",
                        tooltip_value_1 = 3.5,
                    }
                }
            }
        },

        npc_dota_hero_marci = {
            marci_unleash = {
                fury_unleash = {
                    --15% chance to activate single unleash combo when attacks
                    modifier = "modifier_marci_unleash_attack_buff_ad_2023",
                    isCustomTooltip = true,
                    values = {
                        chance = 15,

                        tooltip_name_1 = "%dMODIFIER_PROPERTY_TOOLTIP%%%",
                        tooltip_value_1 = "15%",
                    }
                }
            }
        },

        npc_dota_hero_zuus = {
            zuus_lightning_bolt = {
                counter_bolt = {
                    --15% chance to activate single unleash combo when attacks
                    modifier = "modifier_zeus_bolt_counter_attack_ad_2023",
                    isCustomTooltip = true,
                    values = {
                        cooldown = 6,

                        tooltip_name_1 = "%1fMODIFIER_PROPERTY_TOOLTIP%",
                        tooltip_value_1 = 6,
                    }
                }
            }
        }
    }

    self.marketOffersName = {
        "attack_damage",
        "armor",
        "attack_speed",
        "attack_range",
        "hp",
        "hp_regen",
        "mana",
        "mana_regen",
        "movement_speed",
        "magic_resistance",
        "random_attribute",
        "status_resistance",
        "spell_amp",
    }

    self.marketOffers = {
        attack_damage =
        {
            upgrade = "attack_damage",
            value_range = {20,50},
            icon = "item_blades_of_attack",
            round_to_integers = true,
            downgrades = {
                armor = {
                    multiplier = 0.2
                },
                attack_speed = {
                    multiplier = 1
                },
                attack_range = {
                    multiplier = 5
                },
                hp = {
                    multiplier = 12,
                },
                hp_regen = {
                    multiplier = 0.25,
                },
                mana = {
                    multiplier = 10,
                },
                mana_regen= {
                    multiplier = 0.1,
                },
                movement_speed = {
                    multiplier = 1.5,
                },
                magic_resistance = {
                    multiplier = 0.5,
                },
                random_attribute = {
                    multiplier = 0.5
                },
                status_resistance = {
                    multiplier = 0.5
                },
                spell_amp = {
                    multiplier = 0.5
                }
            }
        },

        armor =
        {
            upgrade = "armor",
            value_range = {3, 9},
            icon = "item_ring_of_protection",
            round_to_integers = true,
            downgrades = {
                attack_speed = {
                    multiplier = 4
                },
                attack_range = {
                    multiplier = 25
                },
                hp = {
                    multiplier = 45,
                },
                hp_regen = {
                    multiplier = 1.5,
                },
                mana = {
                    multiplier = 35,
                },
                mana_regen= {
                    multiplier = 0.75,
                },
                movement_speed = {
                    multiplier = 5,
                },
                magic_resistance = {
                    multiplier = 2,
                },
                random_attribute = {
                    multiplier = 2
                },
                status_resistance = {
                    multiplier = 2
                },
                spell_amp = {
                    multiplier = 2
                }
            }
        },

        attack_speed=
        {
            upgrade = "attack_speed",
            value_range = {20,60},
            icon = "item_gloves",
            round_to_integers = true,
            round_to_nearest = 5,
            downgrades = {
                attack_range = {
                    multiplier = 4
                },
                hp = {
                    multiplier = 9,
                },
                hp_regen = {
                    multiplier = 0.25,
                },
                mana = {
                    multiplier = 7,
                },
                mana_regen= {
                    multiplier = 0.15,
                },
                movement_speed = {
                    multiplier = 1.5,
                },
                magic_resistance = {
                    multiplier = 0.65,
                },
                random_attribute = {
                    multiplier = 0.65
                },
                status_resistance = {
                    multiplier = 1.5
                },
                spell_amp = {
                    multiplier = 1.5
                }
            }
        },

        attack_range =
        {
            upgrade = "attack_range",
            value_range = {50, 100},
            icon = "item_dragon_lance",
            round_to_integers = true,
            round_to_nearest = 5,
            downgrades = {
                hp = {
                    multiplier = 3.5,
                },
                hp_regen = {
                    multiplier = 0.1,
                },
                mana = {
                    multiplier = 3,
                },
                mana_regen= {
                    multiplier = 0.05,
                },
                movement_speed = {
                    multiplier = 0.35,
                },
                magic_resistance = {
                    multiplier = 0.15,
                },
                random_attribute = {
                    multiplier = 0.15
                },
                status_resistance = {
                    multiplier = 0.15
                },
                spell_amp = {
                    multiplier = 0.1
                }
            }
        },

        hp =
        {
            upgrade = "hp",
            value_range = {150, 250},
            icon = "item_vitality_booster",
            round_to_integers = true,
            round_to_nearest = 5,
            downgrades = {
                hp_regen = {
                    multiplier = 0.025,
                },
                mana = {
                    multiplier = 1.25,
                },
                mana_regen= {
                    multiplier = 0.0075,
                },
                movement_speed = {
                    multiplier = 0.1,
                },
                magic_resistance = {
                    multiplier = 0.035,
                },
                random_attribute = {
                    multiplier = 0.045,
                },
                status_resistance = {
                    multiplier = 0.035,
                },
                spell_amp = {
                    multiplier = 0.035,
                }
            }
        },

        hp_regen =
        {
            upgrade = "hp_regen",
            value_range = {4, 15},
            icon = "item_ring_of_regen",
            round_to_integers = false,
            round_to_nearest = 0.25,
            downgrades = {
                mana = {
                    multiplier = 25,
                },
                mana_regen = {
                    multiplier = 0.5,
                },
                movement_speed = {
                    multiplier = 4,
                },
                magic_resistance = {
                    multiplier = 1
                },
                random_attribute = {
                    multiplier = 1
                },
                status_resistance = {
                    multiplier = 1
                },
                spell_amp = {
                    multiplier = 1
                }
            }
        },

        mana =
        {
            upgrade = "mana",
            value_range = {125, 200},
            icon = "item_energy_booster",
            round_to_integers = true,
            round_to_nearest = 5,
            downgrades = {
                mana_regen= {
                    multiplier = 0.0075,
                },
                movement_speed = {
                    multiplier = 0.075,
                },
                magic_resistance = {
                    multiplier = 0.025,
                },
                random_attribute = {
                    multiplier = 0.035,
                },
                status_resistance = {
                    multiplier = 0.025,
                },
                spell_amp = {
                    multiplier = 0.025,
                }
            }
        },

        mana_regen =
        {
            upgrade = "mana_regen",
            value_range = {1,7},
            round_to_integers = false,
            round_to_nearest = 0.25,
            icon = "item_sobi_mask",
            downgrades = {
                movement_speed = {
                    multiplier = 15,
                },
                magic_resistance = {
                    multiplier = 3,
                },
                random_attribute = {
                    multiplier = 3.5
                },
                status_resistance = {
                    multiplier = 3
                },
                spell_amp = {
                    multiplier = 3
                }
            }
        },

        movement_speed =
        {
            upgrade = "movement_speed",
            value_range = {20,50},
            icon = "item_boots",
            round_to_integers = true,
            downgrades = {
                magic_resistance = {
                    multiplier = 0.2,
                },
                random_attribute = {
                    multiplier = 0.35,
                },
                status_resistance = {
                    multiplier = 0.2,
                },
                spell_amp = {
                    multiplier = 0.2,
                }
            }
        },

        magic_resistance =
        {
            upgrade = "magic_resistance",
            value_range = {7,15},
            icon = "item_cloak",
            round_to_integers = true,
            downgrades = {
                random_attribute = {
                    multiplier = 2
                },
                status_resistance = {
                    multiplier = 1.5
                },
                spell_amp = {
                    multiplier = 1.5
                }
            }
        },

        random_attribute = 
        {
            upgrade = "random_attribute",
            value_range = {7,20},
            -- icon = "item_",
            round_to_integers = true,
            downgrades = {
                status_resistance = {
                    multiplier = 1.5
                },
                spell_amp = {
                    multiplier = 1.25
                }
            }
        },

        status_resistance =
        {
            upgrade = "status_resistance",
            value_range = {7,15},
            icon = "item_sange_and_yasha",
            round_to_integers = true,
            downgrades = {
                spell_amp = {
                    multiplier = 1.25
                }
            }
        },

        spell_amp =
        {
            upgrade = "spell_amp",
            value_range = {5, 12},
            icon = "item_kaya",
            round_to_integers = false,
            round_to_nearest = 0.5,
            downgrades = {
            }
        },
    }
end

function CDungeonSpellsUpgrade:CreatePlayerRandomSpellUpgradesWithNewAbilities(
    playerID, 
    canShowSpecialUpgrade, 
    abilitiesNumber, 
    isUltimate, 
    treasureCount, 
    isFirstDrop,
    reservedChestID
)
    if not self.reservedAbilitiesForPlayers[playerID] then
        self.reservedAbilitiesForPlayers[playerID] = {}
    end

    table.insert(self.abilityRerollQueue, {
        player_id = playerID,
        abilities_number = abilitiesNumber,
        is_ultimate = isUltimate,
        special_upgrade = canShowSpecialUpgrade,
        treasure_count = treasureCount,
        is_first_drop = isFirstDrop,
        reserved_chest_id = reservedChestID
    })
end

function CDungeonSpellsUpgrade:ExtraAbilityReservingQueueThink()
	if not self.abilityRerollQueue or #self.abilityRerollQueue == 0 then
		return 0.1
	end

	local randomAbilityName = ""
	local playerID = self.abilityRerollQueue[1]["player_id"] or -1
	local isUltimate = self.abilityRerollQueue[1]["is_ultimate"] or false
	local abilitiesNumber = self.abilityRerollQueue[1]["abilities_number"] or 1
    local canShowSpecialUpgrade = self.abilityRerollQueue[1]["special_upgrade"] or false
    local treasureCount = self.abilityRerollQueue[1]["treasure_count"] or 1
    local isFirstDrop = self.abilityRerollQueue[1]["is_first_drop"] or false
    local reservedChestID = self.abilityRerollQueue[1]["reserved_chest_id"] or ""

    if GameRules.AbilityDraftRanked.UnreserveAbility and GameRules.AbilityDraftRanked.ReserveRandomBaseAbility and
        GameRules.AbilityDraftRanked.ReserveRandomUltimateAbility 
    then
        if playerID and playerID >= 0 then    
            local hero = PlayerResource:GetSelectedHeroEntity(playerID)
    
            if hero then
                local abilityNames = {}

                for i = 1, abilitiesNumber, 1 do
                    if isUltimate then
                        randomAbilityName = GameRules.AbilityDraftRanked:ReserveRandomUltimateAbility(nil, false)
                    else
                        local excludedAbilityName = nil

                        if not hero:IsHeroRangedAttacker_AD_2023() then
							excludedAbilityName = "muerta_gunslinger"
						end

                        randomAbilityName = GameRules.AbilityDraftRanked:ReserveRandomBaseAbility(excludedAbilityName, false)
                    end
                
                    if randomAbilityName and randomAbilityName ~= "" then
                        table.insert(abilityNames, randomAbilityName)
                    end			
                end

                if #abilityNames > 0 then
                    self.reservedAbilitiesForPlayers[playerID][reservedChestID] = abilityNames
                end

                self:CreatePlayerRandomSpellUpgrades(hero, canShowSpecialUpgrade, true, abilitiesNumber, isUltimate, treasureCount, isFirstDrop, reservedChestID)
            end
        end
    end

	table.remove(self.abilityRerollQueue, 1)

	return 0.1
end

function CDungeonSpellsUpgrade:IsAnySpecialUpgradeAvailable(heroName)
    if self.specialAbilityInfo[heroName] then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:GetSpecialUpgradesDescription(heroName)
    if not self.specialAbilityInfo[heroName] then
        return {}
    end

    local result = {}

    for randomAbilityName, abilityData in pairs(self.specialAbilityInfo[heroName]) do

        for upgradeName, _ in pairs(abilityData) do
            local extraInfo = {}

            local modifierName = self:GetSpecialUpgradeModifierName(heroName, randomAbilityName, upgradeName)
        
            if modifierName and modifierName ~= "" then
                extraInfo = self:GetAbilityExtraInfoUpgradedByModifier(heroName, randomAbilityName, upgradeName, modifierName)
            end
        
            local upgradeAbilityName = self:GetSpecialUpgradeAbilityName(heroName, randomAbilityName, upgradeName)
            if upgradeAbilityName and upgradeAbilityName ~= "" then
                extraInfo = self:GetAbilityExtraInfoUpgradedByOtherAbility(randomAbilityName, upgradeAbilityName)
            end
    
            table.insert(result, {ability_name = randomAbilityName, upgrade_name = upgradeName, upgrade_info = extraInfo})            
        end

    end

    return result
end

function CDungeonSpellsUpgrade:GetAbilitySpecialUpgradesDescription(abilityName)
    local result = {}

    for heroName, upgrades in pairs(self.specialAbilityInfo) do
        if upgrades[abilityName] then
            for upgradeName, _ in pairs(upgrades[abilityName]) do
                local extraInfo = {}
    
                local modifierName = self:GetSpecialUpgradeModifierName(heroName, abilityName, upgradeName)
            
                if modifierName and modifierName ~= "" then
                    extraInfo = self:GetAbilityExtraInfoUpgradedByModifier(heroName, abilityName, upgradeName, modifierName)
                end
            
                local upgradeAbilityName = self:GetSpecialUpgradeAbilityName(heroName, abilityName, upgradeName)
                if upgradeAbilityName and upgradeAbilityName ~= "" then
                    extraInfo = self:GetAbilityExtraInfoUpgradedByOtherAbility(abilityName, upgradeAbilityName)
                end
        
                table.insert(result, {ability_name = abilityName, upgrade_name = upgradeName, upgrade_info = extraInfo})            
            end 
        end      
    end

    return result
end

function CDungeonSpellsUpgrade:IsAnySpecialUpgradeNotPickedV2(hero)
    local playerID = hero:GetPlayerOwnerID()

    for _, data in pairs(self.specialAbilityInfo) do
        for abilityName, abilityUpgrades in pairs(data) do
            if hero:HasAbility(abilityName) then
                for upgradeName, _ in pairs(abilityUpgrades) do
                    if not self:HasPlayerChosenSpecialUpgrade(playerID, abilityName, upgradeName) then
                        return true
                    end 
                end
            end
        end
    end

    return false
end

function CDungeonSpellsUpgrade:IsAnySpecialUpgradeNotPicked(heroName, playerID)
    if not self.specialAbilityInfo[heroName] then
        return false
    end

    for abilityName, upgrades in pairs(self.specialAbilityInfo[heroName]) do
        for upgradeName, _ in pairs(upgrades) do
            if not self:HasPlayerChosenSpecialUpgrade(playerID, abilityName, upgradeName) then
                return true
            end
        end
    end

    return false
end

function CDungeonSpellsUpgrade:IsAnySpecialUpgradeNotPickedForAbility(heroName, abilityName, playerID)
    if not self.specialAbilityInfo[heroName] then
        return false
    end

    if not self.specialAbilityInfo[heroName][abilityName] then
        return false
    end

    for upgradeName, _ in pairs(self.specialAbilityInfo[heroName][abilityName]) do
        if not self:HasPlayerChosenSpecialUpgrade(playerID, abilityName, upgradeName) then
            return true
        end
    end

    return false
end

function CDungeonSpellsUpgrade:IsAnySpecialUpgradeNotPickedForAbilityV2(abilityName, hero)
    local playerID = hero:GetPlayerOwnerID()

    for _, data in pairs(self.specialAbilityInfo) do
        if data[abilityName] then
            for upgradeName, _ in pairs(data[abilityName]) do
                if not self:HasPlayerChosenSpecialUpgrade(playerID, abilityName, upgradeName) then
                    return true
                end
            end
        end
    end

    return false
end

function CDungeonSpellsUpgrade:GetNotPickedSpecialUpgradesForAbility(heroName, abilityName, playerID)
    local upgrades = {}

    if not self.specialAbilityInfo[heroName] or not self.specialAbilityInfo[heroName][abilityName] then
        return upgrades
    end

    for upgradeName, _ in pairs(self.specialAbilityInfo[heroName][abilityName]) do
        if not self:HasPlayerChosenSpecialUpgrade(playerID, abilityName, upgradeName) then
            table.insert(upgrades, upgradeName)
        end
    end

    return upgrades
end

function CDungeonSpellsUpgrade:GetNotPickedSpecialUpgradesForAbilityV2(abilityName, hero)
    local upgrades = {}
    local playerID = hero:GetPlayerOwnerID()

    for heroName, data in pairs(self.specialAbilityInfo) do
        if data[abilityName] then
            for upgradeName, upgradeInfo in pairs(data[abilityName]) do
                if not self:HasPlayerChosenSpecialUpgrade(playerID, abilityName, upgradeName) then

                    local upgradeData = deepcopy(upgradeInfo)
                    upgradeData["hero_name"] = heroName
                    upgradeData["ability_name"] = abilityName
                    upgradeData["upgrade_name"] = upgradeName

                    table.insert(upgrades, upgradeData)
                end
            end
        end
    end

    return upgrades
end

function CDungeonSpellsUpgrade:GetRandomSpellUpgrades(hero, canShowSpecialUpgrade, canShowNewAbility, reservedChestID)
    local upgrades = {}

    if not hero then
        return upgrades
    end

    local playerID = hero:GetPlayerOwnerID() or -1
    local rewardNumber = 0

    --can we show super ability upgrade?
    if canShowSpecialUpgrade and self:IsAnySpecialUpgradeNotPickedV2(hero) then
        local randomSpecialUpgrade = self:GetRandomSuperSpellUpgradeInfoV2(hero)
        
        if randomSpecialUpgrade and randomSpecialUpgrade["upgrade_name"] then
            rewardNumber = rewardNumber + 1

            randomSpecialUpgrade.reward_id = rewardNumber
            randomSpecialUpgrade.special_upgrade = true
            randomSpecialUpgrade.reward_level = "special_upgrade"


            table.insert(upgrades, randomSpecialUpgrade)
        end
        
    end

    --new abilities
    if canShowNewAbility and self.reservedAbilitiesForPlayers[playerID] and self.reservedAbilitiesForPlayers[playerID][reservedChestID] then
        --take abilities reserved for this player and for this treasure (this always will be first element in table)
        local abilityNames = self.reservedAbilitiesForPlayers[playerID][reservedChestID]

        for _, abilityName in pairs(abilityNames) do
            rewardNumber = rewardNumber + 1
            
            table.insert(upgrades, {ability_name = abilityName, reward_level = "new_ability", add_new_ability = true, reward_id = rewardNumber})
        end
    end

    --normal ability upgrades
    local abilityUpgrades = self:GetHeroAbilityUpgradeList(hero)
    local previousUpgradeInfo = {}

	table.insert(previousUpgradeInfo,
		{
			ability_name = "1", 
            property_name = "1",
            reward_level = "",
        }
	)

    local counter = 0
    while #upgrades < self.maxUpgradesCount do
        if counter >= 10 then
            break
        end

        local randomAbilityUpgrade = self:GetRandomBaseAbilityUpgrade(hero, abilityUpgrades, previousUpgradeInfo, 0)

        if randomAbilityUpgrade and randomAbilityUpgrade["ability_name"] and randomAbilityUpgrade["property_name"] then

			table.insert(previousUpgradeInfo,
					{
						ability_name = randomAbilityUpgrade['ability_name'], 
                        property_name = randomAbilityUpgrade['property_name'],
                        reward_level = randomAbilityUpgrade["reward_level"] or "",
                    }
			)

            rewardNumber = rewardNumber + 1

            randomAbilityUpgrade.reward_id = rewardNumber
            randomAbilityUpgrade.base_upgrade = true

            table.insert(upgrades, randomAbilityUpgrade)
        end
	
		for y = 1, #previousUpgradeInfo do
			print(previousUpgradeInfo[y]["ability_name"])
			local x = #abilityUpgrades
			while x > 0 do
				print(abilityUpgrades[x])
				if abilityUpgrades[x] == previousUpgradeInfo[y]["ability_name"] then
					print("removed")
					table.remove(abilityUpgrades, x)
				end
				x = x - 1
			end
		end
		
		if #abilityUpgrades == 0 then
			break
		end
    end

    return upgrades
end

function CDungeonSpellsUpgrade:AddNeutralItemUpradeToPool()
    
end

function CDungeonSpellsUpgrade:GetPlayerAvailableNeutralItems(hero)
    local result = {}

    if not hero then
        return result
    end

    local playerID = hero:GetPlayerOwnerID()
    local availableNeutralItems = hero:GetAllOwnNeutralItems_SB2023() or {}

    for _, itemName in pairs(availableNeutralItems) do
        if not self:IsNeutralItemBlockedByPlayer(playerID, itemName) then
            table.insert(result, itemName)
        end
    end

    return result
end


function CDungeonSpellsUpgrade:IsNeutralItemBlockedByPlayer(playerID, itemName)
    if self.playerDisabledUpgrades[playerID] and self.playerDisabledUpgrades[playerID][itemName] then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:IsAbilityUpgradeBlockedByPlayer(playerID, abilityName, propertyName)
    if self.playerDisabledUpgrades[playerID] and self.playerDisabledUpgrades[playerID][abilityName] and 
        self.playerDisabledUpgrades[playerID][abilityName][propertyName]
    then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:IsHeroAllSpellsUpgradeLocalizated(hero)
    if not hero then
        return false
    end

    local ability_count = hero:GetAbilityCount()
    if not ability_count then
        return false
    end

    for ability_index = 0, ability_count - 1 do
        local ability = hero:GetAbilityByIndex( ability_index )

        if ability then
            if self:IsValidAbilityForUpgrades(ability) and not self:IsAbilityUpgradesAvailable(ability) then
                return false
            end
        end
    end

    return true
end

function CDungeonSpellsUpgrade:IsAbilityUpgradesAvailable(ability)
    if not ability or ability:IsNull() then
        return false
    end

    local abilityName = ability:GetAbilityName() or ""

    if self.abilityUpgrades[abilityName] and self.abilityUpgrades[abilityName]["upgrades_localizated"] then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:IsValidAbilityForUpgrades(ability)
    if not ability or ability:IsNull() then
        return false
    end


    if ability.noUpgradeAvailable or ability.stolenByLongClaws then
        return false
    end

    if ability:IsCosmetic(nil) or ability:IsAttributeBonus() then
        return false
    end

    local abilityName = ability:GetAbilityName()

    if ExcludedSpellUpgrades[abilityName] or string.find(abilityName, "special_bonus_") then
        return false
    end

    if self.abilityUpgrades[abilityName] and self.abilityUpgrades[abilityName]["no_upgrades"] then
        return false
    end

    return true
end

function CDungeonSpellsUpgrade:GetHeroAbilityUpgradeList(hero)
    if not hero then
        return {}
    end

    local abilitiesWithUpgrades = {}
    local ability_count = hero:GetAbilityCount()

    for ability_index = 0, ability_count - 1 do
        local ability = hero:GetAbilityByIndex( ability_index )

        if ability and not ability.noUpgradeAvailable and not ability.stolenByLongClaws then
            local abilityName = ability:GetAbilityName()

            if self.abilityUpgrades[abilityName] and self.abilityUpgrades[abilityName]["upgrades_localizated"] and not self.abilityUpgrades[abilityName]["no_upgrades"] then
                table.insert(abilitiesWithUpgrades, abilityName)
            end
        end
    end

    return abilitiesWithUpgrades
end

function CDungeonSpellsUpgrade:VerifyHeroAbilityUpgradeList(hero)
    if not hero then
        return
    end

    local playerID = hero:GetPlayerOwnerID() or -1
    local ability_count = hero:GetAbilityCount()

    for ability_index = 0, ability_count - 1 do
        local ability = hero:GetAbilityByIndex( ability_index )

        if ability then
            self:VerifySingleAbilityUpgrades(ability, playerID)
        end
    end
end

function CDungeonSpellsUpgrade:VerifySingleAbilityUpgrades(ability, playerID)
    if ability and not ability.noUpgradeAvailable and not ability.stolenByLongClaws then
        if self:IsValidAbilityForUpgrades(ability) and not self:IsAbilityUpgradesAvailable(ability) then
            local abilityName = ability:GetAbilityName()

            if not self.abilityUpgrades[abilityName] then
                self.abilityUpgrades[abilityName] = {
                    upgrades = {},
                    current_process_attempts = 0,
                    total_attempts = 0,
                }
            end

            if not self.abilityUpgrades[abilityName]["total_attempts"] then
                self.abilityUpgrades[abilityName]["total_attempts"] = 0
            end

            if self.abilityUpgrades[abilityName]["total_attempts"] < self.maxTotalAttemptsToLocalizeAbility and 
                not self.abilityUpgrades[abilityName]["process_id"]
            then
                local processID = DoUniqueString("ability_localizator")
                self.abilityUpgrades[abilityName]["process_id"] = processID

                self:CreatePlayerAbilityUpgradeList(abilityName, playerID, 1, processID)
            end
        end
    end
end

function CDungeonSpellsUpgrade:VerifyNeutralItemUpgradeList(item)
    if not item or item:IsNull() then
        return
    end

    local ownerPlayerID = -1

    local playerIDToLocalize = 0
    local purchaser = item:GetPurchaser()
				
    if purchaser and purchaser:GetPlayerOwnerID() then
        playerIDToLocalize = purchaser:GetPlayerOwnerID()
        ownerPlayerID = purchaser:GetPlayerOwnerID()
    end

    if not playerIDToLocalize or playerIDToLocalize == -1 or not GameRules.AbilityDraftRanked:IsPlayerConnected(playerIDToLocalize) then
        local players = GameRules.AbilityDraftRanked:GetConnectedAndNotAFKPlayers()

        if players and #players> 0 then
            playerIDToLocalize = players[RandomInt(1, #players)]
        end
    end

    if not playerIDToLocalize or playerIDToLocalize == -1 then
        return
    end

    local itemName = item:GetAbilityName()

    if itemName == "item_recipe_trident" then
        itemName = "item_trident"
    end

    local neutralItemUpgradesListRdy = true

    if not self.abilityUpgrades[itemName] or (not self.abilityUpgrades[itemName]["upgrades_localizated"] and not self.abilityUpgrades[itemName]["no_upgrades"]) then
        neutralItemUpgradesListRdy = false

        if not self.abilityUpgrades[itemName] then
            self.abilityUpgrades[itemName] = {
                is_item = true,
                upgrades = {},
                current_process_attempts = 0,
                total_attempts = 0,
            }
        end

        if not self.abilityUpgrades[itemName]["total_attempts"] then
            self.abilityUpgrades[itemName]["total_attempts"] = 0
        end

        if self.abilityUpgrades[itemName]["total_attempts"] < self.maxTotalAttemptsToLocalizeAbility and 
            not self.abilityUpgrades[itemName]["process_id"]
        then
            local processID = DoUniqueString("neutral_item_localizator")
            self:CreatePlayerAbilityUpgradeList(itemName, playerIDToLocalize, 1, processID)
        end
    end

    if ownerPlayerID and ownerPlayerID ~= -1 then
        if neutralItemUpgradesListRdy then
            self:UpdateNeutralItemUpgrade(ownerPlayerID)
        else
            Timers:CreateTimer(self.timeToLocalizeAbility, function ()
                self:UpdateNeutralItemUpgrade(ownerPlayerID)
            end)
        end
    end
end

function CDungeonSpellsUpgrade:CreatePlayerAbilityUpgradeList(abilityName, playerID, attemptCounter, processID)
    if not abilityName or not playerID or playerID == -1 then
        return
    end

    if self.abilityUpgrades[abilityName] and self.abilityUpgrades[abilityName]["process_id"] and 
        self.abilityUpgrades[abilityName]["process_id"] ~= processID
    then
        print("there is other process currently processing this ability upgrades: ", abilityName)
        return
    end

    if not self.abilityUpgrades[abilityName] then
        self.abilityUpgrades[abilityName] = {}
    end

    if not self.abilityUpgrades[abilityName]["current_process_attempts"] then
        self.abilityUpgrades[abilityName]["current_process_attempts"] = 0
    end

    self.abilityUpgrades[abilityName]["current_process_attempts"] = self.abilityUpgrades[abilityName]["current_process_attempts"] + 1

    --max attempts count to localize ability exceeded for this process ID
    --ability can be tried to localize again in next process (when player gets treasure with upgrades and this ability has not localized upgrades)
	if not attemptCounter or attemptCounter > self.maxProcessAttemptsToLocalizeAbility then
        self.abilityUpgrades[abilityName]["process_id"] = nil

        if not self.abilityUpgrades[abilityName]["total_attempt_counter"] then
            self.abilityUpgrades[abilityName]["total_attempt_counter"] = 0
        end

        self.abilityUpgrades[abilityName]["total_attempt_counter"]  = self.abilityUpgrades[abilityName]["total_attempt_counter"] + 1
        
		return
	end

	local abilityKeyValues = GetAbilityKeyValuesByName(abilityName)

	if not abilityKeyValues then
        self.abilityUpgrades[abilityName]["process_id"] = nil
        self.abilityUpgrades[abilityName]["no_upgrades"] = true

		return
	end

	local abilityAvailableUpgrades = {}

	-- New Abilities with AbilityValues kv block
	if abilityKeyValues['AbilityValues'] then
		for abilityProperty, propertyData in pairs(abilityKeyValues['AbilityValues']) do
			if not _G.EXCLUDED_SPELL_UPGRADE_PROPERTIES[abilityName] or not _G.EXCLUDED_SPELL_UPGRADE_PROPERTIES[abilityName][abilityProperty] then

				local isPropertyContainsExcludedWords = false

				for _, word in pairs(self.excludedSpellPropertyStrings) do
					if string.find(abilityProperty, word) then
						isPropertyContainsExcludedWords = true

						break
					end
				end

                --unlock to block shard/scepter upgrades and other excluded words
                if propertyData and type(propertyData) == "table" then
                    for _, word in pairs(self.scepterShardUpgradeStrings) do
                        for propertyInfo, _ in pairs(propertyData) do
                            if string.find(propertyInfo, word) then
                                isPropertyContainsExcludedWords = true
                                break
                            end 
                        end

                        if isPropertyContainsExcludedWords then
                            break
                        end
                    end
                end
	
				if not isPropertyContainsExcludedWords or
					(SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName] and SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName][abilityProperty]) or
                    (SPELL_FORCED_PROPERTY_UPGRADES[abilityName] and SPELL_FORCED_PROPERTY_UPGRADES[abilityName][abilityProperty])
				then
					local toolTip = "#DOTA_Tooltip_ability_" .. abilityName
					local toolTipProperty = "#DOTA_Tooltip_ability_" .. abilityName .. "_" .. abilityProperty
					table.insert(abilityAvailableUpgrades,
						{
							ability_name = abilityName,
							ability_property = abilityProperty,
							ability_tooltip_name = toolTip,
							ability_tooltip_property_name = toolTipProperty,
						}
					)
				end

                if EXTRA_ABILITY_PROPERTY[abilityName] then
                    for extraPropertyName, _ in pairs(EXTRA_ABILITY_PROPERTY[abilityName]) do
                        local toolTip = "#DOTA_Tooltip_ability_" .. abilityName
                        local toolTipProperty = "#DOTA_Tooltip_ability_" .. abilityName .. "_" .. extraPropertyName
                        table.insert(abilityAvailableUpgrades,
                            {
                                ability_name = abilityName,
                                ability_property = extraPropertyName,
                                ability_tooltip_name = toolTip,
                                ability_tooltip_property_name = toolTipProperty,
                            }
                        )
                    end
                end
			end
		end
		
	-- Old Abilities with AbilitySpecial kv block
	elseif abilityKeyValues['AbilitySpecial'] then
		for _, abilityValues in pairs(abilityKeyValues['AbilitySpecial']) do
			for abilityProperty, _ in pairs(abilityValues) do
				if not _G.EXCLUDED_SPELL_UPGRADE_PROPERTIES[abilityName] or not _G.EXCLUDED_SPELL_UPGRADE_PROPERTIES[abilityName][abilityProperty] then
					local isPropertyContainsExcludedWords = false

					for _, word in pairs(self.excludedSpellPropertyStrings) do
						if string.find(abilityProperty, word) then
							isPropertyContainsExcludedWords = true
							break
						end
					end

					if not isPropertyContainsExcludedWords or 
                        (SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName] and SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName][abilityProperty]) or
                        (SPELL_FORCED_PROPERTY_UPGRADES[abilityName] and SPELL_FORCED_PROPERTY_UPGRADES[abilityName][abilityProperty])
                    then
						local toolTip = "#DOTA_Tooltip_ability_" .. abilityName
						local toolTipProperty = "#DOTA_Tooltip_ability_" .. abilityName .. "_" .. abilityProperty
						table.insert(abilityAvailableUpgrades,
							{
								ability_name = abilityName,
								ability_property = abilityProperty,
								ability_tooltip_name = toolTip,
								ability_tooltip_property_name = toolTipProperty,
							}
						)
					end
				end
			end
		end
	end

    if PlayerResource:IsValidPlayer(playerID) and PlayerResource:GetConnectionState(playerID) == DOTA_CONNECTION_STATE_CONNECTED then
        CustomGameEventManager:Send_ServerToPlayer( PlayerResource:GetPlayer(playerID), "find_ability_localizations", 
                                                {
                                                    ability_name = abilityName,
                                                    data = abilityAvailableUpgrades,
                                                }
        )
    end

    local delay = self.timeToLocalizeAbility + attemptCounter * self.delayPerAttemptToLocalizeAbility

	Timers:CreateTimer(delay, function ()
		if self.abilityUpgrades[abilityName] then
            if not self.abilityUpgrades[abilityName]["upgrades_localizated"] then
                -- print("ability: ", abilityName, " didn't localizate attempt nr: ", attemptCounter + 1)
                self:CreatePlayerAbilityUpgradeList(abilityName, playerID, attemptCounter + 1, processID)
            end
        end
	end)
end

function CDungeonSpellsUpgrade:AbilityUpgradePick(eventSourceIndex, event)
    if not event.reward or not event.player_id then
		return
	end

    if not self.playersUpgradeOptions[event.player_id] or not self.playersUpgradeOptions[event.player_id]["upgrades"] then
        return
    end

    local playerID = event.player_id
    local hero = PlayerResource:GetSelectedHeroEntity(playerID)
    
    if not hero then
        return
    end
    
    --player available upgrades are always in 1st element (this table should contain only 1 element - current upgrade)
    local playerUpgrades = self.playersUpgradeOptions[playerID]["upgrades"][1]
    if not playerUpgrades then
        return
    end

    local chestIDWithExtraAbilityChoice = nil

    if self.playersUpgradeOptions[event.player_id]["info"] and self.playersUpgradeOptions[event.player_id]["info"]["include_new_ability"] then
        chestIDWithExtraAbilityChoice = self.playersUpgradeOptions[event.player_id]["info"]["reserved_chest_id"] or ""
    end
    
    local upgradeFound = false
    local reservedAbilityName = nil

    for _, upgradeData in pairs(playerUpgrades) do
        if upgradeData["reward_id"] and upgradeData["reward_id"] == event.reward then
            upgradeFound = true

            if upgradeData["special_upgrade"] then

                local abilityName = upgradeData["ability_name"] or ""
                local upgradeName =  upgradeData["upgrade_name"] or ""

                self:AddSuperSpellUpgradeV2(hero, abilityName, upgradeName)

            elseif upgradeData["base_upgrade"] then
                local abilityName = upgradeData["ability_name"] or ""
                local propertyName = upgradeData["property_name"] or ""
                local upgradeValue = upgradeData["upgrade_value"] or ""

				while upgradeData.addon do
					self:AddBaseAbilityUpgrade(hero:GetPlayerOwnerID(), abilityName, propertyName, upgradeValue)
					upgradeData = upgradeData.addon
					abilityName = upgradeData["ability_name"] or ""
					propertyName = upgradeData["property_name"] or ""
					upgradeValue = upgradeData["upgrade_value"] or ""
				end
				
				self:AddBaseAbilityUpgrade(hero:GetPlayerOwnerID(), abilityName, propertyName, upgradeValue)

                --update hero main Ability Upgrade modifier
                local upgradeModifier = hero:FindModifierByName("modifier_ability_value_upgrades_sb_2023")

                if not upgradeModifier then
                    print("Hero doesn't have upgrade modifier: Adding...")
                    upgradeModifier = hero:AddNewModifier(hero, nil, "modifier_ability_value_upgrades_sb_2023", {})
                end
            
                if upgradeModifier then
                    upgradeModifier:UpdateAbilityUpgrades()
                end

                self:RefreshHeroAbilityModifiers(hero, abilityName)
                hero:CalculateStatBonus(true)

                if abilityName == "lone_druid_spirit_bear" and hero.spiritBearEntity then
                    local spiritBear = hero.spiritBearEntity

                    local spiritBearUpgradeModifier = spiritBear:FindModifierByName("modifier_spirit_bear_upgrades_ad_2023")
                    if spiritBearUpgradeModifier then
                        spiritBearUpgradeModifier:UpdateSpiritBearHpAndArmor()
                    end
                end

                --update shards current values (to show info about upgrades on shard for heroes without shards)
                local isShardUpgradeFix = SPELL_SHOW_SHARD_INFO[abilityName] and SPELL_SHOW_SHARD_INFO[abilityName]["properties"] and 
                                        SPELL_SHOW_SHARD_INFO[abilityName]["properties"][propertyName] and SPELL_SHOW_SHARD_INFO[abilityName]["need_update_values"]

                if isShardUpgradeFix then
                    local upgradeValueNumber = tonumber(upgradeValue)
                    if upgradeValueNumber and SPELL_UPGRADE_REDUCTION[abilityName] and SPELL_UPGRADE_REDUCTION[abilityName][propertyName] then
                        upgradeValueNumber = -upgradeValueNumber
                    end

                    if not self.shardsValueInfo[playerID] then
                        self:InitializePlayerShardValueInfo(playerID)
                    end

                    if self.shardsValueInfo[playerID][abilityName]["properties"][propertyName] then
                        self.shardsValueInfo[playerID][abilityName]["properties"][propertyName]["upgradeValue"] = upgradeValueNumber

                        CustomNetTables:SetTableValue( "ability_shard_info", string.format( "%d", playerID ),  self.shardsValueInfo[playerID])
                    end
                end
            elseif upgradeData["neutral_item_upgrade"] then
                local itemName = upgradeData["ability_name"] or ""
                local propertyName = upgradeData["property_name"] or ""
                local upgradeValue = upgradeData["upgrade_value"] or ""

                --Apply Upgrade
                self:AddBaseAbilityUpgrade(hero:GetPlayerOwnerID(), itemName, propertyName, upgradeValue)

                --update hero main Ability Upgrade modifier
                local upgradeModifier = hero:FindModifierByName("modifier_ability_value_upgrades_sb_2023")

                if not upgradeModifier then
                    print("Hero doesn't have upgrade modifier: Adding...")
                    upgradeModifier = hero:AddNewModifier(hero, nil, "modifier_ability_value_upgrades_sb_2023", {})
                end
            
                if upgradeModifier then
                    upgradeModifier:UpdateAbilityUpgrades()
                end

                local item = hero:FindItemInInventory(itemName)
                if item and not item:IsInBackpack() then
                    item:OnUnequip()
                    item:OnEquip()
                end

                hero:CalculateStatBonus(true)

                --update neutral items current values(to show info about upgrades for items even if they are not equiped)
                self:InitializePlayerNeutralItemsValueInfo(playerID, itemName, propertyName)

                local upgradeValueNumber = tonumber(upgradeValue)
                if upgradeValueNumber then

                    if (SPELL_UPGRADE_REDUCTION[itemName] and SPELL_UPGRADE_REDUCTION[itemName][propertyName]) or
                        NEGATIVE_SPELL_UPGRADES_CUMULATION[itemName] and NEGATIVE_SPELL_UPGRADES_CUMULATION[itemName][propertyName]
                    then
                        upgradeValueNumber = -upgradeValueNumber
                    end

                    self.neutralItemsValueInfo[playerID][itemName][propertyName] = self.neutralItemsValueInfo[playerID][itemName][propertyName] + upgradeValueNumber
                    CustomNetTables:SetTableValue( "neutral_items_value_info", string.format( "%d", playerID ),  self.neutralItemsValueInfo[playerID])
                end
            elseif upgradeData["add_new_ability"] then
                local abilityName = upgradeData["ability_name"] or ""

                if abilityName and abilityName ~= "" then
                    reservedAbilityName = abilityName
                    local newAbility = hero:AddAbility(abilityName)

                    if newAbility then
                        newAbility.abilityLevelMaxed = true
                        
                        if GameRules.AbilityDraftRanked.SetNewAddedAbility then
                            GameRules.AbilityDraftRanked:SetNewAddedAbility(newAbility, hero)
                        end

                        if GameRules.AbilityDraftRanked.AddOtherRequiredAbilitiesForAbility then
                            GameRules.AbilityDraftRanked:AddOtherRequiredAbilitiesForAbility(hero, newAbility)
                        end

                        --set ability level
                        newAbility:SetLevel(newAbility:GetMaxLevel())
    
                        if newAbility:GetAbilityType() == 1 and GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked then
                            if not GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] then
                                GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] = 0
                            end

                            GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] = GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] + 1
                        end

                        self:VerifySingleAbilityUpgrades(newAbility, playerID)

                        local abilityHeroOwner = nil

                        if GameRules.AbilityDraftRanked.heroAbilityOwners then
                            for heroName, abilities in pairs(GameRules.AbilityDraftRanked.heroAbilityOwners) do
                                for _, heroAbilityName in pairs(abilities) do
                                    if heroAbilityName == abilityName then
                                        abilityHeroOwner = heroName
                                        break
                                    end
                                end
                            end
                        end

                        if abilityHeroOwner then
                            if not GameRules.AbilityDraftRanked.precachedUnits[abilityHeroOwner] then
                                PrecacheUnitByNameAsync( "precache_" .. abilityHeroOwner, 
                                    function (precacheId) 
                                        print("precached: ", abilityHeroOwner)
                                        GameRules.AbilityDraftRanked.precachedUnits[abilityHeroOwner] = precacheId
                                    end
                                )
                            end
                        end

                        if GameRules.AbilityDraftRanked.playersPickedAbilities and GameRules.AbilityDraftRanked.playersPickedAbilities[playerID] then
                            table.insert(GameRules.AbilityDraftRanked.playersPickedAbilities[playerID], {ability_name = abilityName})
                        
                            local szAccountID = tostring( PlayerResource:GetSteamAccountID( playerID ) )
                            CustomNetTables:SetTableValue( "players_ability_picks_2", szAccountID, GameRules.AbilityDraftRanked.playersPickedAbilities[playerID]) 
                        end
                    end
                end
            end

            --break it now!
            break
        end
    end

    if chestIDWithExtraAbilityChoice then
        --always remove reserved abilities
        if self.reservedAbilitiesForPlayers[playerID] and self.reservedAbilitiesForPlayers[playerID][chestIDWithExtraAbilityChoice] then
            local treasureReservedAbilities = self.reservedAbilitiesForPlayers[playerID][chestIDWithExtraAbilityChoice]

            for _, abName in pairs(treasureReservedAbilities) do
                if not reservedAbilityName or abName ~= reservedAbilityName then
                    GameRules.AbilityDraftRanked:UnreserveAbility(abName, false)
                end
            end

            self.reservedAbilitiesForPlayers[playerID][chestIDWithExtraAbilityChoice] = nil
        end
    end

    if upgradeFound then
        self.playersUpgradeOptions[playerID]["upgrades"] = {}

        CustomNetTables:SetTableValue( "player_spell_upgrades", string.format( "%d", playerID ), self.playersUpgradeOptions[playerID])

        --update golden upgrades (update here to keep rerolls have the same number of golden upgrades as orignal treasure)
        if GameRules.AbilityDraftRanked._vPlayerStats[playerID] and  
            GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades"] and
            GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades_balance"]
        then
            local goldenUpgradesBalance = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades_balance"]
            GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades"] = goldenUpgradesBalance
            
            CustomNetTables:SetTableValue( "players_info", string.format( "%d", playerID ), GameRules.AbilityDraftRanked._vPlayerStats[playerID] )
        end
                    
        --move first awaiting upgrade to the next upgrade
        if playerID and self.playersAwaitingUpgradeOptions[playerID] and self.playersAwaitingUpgradeOptions[playerID]["awaiting"] and 
            self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"]
        then
            --be aware: checking table size on non table will crash DOTA
            if type(self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"]) == "table" and
                #self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"] > 0
            then
                --take first element from awaiting table
                local awaitingUpgrade = self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"][1]

                if awaitingUpgrade then
                    local canShowSpecialUpgrade = awaitingUpgrade["special_upgrade"] or false
                    local canShowNewAbility = awaitingUpgrade["include_new_ability"] or false
                    local newAbilityNumber = awaitingUpgrade["new_ability_number"] or 0
                    local isUltimateAbility = awaitingUpgrade["is_ultimate_ability"] or false
                    local reservedChestID = awaitingUpgrade["reserved_chest_id"] or ""

                    table.remove(self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"], 1)

                    --if this is treasure with ultimates but player already picked ultimate before (ultimates on level 20 and 30)
                    local treasureRecreated = false

                    if isUltimateAbility then
                        if GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked and GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] and
                            GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] > 0
                        then
                            treasureRecreated = true

                            if self.reservedAbilitiesForPlayers[playerID] and self.reservedAbilitiesForPlayers[playerID][reservedChestID] then
                                for _, abilityName in pairs(self.reservedAbilitiesForPlayers[playerID][reservedChestID]) do
                                    GameRules.AbilityDraftRanked:UnreserveAbility(abilityName, false)
                                end
        
                                self.reservedAbilitiesForPlayers[playerID][reservedChestID] = nil
                            end

                            self:CreatePlayerRandomSpellUpgrades(hero, canShowSpecialUpgrade, false, 0, false, 1, false, reservedChestID)
                        end
                    end

                    if not treasureRecreated then
                        local upgrades = self:GetRandomSpellUpgrades(hero, canShowSpecialUpgrade, canShowNewAbility, reservedChestID)
                        if upgrades then
                            self:SavePlayerRandomSpellUpgrade(playerID, upgrades, canShowSpecialUpgrade, canShowNewAbility, newAbilityNumber, isUltimateAbility, reservedChestID)
                        end
                    end
                end
            end
        end
    end
end

function CDungeonSpellsUpgrade:AbilityUpgradeReroll(eventSourceIndex, event)
    if not event.player_id then
		return
	end

	local playerID = event.player_id
	if not PlayerResource:IsValidPlayerID(playerID) then
		return
	end

    if not self.playersUpgradeOptions[playerID] or not self.playersUpgradeOptions[playerID]["upgrades"] then
        return
    end

    --check available rerolls
    local rerolls = 0

    if GameRules.AbilityDraftRanked._vPlayerStats[playerID] and GameRules.AbilityDraftRanked._vPlayerStats[playerID]["reroll_ability_upgrades"] then
        rerolls = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["reroll_ability_upgrades"]
    end

	if rerolls > 0 then
        local hero = PlayerResource:GetSelectedHeroEntity(playerID)
        if not hero then 
            return
        end

        --player available upgrades are always in 1st element (this table should contain only 1 element - current upgrade)
        local playerUpgrades = self.playersUpgradeOptions[playerID]["upgrades"][1]
        if not playerUpgrades then
            return
        end

        local canShowSpecialUpgrade = false
        local canShowNewAbility = false
        local newAbilityNumber = 0
        local isUltimateAbility = false
        local reservedChestID = ""

        if self.playersUpgradeOptions[playerID]["info"] then
            canShowSpecialUpgrade = self.playersUpgradeOptions[playerID]["info"]["special_upgrade"] or false
            canShowNewAbility = self.playersUpgradeOptions[playerID]["info"]["include_new_ability"] or false
            newAbilityNumber = self.playersUpgradeOptions[playerID]["info"]["new_ability_number"] or 0
            isUltimateAbility = self.playersUpgradeOptions[playerID]["info"]["is_ultimate_ability"] or false
            reservedChestID = self.playersUpgradeOptions[playerID]["info"]["reserved_chest_id"] or ""
        end

        if GameRules.AbilityDraftRanked._vPlayerStats[playerID] then
            GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades_balance"] = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades"]
        end

        --clear current upgrade
        self.playersUpgradeOptions[playerID]["upgrades"] = {}

        --remove reserved abilities for this treasure
        if self.reservedAbilitiesForPlayers[playerID] and self.reservedAbilitiesForPlayers[playerID][reservedChestID] then
            for _, abilityName in pairs(self.reservedAbilitiesForPlayers[playerID][reservedChestID]) do
                GameRules.AbilityDraftRanked:UnreserveAbility(abilityName, false)
            end

            self.reservedAbilitiesForPlayers[playerID][reservedChestID] = nil
        end

        --reduce rerolls
        if GameRules.AbilityDraftRanked._vPlayerStats[playerID] and GameRules.AbilityDraftRanked._vPlayerStats[playerID]["reroll_ability_upgrades"] then
            GameRules.AbilityDraftRanked._vPlayerStats[playerID]["reroll_ability_upgrades"] = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["reroll_ability_upgrades"] - 1

            --update data on client
            CustomNetTables:SetTableValue( "players_info", string.format( "%d", playerID ), GameRules.AbilityDraftRanked._vPlayerStats[ playerID ])
        end

        if canShowNewAbility then
            self:CreatePlayerRandomSpellUpgradesWithNewAbilities(playerID, canShowSpecialUpgrade, newAbilityNumber, isUltimateAbility, 1, false, reservedChestID)
        else
            self:CreatePlayerRandomSpellUpgrades(hero, canShowSpecialUpgrade, canShowNewAbility, newAbilityNumber, isUltimateAbility, 1, false, reservedChestID)
        end
	end
end

function CDungeonSpellsUpgrade:SkipRewardUpgrades(eventSourceIndex, event)
    if not event.player_id or not event.reward_id then
		return
	end

	local playerID = event.player_id
	if not PlayerResource:IsValidPlayerID(playerID) then
		return
	end

    if not self.playersUpgradeOptions[playerID] or not self.playersUpgradeOptions[playerID]["upgrades"] or not self.playersUpgradeOptions[playerID]["upgrades"][1] then
        return
    end

    local name = ""
    local propertyName = ""
    local isNeutralItem = false

    for _, upgradeData in pairs(self.playersUpgradeOptions[playerID]["upgrades"][1]) do
        if upgradeData["reward_id"] and upgradeData["reward_id"] == event.reward_id then
            if upgradeData["ability_name"] and upgradeData["property_name"] then
                name = upgradeData["ability_name"]
                propertyName = upgradeData["property_name"]
                isNeutralItem = upgradeData["neutral_item_upgrade"]
            end

            break
        end
    end

    --check if player can skip ability upgrade (only supporters)
    local canSkipAbility = false

    if not isNeutralItem then
        local abilitySkipCounter = 0

        if GameRules.AbilityDraftRanked._vPlayerStats[playerID] and GameRules.AbilityDraftRanked._vPlayerStats[playerID]["skip_ability_upgrades"] then
            abilitySkipCounter = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["skip_ability_upgrades"]
        end

        if abilitySkipCounter and abilitySkipCounter > 0 then
            canSkipAbility = true
        end
    end

    local disabled = event.checked and event.checked == 1

    if name ~= "" and propertyName ~= "" then
        if not self.playerDisabledUpgrades[playerID] then
            self.playerDisabledUpgrades[playerID] = {}
        end

        local skipChange = 0

        if disabled then
            if isNeutralItem then
                self.playerDisabledUpgrades[playerID][name] = true
            elseif canSkipAbility then
                if not self.playerDisabledUpgrades[playerID][name] then
                    self.playerDisabledUpgrades[playerID][name] = {}
                end

                self.playerDisabledUpgrades[playerID][name][propertyName] = true
                skipChange = -1
            end
        else
            if isNeutralItem then
                self.playerDisabledUpgrades[playerID][name] = nil
            else
                if self.playerDisabledUpgrades[playerID][name] and self.playerDisabledUpgrades[playerID][name][propertyName] then
                    self.playerDisabledUpgrades[playerID][name][propertyName] = nil
                    skipChange = 1
                end
            end
        end

        if skipChange ~= 0 then
            if GameRules.AbilityDraftRanked._vPlayerStats[playerID] and GameRules.AbilityDraftRanked._vPlayerStats[playerID]["skip_ability_upgrades"] then
                local abilitySkipCounter = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["skip_ability_upgrades"]

                GameRules.AbilityDraftRanked._vPlayerStats[playerID]["skip_ability_upgrades"] = abilitySkipCounter + skipChange
                --update data on client
                CustomNetTables:SetTableValue( "players_info", string.format( "%d", playerID ), GameRules.AbilityDraftRanked._vPlayerStats[ playerID ])
            end
        end
    end
end

function CDungeonSpellsUpgrade:CreatePlayerRandomSpellUpgrades(
    hero, 
    canShowSpecialUpgrade, 
    canShowNewAbility, 
    abilityNumber, 
    isUltimateAbility, 
    treasureCount, 
    isFirstDrop,
    reservedChestID
)
    if not hero then
        return
    end

    local playerID = hero:GetPlayerOwnerID()
    if not playerID then
        return
    end

    if not treasureCount then
        treasureCount = 1
    end

    local specialSpellUpgrade = false

    if canShowSpecialUpgrade then
        specialSpellUpgrade = true
    end

    if self:IsHeroAllSpellsUpgradeLocalizated(hero) then
        for i = 1, treasureCount, 1 do
            --if players have some available treasure all other treasures will be added to awaiting list, 
            --and upgrades to the awaiting treasures will be selected when players pick upgrade from available treasure
            --so keep upgrades as empty table if there is available treasure (because they will be changed anyway)
            local upgrades = {}

            if not self.playersUpgradeOptions[playerID] or not self.playersUpgradeOptions[playerID]["upgrades"] or 
                #self.playersUpgradeOptions[playerID]["upgrades"] == 0 
            then
                upgrades = self:GetRandomSpellUpgrades(hero, specialSpellUpgrade, canShowNewAbility, reservedChestID)
            end

            --save also empty upgrades (they will be replaced later)
            if upgrades then
                self:SavePlayerRandomSpellUpgrade(playerID, upgrades, specialSpellUpgrade, canShowNewAbility, abilityNumber, isUltimateAbility, reservedChestID)
            end 
        end
    else
        self:VerifyHeroAbilityUpgradeList(hero)

        if not self.playersAwaitingUpgradeOptions[playerID] then
            self:InitializePlayerAwaitingUpgradesTable(playerID)
        end

        for i = 1, treasureCount, 1 do
            table.insert(self.playersAwaitingUpgradeOptions[playerID]["not_localized"]["upgrades"], 
                        {
                            special_upgrade = specialSpellUpgrade,
                            include_new_ability = canShowNewAbility,
                            new_ability_number = abilityNumber,
                            is_ultimate_ability = isUltimateAbility,
                            reserved_chest_id = reservedChestID
                        }
            )
        end

        local maxTime = self.maxTimeToLocalizeAbilities

        if isFirstDrop then
            maxTime = self.maxTimeToLocalizeAbilitiesStartGame
        end

        --max time to wait for abilities get localize, after that try to add upgrades for players from abilities that are already localized
        Timers:CreateTimer(maxTime, function ()
            self:AddUpgradesFromNotLocalizedAbilities(playerID)
        end)
    end
end

function CDungeonSpellsUpgrade:SavePlayerRandomSpellUpgrade(
    playerID, 
    upgrades, 
    canShowSpecialUpgrade, 
    canShowNewAbility, 
    newAbilityNumber, 
    isUltimateAbility, 
    reservedChestID
)
    if upgrades and type(upgrades) == "table" then
        if not self.playersUpgradeOptions[playerID] or not self.playersUpgradeOptions[playerID]["upgrades"] then
            self.playersUpgradeOptions[playerID] = {
                upgrades = {},
                info = {}
            }
        end

        --be aware: checking table size on nil value will crash DOTA
        if type(self.playersUpgradeOptions[playerID]["upgrades"]) ~= "table" then
            return
        end

        if #self.playersUpgradeOptions[playerID]["upgrades"] == 0 then
            --don't save and don't show empty treasure
            if #upgrades == 0 then
                return
            end

            table.insert(self.playersUpgradeOptions[playerID]["upgrades"], upgrades)

            self.playersUpgradeOptions[playerID]["info"] = {
                special_upgrade = canShowSpecialUpgrade,
                include_new_ability = canShowNewAbility,
                new_ability_number = newAbilityNumber,
                is_ultimate_ability = isUltimateAbility,
                reserved_chest_id = reservedChestID
            }
            
            local awaitingUpgrades = 0
            if self.playersAwaitingUpgradeOptions[playerID] and self.playersAwaitingUpgradeOptions[playerID]["awaiting"] and
                self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"] and 
                type(self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"]) == "table"
            then
                awaitingUpgrades = #self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"]
            end

            self.playersUpgradeOptions[playerID]["info"]["awaiting_upgrades"] = awaitingUpgrades

            CustomNetTables:SetTableValue( "player_spell_upgrades", string.format( "%d", playerID ), self.playersUpgradeOptions[playerID])
        else
            --there can be only 1 element, so make some clening if for some reason is more
            if #self.playersUpgradeOptions[playerID]["upgrades"] > 1 then
                self.playersUpgradeOptions[playerID]["upgrades"] = self.playersUpgradeOptions[playerID]["upgrades"][1]
            end

            if not self.playersAwaitingUpgradeOptions[playerID] then
                self:InitializePlayerAwaitingUpgradesTable(playerID)
            end

            table.insert(self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"],
                        {
                            special_upgrade = canShowSpecialUpgrade,
                            include_new_ability = canShowNewAbility,
                            new_ability_number = newAbilityNumber,
                            is_ultimate_ability = isUltimateAbility,
                            reserved_chest_id = reservedChestID
                        }
            )

            local awaitingUpgrades = 0

            if self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"] then
                awaitingUpgrades = #self.playersAwaitingUpgradeOptions[playerID]["awaiting"]["upgrades"]
            end

            self.playersUpgradeOptions[playerID]["info"]["awaiting_upgrades"] = awaitingUpgrades

            CustomNetTables:SetTableValue( "player_spell_upgrades", string.format( "%d", playerID ), self.playersUpgradeOptions[playerID])
        end
    end
end

function CDungeonSpellsUpgrade:InitializePlayerAwaitingUpgradesTable(playerID)
    if not self.playersAwaitingUpgradeOptions[playerID] then
        self.playersAwaitingUpgradeOptions[playerID] = {
            awaiting = {
                upgrades = {},
            },

            not_localized = {
                upgrades = {},
            }
        }
    end
end

function CDungeonSpellsUpgrade:InitializePlayerShardValueInfo(playerID)
    if not self.shardsValueInfo[playerID] then
        self.shardsValueInfo[playerID] = {}
    end

    local infoAdded = false
    for abilityName, data in pairs(SPELL_SHOW_SHARD_INFO) do
        if not self.shardsValueInfo[playerID][abilityName] then
            self.shardsValueInfo[playerID][abilityName] = {}
        end

        self.shardsValueInfo[playerID][abilityName] = deepcopy(data)

        if data["need_update_values"] and self.shardsValueInfo[playerID][abilityName]["properties"] then
            for propertyName, _  in pairs(self.shardsValueInfo[playerID][abilityName]["properties"]) do
                self.shardsValueInfo[playerID][abilityName]["properties"][propertyName] = {
                    baseValue = GetAbilityValueForLevelByName(abilityName, propertyName, 1, true, false)
                }

                infoAdded = true
            end
        end
    end

    if infoAdded then
        CustomNetTables:SetTableValue( "ability_shard_info", string.format( "%d", playerID ),  self.shardsValueInfo[playerID])
    end
end

function CDungeonSpellsUpgrade:InitializePlayerNeutralItemsValueInfo(playerID, itemName, propertyName)
    if not self.neutralItemsValueInfo[playerID] then
        self.neutralItemsValueInfo[playerID] = {}
    end

    if itemName then
        if not self.neutralItemsValueInfo[playerID][itemName] then
            self.neutralItemsValueInfo[playerID][itemName] = {}
        end

        if propertyName and not self.neutralItemsValueInfo[playerID][itemName][propertyName] then
            -- self.neutralItemsValueInfo[playerID][itemName][propertyName] = 0
            self.neutralItemsValueInfo[playerID][itemName][propertyName] = GetAbilityValueForLevelByName(itemName, propertyName, 1, false, false)
        end
    end

    CustomNetTables:SetTableValue( "neutral_items_value_info", string.format( "%d", playerID ),  self.neutralItemsValueInfo[playerID])
end

function CDungeonSpellsUpgrade:RefreshHeroAbilityModifiers(hero, abilityName)
    local hAbility = hero:FindAbilityByName( abilityName )
    if hAbility ~= nil then
        if hAbility:GetIntrinsicModifierName() ~= nil then
            local hIntrinsicModifier = hero:FindModifierByName( hAbility:GetIntrinsicModifierName() )
            if hIntrinsicModifier then
                local currentStackCount = hIntrinsicModifier:GetStackCount()
                local currentDuration = hIntrinsicModifier:GetDuration()

                hIntrinsicModifier:Destroy()
                hAbility:RefreshIntrinsicModifier()

                local newModifier = hero:FindModifierByName(hAbility:GetIntrinsicModifierName())
                if newModifier then
                    newModifier:SetStackCount(currentStackCount)

                    if currentDuration > 0 then
                        newModifier:SetDuration(currentDuration, true)
                    end
                end

                --sometimes need to refreshed again with some delay (more than 0.1s)
                Timers:CreateTimer(0.35, function ()
                    hAbility:RefreshIntrinsicModifier()
                end)
            end
        end
    end
end

function CDungeonSpellsUpgrade:GetAbilityPropertyUpgradesInfo(abilityName, propertyName)
    if not self.abilityUpgrades[abilityName] then
        return {}
    end

    if not self.abilityUpgrades[abilityName]["upgrades"] then
        return {}
    end

    if not self.abilityUpgrades[abilityName]["upgrades"][propertyName] then
        return {}
    end

    return self.abilityUpgrades[abilityName]["upgrades"][propertyName]
end

function CDungeonSpellsUpgrade:AbilityUpgradesLocalizated(eventSourceIndex, event)
	if not event.ability_name or not event.upgrades then
		return
	end

	local abilityName = event.ability_name
    local playerID = event.player_id

	if abilityName and self.abilityUpgrades[abilityName] and not self.abilityUpgrades[abilityName]["upgrades_localizated"] then
		self.abilityUpgrades[abilityName]["upgrades_localizated"] = true
        self.abilityUpgrades[abilityName]["process_id"] = nil

		if not self.abilityUpgrades[abilityName]["upgrades"] then
			self.abilityUpgrades[abilityName]["upgrades"] = {}
		end

        local isAnyUpgrade = false

		for _, upgradeData in pairs(event.upgrades) do
			local abilityPropertyName = upgradeData["ability_property"] or ""
            local propertyDescription = upgradeData["description"] or ""
			local isPropertyNameLocalized = upgradeData["tooltip_localized"] or 0
            local isTooltipExtension = upgradeData["tooltip_ext"] or 0

			if abilityName and abilityName ~= "" and abilityPropertyName and abilityPropertyName ~= "" then
				local isUpgradReduction = (SPELL_UPGRADE_REDUCTION[abilityName] and SPELL_UPGRADE_REDUCTION[abilityName][abilityPropertyName]) or false
                local isNegativeCumulation = (NEGATIVE_SPELL_UPGRADES_CUMULATION[abilityName] and NEGATIVE_SPELL_UPGRADES_CUMULATION[abilityName][abilityPropertyName]) or false
                local isUpradeToInteger = SPELL_UPGRADES_TO_INTEGERS[abilityName] and SPELL_UPGRADES_TO_INTEGERS[abilityName][abilityPropertyName] or false
                local blockTalentOverLimit = BLOCK_ADDING_TALENT_OVER_SPELL_VALUE_LIMIT[abilityName] and BLOCK_ADDING_TALENT_OVER_SPELL_VALUE_LIMIT[abilityName][abilityPropertyName] or false

                local showShardInfo =  SPELL_SHOW_SHARD_INFO[abilityName] and SPELL_SHOW_SHARD_INFO[abilityName]["properties"] and 
                                        SPELL_SHOW_SHARD_INFO[abilityName]["properties"][abilityPropertyName]

                if not showShardInfo then
                    showShardInfo = HasAbilityPropertyStringFlag(abilityName, abilityPropertyName, "RequiresShard")
                end
                
                local isShardNewAbility = GetAbilityBasePropertyValue(abilityName, "IsGrantedByShard") == 1
                if isShardNewAbility then
                    showShardInfo = true
                end
                
                local showScepterInfo = HasAbilityPropertyStringFlag(abilityName, abilityPropertyName, "RequiresScepter")
                local isScepterdNewAbility = GetAbilityBasePropertyValue(abilityName, "IsGrantedByScepter") == 1
                if isScepterdNewAbility then
                    showScepterInfo = true
                end
                
                --Only Shards that orignal values are 0 until hero get shard
                --There are shards upgrades that values are inside key "value" so they don't need this change (for example Juggernaut)
                local isShardUpgrade = SPELL_SHOW_SHARD_INFO[abilityName] and SPELL_SHOW_SHARD_INFO[abilityName]["properties"] and 
                                        SPELL_SHOW_SHARD_INFO[abilityName]["properties"][abilityPropertyName] and 
                                        SPELL_SHOW_SHARD_INFO[abilityName]["need_update_values"]

                local hashTaggedProperty = self.baseAbilitySpecialNames[abilityPropertyName:gsub( "#", "")]
                
				if (isPropertyNameLocalized and isPropertyNameLocalized == 1) or self.baseAbilitySpecialNames[abilityPropertyName] or hashTaggedProperty then
                    isAnyUpgrade = true

					self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName] = {
                        ability_name = abilityName,
                        property_name = abilityPropertyName,
						upgrade_reduction = isUpgradReduction,
                        negative_cumulation = isNegativeCumulation,
						is_integer = isUpradeToInteger,
                        block_talent_over_limit = blockTalentOverLimit,
                        is_shard_upgrade = isShardUpgrade,
                        show_shard_info = showShardInfo,
                        show_scepter_info = showScepterInfo,
					}

                    if self.baseAbilitySpecialNames[abilityPropertyName] then
                        self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["description"] = self.baseAbilitySpecialNames[abilityPropertyName]
                    end

                    if hashTaggedProperty then
                        self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["description"] = self.baseAbilitySpecialNames[abilityPropertyName:gsub( "#", "")]
                    end

                    --count the ability base upgrade per level (dfference between levels)
                    local maxLevel = GetAbilityMaxLevelByName(abilityName)

                    if string.find(abilityName, "invoker_") then
                        maxLevel = self.invokerMaxAbilityLevel
                    end

                    if maxLevel > 1 then
                        local baseLevel = maxLevel - 1

                        if baseLevel > 0 then
                            if RELATIVE_LEVELS_TO_COMPARE[abilityName] and RELATIVE_LEVELS_TO_COMPARE[abilityName][abilityPropertyName] then
                                baseLevel = RELATIVE_LEVELS_TO_COMPARE[abilityName][abilityPropertyName]
                            end

                            local fixedAbilityPropertyName = abilityPropertyName
                            if hashTaggedProperty then
                                fixedAbilityPropertyName = abilityPropertyName:gsub( "#", "")
                            end
        
                            local baseLevelValue = GetAbilityValueForLevelByName(abilityName, fixedAbilityPropertyName, baseLevel, false, false)
                            local relativeLevelValue = GetAbilityValueForLevelByName(abilityName, fixedAbilityPropertyName, maxLevel, false, false)

                            --fix for shards
                            if isShardUpgrade  then
                                --shard have only 1 value, so base value should be 0 and relative value = max value
                                baseLevelValue = 0
                                relativeLevelValue = GetAbilityValueForLevelByName(abilityName, abilityPropertyName, baseLevel, true, false)

                                if not isUpradeToInteger and relativeLevelValue >= self.bigAbilityValue then
                                    if math.floor(relativeLevelValue) == relativeLevelValue and math.floor(baseLevelValue) == baseLevelValue then
                                        self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["is_integer"] = true
                                    end
                                end
                            end

                            if baseLevelValue ~= 0 then
                                local valueChange = math.abs(relativeLevelValue - baseLevelValue)

                                if not isUpradeToInteger and relativeLevelValue >= self.bigAbilityValue then
                                    if math.floor(relativeLevelValue) == relativeLevelValue and math.floor(baseLevelValue) == baseLevelValue then
                                        self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["is_integer"] = true
                                    end
                                end

                                if valueChange > 0 then
                                    self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["value_change"] = valueChange
                                    self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["pct_change"] = valueChange / baseLevelValue
                                    self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["big_number"] = baseLevelValue >= self.bigAbilityValue
                                end 
                            end
                        end
                    elseif maxLevel == 1 then
                        if not isUpradeToInteger then
                            local baseLevelValue = GetAbilityValueForLevelByName(abilityName, abilityPropertyName, 1, false, false)

                            if baseLevelValue and math.abs(baseLevelValue) >= self.bigAbilityValue then
                                if math.floor(baseLevelValue) == baseLevelValue then
                                    self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["is_integer"] = true
                                end
                            end
                        end
                    end

					if MIN_SPELL_UPGRADE_VALUES[abilityName] and MIN_SPELL_UPGRADE_VALUES[abilityName][abilityPropertyName] then
						self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["min_value"] = MIN_SPELL_UPGRADE_VALUES[abilityName][abilityPropertyName]
					end

					if MAX_SPELL_UPGRADE_VALUES[abilityName] and MAX_SPELL_UPGRADE_VALUES[abilityName][abilityPropertyName] then
						self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["max_value"] = MAX_SPELL_UPGRADE_VALUES[abilityName][abilityPropertyName]

                        -- some wrong with this ability?
                        -- base value:-25
                        -- after upgrades make this value equal 0, illusion makes about 70% dmg
                        -- so set max value on server :0 and on client: 50  (because max value on server is 0, so there will be max +25 upgrades, and client starts from value:25)
                        if abilityName == "antimage_mana_overload" and abilityPropertyName == "outgoing_damage" then
                            self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["max_value_client"] = MAX_SPELL_UPGRADE_VALUES[abilityName][abilityPropertyName] + 50
                        end
					end

                    --check if this is a tooltip with normal property dependency (both need to be updated in the modifier)
                    if SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName] and SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName][abilityPropertyName] then
                        self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["tooltip_dependency"] = SPELL_UPGRADES_TOOLTIP_DEPENDENCIES[abilityName][abilityPropertyName]
                    end

					--forced const value upgrades
					if SPELL_PROPERTY_FORCED_VALUE[abilityName] and SPELL_PROPERTY_FORCED_VALUE[abilityName][abilityPropertyName] and 
						SPELL_PROPERTY_FORCED_VALUE[abilityName][abilityPropertyName]["value"] 
					then
						self.abilityUpgrades[abilityName]["upgrades"][abilityPropertyName]["force_value"] = SPELL_PROPERTY_FORCED_VALUE[abilityName][abilityPropertyName]["value"]
					end

                elseif (isTooltipExtension and isTooltipExtension == 1) then
                    --if ability has tooltip_ext it means there are two properties: property_name and property_name_tooltip
					-- only property_name_tooltip is show for players, but property_name is real value
					-- so we need to upgrade both properties

                    --for abilities that have tooltips created by adding '_tooltip' at the end:
                    local tooltipPropertyName = abilityPropertyName .. "_tooltip"

                    local isTooltipUpgradeReduction = (SPELL_UPGRADE_REDUCTION[abilityName] and SPELL_UPGRADE_REDUCTION[abilityName][tooltipPropertyName]) or false
                    local isTooltipNegativeCumulation = (NEGATIVE_SPELL_UPGRADES_CUMULATION[abilityName] and NEGATIVE_SPELL_UPGRADES_CUMULATION[abilityName][tooltipPropertyName]) or false
                    local isTooltipUpradeToInteger = SPELL_UPGRADES_TO_INTEGERS[abilityName] and SPELL_UPGRADES_TO_INTEGERS[abilityName][tooltipPropertyName] or false
                    blockTalentOverLimit = BLOCK_ADDING_TALENT_OVER_SPELL_VALUE_LIMIT[abilityName] and BLOCK_ADDING_TALENT_OVER_SPELL_VALUE_LIMIT[abilityName][tooltipPropertyName] or false

                    self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName] = {
                        ability_name = abilityName,
                        property_name = tooltipPropertyName,
                        -- description = propertyDescription,
                        upgrade_reduction = isTooltipUpgradeReduction,
                        negative_cumulation = isTooltipNegativeCumulation,
                        is_integer = isTooltipUpradeToInteger,
                        tooltip_dependency = abilityPropertyName,
                        block_talent_over_limit = blockTalentOverLimit,
                    }

                    --count the ability base upgrade per level (dfference between levels)
                    local maxLevel = GetAbilityMaxLevelByName(abilityName)

                    if maxLevel > 1 then
                        local baseLevel = maxLevel - 1

                        if baseLevel > 0 then
                            if RELATIVE_LEVELS_TO_COMPARE[abilityName] and RELATIVE_LEVELS_TO_COMPARE[abilityName][tooltipPropertyName] then
                                baseLevel = RELATIVE_LEVELS_TO_COMPARE[abilityName][tooltipPropertyName]
                            end
        
                            local baseLevelValue = GetAbilityValueForLevelByName(abilityName, tooltipPropertyName, baseLevel, false, false)
                            local relativeLevelValue = GetAbilityValueForLevelByName(abilityName, tooltipPropertyName, maxLevel, false, false)

                            if baseLevelValue ~= 0 then
                                local valueChange = math.abs(relativeLevelValue - baseLevelValue)

                                if not isTooltipUpradeToInteger then
                                    if math.floor(relativeLevelValue) == relativeLevelValue and math.floor(baseLevelValue) == baseLevelValue then
                                        self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName]["is_integer"] = true
                                    end
                                end
    
                                if valueChange > 0 then
                                    self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName]["value_change"] = valueChange
                                    self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName]["pct_change"] = valueChange / baseLevelValue
                                    self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName]["big_number"] = baseLevelValue >= self.bigAbilityValue
                                end 
                            end
                        end
                    end

                    if MIN_SPELL_UPGRADE_VALUES[abilityName] and MIN_SPELL_UPGRADE_VALUES[abilityName][tooltipPropertyName] then
                        self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName]["min_value"] = MIN_SPELL_UPGRADE_VALUES[abilityName][tooltipPropertyName]
                    end

                    if MAX_SPELL_UPGRADE_VALUES[abilityName] and MAX_SPELL_UPGRADE_VALUES[abilityName][tooltipPropertyName] then
                        self.abilityUpgrades[abilityName]["upgrades"][tooltipPropertyName]["max_value"] = MAX_SPELL_UPGRADE_VALUES[abilityName][tooltipPropertyName]
                    end
                end
			end
		end

        if not isAnyUpgrade then
            self.abilityUpgrades[abilityName]["no_upgrades"] = true
        end
	end

    --if player didn't get upgrades cause his abilities didn't get localizations
    if playerID then
        Timers:CreateTimer(self.timeToLocalizeAbility, function ()
            self:AddUpgradesFromNotLocalizedAbilities(playerID)
        end)
    end
end

function CDungeonSpellsUpgrade:GetRandomSuperSpellUpgradeInfo(hero)
    if not hero then
        return {}
    end

    local heroName = hero:GetUnitName()
    local playerID = hero:GetPlayerOwnerID()

    if not self:IsAnySpecialUpgradeAvailable(heroName) then
        return {}
    end

    local abilities = {}
    local ability_count = hero:GetAbilityCount()
	
    for ability_index = 0, ability_count - 1 do
        local ability = hero:GetAbilityByIndex( ability_index )

        if ability and not ability:IsHidden() then
            local abilityName = ability:GetAbilityName()

            if self:IsAnySpecialUpgradeNotPickedForAbility(heroName, abilityName, playerID) then
                table.insert(abilities, abilityName)
            end
        end
    end

    if #abilities > 0 then
        local randomAbilityName = abilities[RandomInt(1, #abilities)]

        local upgrades = self:GetNotPickedSpecialUpgradesForAbility(heroName, randomAbilityName, playerID)

        if upgrades and #upgrades > 0 then
            local upgradeName = upgrades[RandomInt(1, #upgrades)]
            local extraInfo = {}

            local modifierName = self:GetSpecialUpgradeModifierName(heroName, randomAbilityName, upgradeName)
        
            if modifierName and modifierName ~= "" then
                extraInfo = self:GetAbilityExtraInfoUpgradedByModifier(heroName, randomAbilityName, upgradeName, modifierName)
            end
        
            local upgradeAbilityName = self:GetSpecialUpgradeAbilityName(heroName, randomAbilityName, upgradeName)

            if upgradeAbilityName and upgradeAbilityName ~= "" then
                extraInfo = self:GetAbilityExtraInfoUpgradedByOtherAbility(randomAbilityName, upgradeAbilityName)
            end

            return {ability_name = randomAbilityName, upgrade_name = upgradeName, upgrade_info = extraInfo}
        end
    end

    return {}
end

function CDungeonSpellsUpgrade:GetRandomSuperSpellUpgradeInfoV2(hero)
    if not hero then
        return {}
    end

    local upgrades = {}
    local ability_count = hero:GetAbilityCount()
	
    for ability_index = 0, ability_count - 1 do
        local ability = hero:GetAbilityByIndex( ability_index )

        if ability and not ability:IsHidden() then
            local abilityName = ability:GetAbilityName()

            local abilityUpgrades = self:GetNotPickedSpecialUpgradesForAbilityV2(abilityName, hero)

            if abilityUpgrades and #abilityUpgrades > 0 then
                TableMerge(upgrades, abilityUpgrades)
            end
        end
    end

    if upgrades and #upgrades > 0 then
        local upgradeData = upgrades[RandomInt(1, #upgrades)]

        local heroName = upgradeData["hero_name"] or ""
        local randomAbilityName = upgradeData["ability_name"] or ""
        local upgradeName = upgradeData["upgrade_name"] or ""

        local extraInfo = {}

        local modifierName = upgradeData["modifier"] or ""
    
        if modifierName and modifierName ~= "" then
            extraInfo = self:GetAbilityExtraInfoUpgradedByModifier(heroName, randomAbilityName, upgradeName, modifierName)
        end
    
        local upgradeAbilityName = self:GetSpecialUpgradeAbilityName(heroName, randomAbilityName, upgradeName)

        if upgradeAbilityName and upgradeAbilityName ~= "" then
            extraInfo = self:GetAbilityExtraInfoUpgradedByOtherAbility(randomAbilityName, upgradeAbilityName)
        end

        return {ability_name = randomAbilityName, upgrade_name = upgradeName, upgrade_info = extraInfo}
    end

    return {}
end

function CDungeonSpellsUpgrade:AddUpgradesFromNotLocalizedAbilities(playerID)
    if not self.playersAwaitingUpgradeOptions[playerID] or not self.playersAwaitingUpgradeOptions[playerID]["not_localized"] or
        not self.playersAwaitingUpgradeOptions[playerID]["not_localized"]["upgrades"] or #self.playersAwaitingUpgradeOptions[playerID]["not_localized"]["upgrades"] == 0
    then
        return
    end

    local anyUpgradeAdded = false

    if self.playersAwaitingUpgradeOptions[playerID] and self.playersAwaitingUpgradeOptions[playerID]["not_localized"]["upgrades"] then
        local awaitingUpgrades = self.playersAwaitingUpgradeOptions[playerID]["not_localized"]["upgrades"]

        local hero = PlayerResource:GetSelectedHeroEntity(playerID)
        if hero then
            for _, awaitingUpgrade in pairs(awaitingUpgrades) do
                local canShowSpecialUpgrade = awaitingUpgrade["special_upgrade"] or false
                local canShowNewAbility = awaitingUpgrade["include_new_ability"] or false
                local newAbilityNumber = awaitingUpgrade["new_ability_number"] or 0
                local isUltimateAbility = awaitingUpgrade["is_ultimate_ability"] or false
                local reservedChestID = awaitingUpgrade["reserved_chest_id"] or ""

                local treasureRecreated = false

                if isUltimateAbility then
                    if GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked and GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] and
                        GameRules.AbilityDraftRanked.extraUltimateAbilitiesPicked[playerID] > 0
                    then
                        treasureRecreated = true

                        if self.reservedAbilitiesForPlayers[playerID] and self.reservedAbilitiesForPlayers[playerID][reservedChestID] then
                            for _, abilityName in pairs(self.reservedAbilitiesForPlayers[playerID][reservedChestID]) do
                                GameRules.AbilityDraftRanked:UnreserveAbility(abilityName, false)
                            end
    
                            self.reservedAbilitiesForPlayers[playerID][reservedChestID] = nil
                        end

                        self:CreatePlayerRandomSpellUpgrades(hero, canShowSpecialUpgrade, false, 0, false, 1, false, reservedChestID)
                    end
                end
                
                if not treasureRecreated then
                    local upgrades = self:GetRandomSpellUpgrades(hero, canShowSpecialUpgrade, canShowNewAbility, reservedChestID)
                    if upgrades and #upgrades > 0 then
                        self:SavePlayerRandomSpellUpgrade(playerID, upgrades, canShowSpecialUpgrade, canShowNewAbility, newAbilityNumber, isUltimateAbility, reservedChestID)
                    end 
                end

                anyUpgradeAdded = true
            end
        end
    end

    --clear awaiting upgrades
    if anyUpgradeAdded then
        self.playersAwaitingUpgradeOptions[playerID]["not_localized"] = {
            upgrades = {}
        }
    end
end

function CDungeonSpellsUpgrade:GetAbilityExtraInfoUpgradedByModifier(heroName, abilityName, upgradeName, modifierName)        
    local extraInfo = {}
    
    if modifierName and modifierName ~= "" then
        local modifierValues = self:GetSpecialUpgradeValues(heroName, abilityName, upgradeName) or {}

        extraInfo = {
            spell_upgrade = 1,
            ability_name = abilityName,
            isCustomTooltip = self:IsUpgradeCustomTooltip(heroName, abilityName, upgradeName),
            isBaseTooltip = self:IsUpgradeUseBaseTooltip(heroName, abilityName, upgradeName),
            text = "#DOTA_Tooltip_" .. modifierName .. "_description",
            title = "#DOTA_Tooltip_" .. modifierName,
            tooltip_name_1 = modifierValues["tooltip_name_1"] or nil,
            tooltip_value_1 = modifierValues["tooltip_value_1"] or nil,
            tooltip_name_2 = modifierValues["tooltip_name_2"] or nil,
            tooltip_value_2 = modifierValues["tooltip_value_2"] or nil,
            duration = 2.5,
            golden_style = true,
            -- sound = "RewardScreenOpen"
        }
        
        -- CustomGameEventManager:Send_ServerToPlayer(hero:GetPlayerOwner(), "player_extra_info", extraInfo )
    end

    return extraInfo
end

function CDungeonSpellsUpgrade:GetAbilityExtraInfoUpgradedByOtherAbility(abilityName, upgradeAbilityName)
    local extraInfo = {}

    if upgradeAbilityName and upgradeAbilityName ~= "" then
        extraInfo = {
            spell_upgrade = 1,
            ability_name = abilityName,
            isCustomTooltip = false,
            isBaseTooltip = true,
            text = "#DOTA_Tooltip_ability_" .. upgradeAbilityName .. "_description",
            title = "#DOTA_Tooltip_ability_" .. upgradeAbilityName,
            force_tooltip_ability_name = upgradeAbilityName,
            duration = 2.5,
            golden_style = true,
            -- sound = "RewardScreenOpen"
        }
        
        -- CustomGameEventManager:Send_ServerToPlayer(hero:GetPlayerOwner(), "player_extra_info", extraInfo )
    end

    return extraInfo
end

function CDungeonSpellsUpgrade:AddSuperSpellUpgrade(hero, abilityName, upgradeName)
    if not hero or not abilityName or not upgradeName then
        return
    end

    local heroName = hero:GetUnitName()
    local playerID = hero:GetPlayerOwnerID()

    local extraAbilityNames = self:GetSpecialUpgradeExtraAbilitiesName(heroName, abilityName, upgradeName)
    if extraAbilityNames then

        for _, extraAbilityName in ipairs(extraAbilityNames) do
            local newAbility = hero:AddAbility(extraAbilityName)
            if newAbility then
                newAbility:UpgradeAbility(false)
                newAbility:SetLevel(newAbility:GetMaxLevel())
                newAbility:SetHidden(true)
                newAbility:SetStolen(true)
                newAbility.noUpgradeAvailable = true
            end 
        end
    end

    local modifierName = self:GetSpecialUpgradeModifierName(heroName, abilityName, upgradeName)

    if modifierName and modifierName ~= "" then
        local modifierValues = self:GetSpecialUpgradeValues(heroName, abilityName, upgradeName) or {}
        hero:AddNewModifier(hero, nil, modifierName, modifierValues)

        local extraInfo = self:GetAbilityExtraInfoUpgradedByModifier(heroName, abilityName, upgradeName, modifierName)

        if not self.playersPickedSpecialAbilities[playerID] then
            self.playersPickedSpecialAbilities[playerID] = {}
        end
        
        if not self.playersPickedSpecialAbilities[playerID][abilityName] then
            self.playersPickedSpecialAbilities[playerID][abilityName] = {}
        end
        
        self.playersPickedSpecialAbilities[playerID][abilityName][upgradeName]  = extraInfo
        CustomGameEventManager:Send_ServerToPlayer(hero:GetPlayerOwner(), "player_extra_info", extraInfo )
    end

    local upgradeAbilityName = self:GetSpecialUpgradeAbilityName(heroName, abilityName, upgradeName)
    if upgradeAbilityName and upgradeAbilityName ~= "" then
        local newAbility = hero:AddAbility(upgradeAbilityName)
        if newAbility then
            newAbility:UpgradeAbility(false)
            newAbility.noUpgradeAvailable = true

            local extraInfo = self:GetAbilityExtraInfoUpgradedByOtherAbility(abilityName, upgradeAbilityName)

            if not self.playersPickedSpecialAbilities[playerID] then
                self.playersPickedSpecialAbilities[playerID] = {}
            end
            
            if not self.playersPickedSpecialAbilities[playerID][abilityName] then
                self.playersPickedSpecialAbilities[playerID][abilityName] = {}
            end
            
            self.playersPickedSpecialAbilities[playerID][abilityName][upgradeName]  = extraInfo
            CustomGameEventManager:Send_ServerToPlayer(hero:GetPlayerOwner(), "player_extra_info", extraInfo )
        end
    end

    if self.playersPickedSpecialAbilities[playerID] then
        CustomNetTables:SetTableValue( "player_chosen_spell_upgrades", string.format( "%d", playerID ), self.playersPickedSpecialAbilities[playerID])
    end
end

function CDungeonSpellsUpgrade:AddSuperSpellUpgradeV2(hero, abilityName, upgradeName)
    if not hero or not abilityName or not upgradeName then
        return
    end

    local abilityHeroOwner = self:GetAbilityUpgradeHeroOwner(abilityName, upgradeName)

    if not abilityHeroOwner or abilityHeroOwner == "" then
        return
    end
    
    local playerID = hero:GetPlayerOwnerID()

    local extraAbilityNames = self:GetSpecialUpgradeExtraAbilitiesName(abilityHeroOwner, abilityName, upgradeName)
    if extraAbilityNames then

        for _, extraAbilityName in ipairs(extraAbilityNames) do
            local newAbility = hero:AddAbility(extraAbilityName)
            if newAbility then
                newAbility:UpgradeAbility(false)
                newAbility:SetLevel(newAbility:GetMaxLevel())
                newAbility:SetHidden(true)
                newAbility:SetStolen(true)
                newAbility.noUpgradeAvailable = true
            end 
        end
    end

    local modifierName = self:GetSpecialUpgradeModifierName(abilityHeroOwner, abilityName, upgradeName)

    if modifierName and modifierName ~= "" then
        local modifierValues = self:GetSpecialUpgradeValues(abilityHeroOwner, abilityName, upgradeName) or {}
        hero:AddNewModifier(hero, nil, modifierName, modifierValues)


        if GameRules.AbilityDraftRanked.specialAbilityModifierUpgradesAdded then
            if not GameRules.AbilityDraftRanked.specialAbilityModifierUpgradesAdded[hero:entindex()] then
                GameRules.AbilityDraftRanked.specialAbilityModifierUpgradesAdded[hero:entindex()] = {}
            end

            GameRules.AbilityDraftRanked.specialAbilityModifierUpgradesAdded[hero:entindex()][modifierName] = modifierValues
        end

        local extraInfo = self:GetAbilityExtraInfoUpgradedByModifier(abilityHeroOwner, abilityName, upgradeName, modifierName)

        if not self.playersPickedSpecialAbilities[playerID] then
            self.playersPickedSpecialAbilities[playerID] = {}
        end
        
        if not self.playersPickedSpecialAbilities[playerID][abilityName] then
            self.playersPickedSpecialAbilities[playerID][abilityName] = {}
        end
        
        self.playersPickedSpecialAbilities[playerID][abilityName][upgradeName]  = extraInfo
        CustomGameEventManager:Send_ServerToPlayer(hero:GetPlayerOwner(), "player_extra_info", extraInfo )
    end

    local upgradeAbilityName = self:GetSpecialUpgradeAbilityName(abilityHeroOwner, abilityName, upgradeName)
    if upgradeAbilityName and upgradeAbilityName ~= "" then
        local newAbility = hero:AddAbility(upgradeAbilityName)
        if newAbility then
            newAbility:UpgradeAbility(false)
            newAbility.noUpgradeAvailable = true

            local extraInfo = self:GetAbilityExtraInfoUpgradedByOtherAbility(abilityName, upgradeAbilityName)

            if not self.playersPickedSpecialAbilities[playerID] then
                self.playersPickedSpecialAbilities[playerID] = {}
            end
            
            if not self.playersPickedSpecialAbilities[playerID][abilityName] then
                self.playersPickedSpecialAbilities[playerID][abilityName] = {}
            end
            
            self.playersPickedSpecialAbilities[playerID][abilityName][upgradeName]  = extraInfo
            CustomGameEventManager:Send_ServerToPlayer(hero:GetPlayerOwner(), "player_extra_info", extraInfo )
        end
    end

    if self.playersPickedSpecialAbilities[playerID] then
        CustomNetTables:SetTableValue( "player_chosen_spell_upgrades", string.format( "%d", playerID ), self.playersPickedSpecialAbilities[playerID])
    end
end

function CDungeonSpellsUpgrade:GetSpellUpgradeValueInfo(playerID, previousUpgradesInfo)
    local result = {
        value = 0,
        reward_level = ""
    }

    if not previousUpgradesInfo then
        previousUpgradesInfo = {}
    end

    local normalUpgradeValue = RandomInt(self.baseMinUpgrade, self.baseMaxUpgrade)
	local mythicalUpgradeValue = RandomInt(self.mythicalMinUpgradeValue, self.mythicalMaxUpgradeValue)

    local goldenUpgrades = 0

    if GameRules.AbilityDraftRanked._vPlayerStats[playerID] and GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades_balance"] then
        goldenUpgrades = GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades_balance"]
    end

    if goldenUpgrades > 0 then
		result.reward_level = "mythical_upgrade"
        result.value = mythicalUpgradeValue

        GameRules.AbilityDraftRanked._vPlayerStats[playerID]["ability_golden_upgrades_balance"] = math.max(goldenUpgrades - 1, 0)

        CustomNetTables:SetTableValue( "players_info", string.format( "%d", playerID ), GameRules.AbilityDraftRanked._vPlayerStats[playerID] ) 
    else
        result.reward_level = "normal_upgrade"
        result.value = normalUpgradeValue
    end

    return result
end

function CDungeonSpellsUpgrade:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter)
    if not playerHero or not abilitiesAvailableForPlayer or #abilitiesAvailableForPlayer == 0 then
        return {}
    end

    local playerID = playerHero:GetPlayerOwnerID()
	
	if #abilitiesAvailableForPlayer == 0 then
		return {}
	end

	local randNumber = RandomInt( 1, #abilitiesAvailableForPlayer)
	local randomAbilityName = abilitiesAvailableForPlayer[randNumber]
        
	local ability = playerHero:FindAbilityByName(randomAbilityName)
	if ability == nil then
		local counter = 1
		while ability == nil do
			if counter > 18 then
				break
			end

			randNumber = RandomInt( 1, #abilitiesAvailableForPlayer)
			randomAbilityName = abilitiesAvailableForPlayer[randNumber]
			ability = playerHero:FindAbilityByName(randomAbilityName)
			counter = counter + 1
		end
	end

	if not ability or not randomAbilityName  then
		print("looking for ability upgrade: ability is null")
		return {}
	end

    if not self.abilityUpgrades[randomAbilityName] or not self.abilityUpgrades[randomAbilityName]["upgrades"] then
        print("looking for ability upgrade:: no ability upgrades data")
        return {}
    end

	local upgradesAvailableForAbility = {}
	for abilitySpecialName, _ in pairs(self.abilityUpgrades[randomAbilityName]["upgrades"]) do
        if not self:IsAbilityUpgradeBlockedByPlayer(playerID, randomAbilityName, abilitySpecialName) then
            table.insert(upgradesAvailableForAbility, abilitySpecialName)
        end
	end

    if #upgradesAvailableForAbility == 0 then
        print("looking for ability upgrade:: no upgrades for ability")
		table.insert(previousUpgradeInfo,
			{
				ability_name = randomAbilityName, 
                property_name = "",
                reward_level = "",
            }
		)
		table.remove(abilitiesAvailableForPlayer, randNumber)
        return self:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter + 1)
    end

    --local needNewProperty = false
    --local alreadyUpgradedProperties = {}
    --if previousUpgradesInfo then 
    --    for _, upgradeInfo in pairs(previousUpgradesInfo) do
    --        if upgradeInfo["ability_name"] and (upgradeInfo["ability_name"] == randomAbilityName) and 
    --            upgradeInfo["property_name"] and upgradeInfo["property_name"] ~= "" 
    --        then
    --            needNewProperty = true
    --            alreadyUpgradedProperties[upgradeInfo["property_name"]] = true
    --        end    
    --    end
    --end

    --if needNewProperty then
    --  local counter = 1

    --    while alreadyUpgradedProperties[propertyToUpgrade] do
    --        if counter > 15 then
                -- print("can't find not repeated property to upgrade for ability: ", randomAbilityName)

                --this is main counter on the function
    --            if repeatCounter < 15 then
    --                return self:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter + 1)
    --            else
    --                break
    --            end
    --        end
    
    --        propertyToUpgrade = upgradesAvailableForAbility[RandomInt( 1, #upgradesAvailableForAbility)]
    --        counter = counter + 1
    
            -- print("roll again: ", randomAbilityName, " :", propertyToUpgrade)
    --    end
    --end
	
	local maxing = {}
	maxing[ability] = {}
	
	for properties = 1, #upgradesAvailableForAbility, 1 do
		propertyToUpgrade = upgradesAvailableForAbility[properties]
		maxing[ability][propertyToUpgrade] = {}
		maxing[ability][propertyToUpgrade]["ismax"] = false
	end
	
	abilitypicked = self:GetPlayerPickedBaseAbilityUpgrades(playerID)
	
	if abilitypicked then
		for abilityName, info in pairs(abilitypicked) do
			if playerHero:FindAbilityByName(abilityName) == ability then
				for propertyName, values in pairs(info) do
					--sum all chosen upgrades by player
					local sum = 0

					for _, value in pairs(values) do
						sum = sum + value
					end
			
					local maxAbilityLevel = ability:GetMaxLevel()
			
					local originalValue = ability:GetLevelSpecialValueNoOverride( propertyName, maxAbilityLevel-1)
			
					if (string.find(propertyName, "radius") or string.find(propertyName, "range")) and sum >= originalValue * 1 and originalValue >= 0 then
						maxing[ability][propertyName]["ismax"] = true
					elseif sum >= originalValue * 1.7 then
						maxing[ability][propertyName]["ismax"] = true
					end
				end
			end
		end
	end

	print("Upgrade selection")
	
	local Noupgrades = 0
	local faultyupgrade = false
	for properties = 1, #upgradesAvailableForAbility, 1 do
		propertyToUpgrade = upgradesAvailableForAbility[properties]
		if not self.abilityUpgrades[randomAbilityName]["upgrades"][propertyToUpgrade] then
			print("looking for ability upgrade:: no upgrades for ability - fatal error")
			faultyupgrade = true
			goto continue
		end
		
		print(propertyToUpgrade)
		
		if properties == 1 and maxing[ability][propertyToUpgrade]["ismax"] == false then
			result = shallowcopy(self.abilityUpgrades[randomAbilityName]["upgrades"][propertyToUpgrade])
		elseif maxing[ability][propertyToUpgrade]["ismax"] == true and faultyupgrade == true then
			Noupgrades  = Noupgrades + 1
			faultyupgrade = true
			goto continue
		elseif maxing[ability][propertyToUpgrade]["ismax"] == true then
			faultyupgrade = true
			goto continue
		elseif faultyupgrade == true then
			Noupgrades  = Noupgrades + 1
			local tempt = result.addon
			result = shallowcopy(self.abilityUpgrades[randomAbilityName]["upgrades"][propertyToUpgrade])
			result.addon = tempt
			faultyupgrade = false
		else
			local tempt = result
			result = shallowcopy(self.abilityUpgrades[randomAbilityName]["upgrades"][propertyToUpgrade])
			result.addon = tempt
		end

		print(Noupgrades)
		
		local originalValue = 0
		local maxAbilityLevel = ability:GetMaxLevel()

		if not result.property_name then
			result.property_name = propertyToUpgrade
		end

		local pctUpgrade = 0
		result.reward_level = "normal_upgrade"
    
		local upgradeValueInfo = self:GetSpellUpgradeValueInfo(playerID, previousUpgradesInfo)

		if upgradeValueInfo then
			if upgradeValueInfo["value"] then
				pctUpgrade = upgradeValueInfo["value"]
			end

			if upgradeValueInfo["reward_level"] then
				result.reward_level = upgradeValueInfo["reward_level"]
			end
		end

		local upgradeValue = 0
		local isShardCountingForHeroWithoutShard = false

		if result.value_change and type(result.value_change) == "number" and result.value_change > 0 then
			--value_change should be positive number (math.abs)
			upgradeValue = result.value_change * pctUpgrade / 100

			--for very small values
			if upgradeValue < 1 and result.pct_change then
				if result.pct_change <= 0.01 then
					upgradeValue = upgradeValue * self.tinyValueChangeMultiplier
				elseif result.pct_change <= 0.1 then
					upgradeValue = upgradeValue * self.verySmallValueChangeMultiplier
				elseif result.pct_change <= 0.5 then
					upgradeValue = upgradeValue * self.smallValueChangeMultiplier
				end
			end
		else
			--half upgrade % for abilities that doesn't have value change per levels
			pctUpgrade = pctUpgrade * self.nonRelativeUpgrades

            local nonRelativeUpgradeMultiplier = self.nonRelativeUpgrades

            if _G.NON_RELATIVE_BIG_UPGRADES[randomAbilityName] and _G.NON_RELATIVE_BIG_UPGRADES[randomAbilityName][propertyToUpgrade] then
                nonRelativeUpgradeMultiplier = self.nonRelativeUpgradesBigValues
            end
    
            pctUpgrade = pctUpgrade * nonRelativeUpgradeMultiplier

			local maxAbilityLevel = ability:GetMaxLevel()
			local relativeAbilityLevel = self.abilityLevelUpgradeBase
    
			if maxAbilityLevel > 4 and self.abilityLevelUpgradeBase < 5 then
				relativeAbilityLevel = relativeAbilityLevel + 1
			end
    
			if ability:GetAbilityType() == 1 then
				relativeAbilityLevel = self.ulitmateLevelUpgradeBase
			end
    
			if relativeAbilityLevel > maxAbilityLevel then
				relativeAbilityLevel = maxAbilityLevel
			end
    
			local currentAbilityLevel = ability:GetLevel()
			relativeAbilityLevel = math.max(relativeAbilityLevel, currentAbilityLevel)

            if _G.SPELL_PROPERTY_FORCED_ORIGINAL_VALUE[randomAbilityName] and _G.SPELL_PROPERTY_FORCED_ORIGINAL_VALUE[randomAbilityName][propertyToUpgrade] then
                originalValue = _G.SPELL_PROPERTY_FORCED_ORIGINAL_VALUE[randomAbilityName][propertyToUpgrade]
            else    
			    --levels are counted from 0 in this function, so need -1 to get the real level
			    originalValue = ability:GetLevelSpecialValueNoOverride( propertyToUpgrade, relativeAbilityLevel -1)

			    if originalValue == 0 and maxAbilityLevel > relativeAbilityLevel then
				    originalValue = ability:GetLevelSpecialValueNoOverride( propertyToUpgrade, relativeAbilityLevel)
    
				if originalValue == 0 and maxAbilityLevel > relativeAbilityLevel + 1 then
					originalValue = ability:GetLevelSpecialValueNoOverride( propertyToUpgrade, relativeAbilityLevel + 1 )
				end
    
				if not originalValue then
					print("no value for this ability level!")
					faultyupgrade = true
					goto continue
					--return {}
				end
			end
            end

			--Fix for shards:
			if not playerHero:_HasHeroAghanimShard() and result.is_shard_upgrade then
				--it's important to use this custom method (GetAbilityValueForLevelByName) here, because server will return 0 for hero without shards
				originalValue = GetAbilityValueForLevelByName(randomAbilityName, propertyToUpgrade, 1, true, false)
				isShardCountingForHeroWithoutShard = true
			end

			upgradeValue = originalValue * pctUpgrade / 80

			--negative values are handled in modifier
			upgradeValue = math.abs(upgradeValue)
		end

		--upgrade value is positive, negative values are handled in the specific modifier that applies this value
		upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, upgradeValue, result, false)

		local minUpgradeValue = self.minUpgradeValue

		if ALLOW_VERY_SMALL_UPGRADE_VALUES[randomAbilityName] and ALLOW_VERY_SMALL_UPGRADE_VALUES[randomAbilityName][propertyToUpgrade] then
			minUpgradeValue = self.verySmallUpgradeValue
		end

		--Check Min Value (reduction + negative cumulation)
		if result.min_value and tonumber(result.min_value) then
			local maxLevelValue = ability:GetLevelSpecialValueFor(propertyToUpgrade, ability:GetMaxLevel() - 1)
        
			if isShardCountingForHeroWithoutShard then
				--shard value return by API for hero without shard wil be 0 (GetLevelSpecialValueFor)
				if self.shardsValueInfo[playerID] and self.shardsValueInfo[playerID][randomAbilityName] and self.shardsValueInfo[playerID][randomAbilityName]["properties"] and
					self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade] and 
					self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["baseValue"] and
					type(self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["baseValue"]) == "number"
				then
					local baseShardValue = self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["baseValue"]
					local upgradeShardValue = 0

					if self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["upgradeValue"] and
						type(self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["upgradeValue"]) == "number"
					then
						upgradeShardValue = self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["upgradeValue"]
					end
                
					maxLevelValue = baseShardValue + upgradeShardValue
				else
					faultyupgrade = true
					goto continue
					--if this is shard calculating for hero without shard and we can't get his maxLevelValue then try find other upgrade
					-- print("can't find shard maxLevel value")
					--if repeatCounter <= 30 then
					--	return self:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter + 1)
					--else
						--repeat counter exceeded, can't find upgrade
					--	return {}
					--end
				end
			end

			--max level value will be negative (cause taken from ability), upgrade value will be positive cause calculated in method: GetPrettyUpgradeValue
			--so to sum these values we need to subtract maxLevelValue
			if result.negative_cumulation then
				if (maxLevelValue - upgradeValue) < result.min_value then
					if math.abs(result.min_value - maxLevelValue) >= minUpgradeValue then
						--keep all upgrade values non negative
						local newUpgradeValue = math.abs(result.min_value - maxLevelValue)
						upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, newUpgradeValue, result, false)
					else

						if repeatCounter <= 30 then
							upgradeValue = 0
						else
							faultyupgrade = true
							goto continue
							--repeat counter exceeded, can't find upgrade
						--	return {}
						end
					end
				end

				--what if next upgrade is too low to show?
				local newMaxLevelValue = maxLevelValue - upgradeValue

				if newMaxLevelValue > result.min_value and math.abs(newMaxLevelValue - result.min_value) < minUpgradeValue then
					-- increase new upgrade value by gap between new max level value and min value if this gap is lower than min upgrade value for this property
					-- otherwise hero never will reach min value cause the upgrade is too low to show it
					local newUpgradeValue = math.abs(upgradeValue + (newMaxLevelValue - result.min_value))
					upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, newUpgradeValue, result, true)
				end
			elseif result.upgrade_reduction then
				--reduction
				if (maxLevelValue - upgradeValue) < result.min_value then
					if maxLevelValue - result.min_value >= minUpgradeValue then
						local newUpgradeValue = maxLevelValue - result.min_value
						upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, newUpgradeValue, result, false)
					else

						if repeatCounter <= 30 then
							upgradeValue = 0
						else
							faultyupgrade = true
							goto continue
							--repeat counter exceeded, can't find upgrade
						--	return {}
						end
					end
				end

				--what if next upgrade is too low to show?
				local newMaxLevelValue = maxLevelValue - upgradeValue
				if newMaxLevelValue > result.min_value and math.abs(newMaxLevelValue - result.min_value) < minUpgradeValue then
					-- increase new upgrade value by gap between new max level value and min value if this gap is lower than min upgrade value for this property
					-- otherwise hero never will reach min value cause the upgrade is too low to show it
					local newUpgradeValue = math.abs(upgradeValue + (newMaxLevelValue - result.min_value))
					upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, newUpgradeValue, result, true)
				end
			end
        
		--Check Max Value
		elseif result.max_value and tonumber(result.max_value) then
			if not result.upgrade_reduction then
				local maxLevelValue = ability:GetLevelSpecialValueFor(propertyToUpgrade, ability:GetMaxLevel() - 1)
            
				if isShardCountingForHeroWithoutShard then
					if self.shardsValueInfo[playerID] and self.shardsValueInfo[playerID][randomAbilityName] and self.shardsValueInfo[playerID][randomAbilityName]["properties"] and
						self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade] and 
						self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["baseValue"] and
						type(self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["baseValue"]) == "number"
					then
						local baseShardValue = self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["baseValue"]
						local upgradeShardValue = 0

							if self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["upgradeValue"] and
								type(self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["upgradeValue"]) == "number"
							then
								upgradeShardValue = self.shardsValueInfo[playerID][randomAbilityName]["properties"][propertyToUpgrade]["upgradeValue"]
							end
                    
							maxLevelValue = baseShardValue + upgradeShardValue
					else
						faultyupgrade = true
						goto continue
						--if this is shard calculating for hero without shard and we can't get his maxLevelValue then try find other upgrade
						-- print("can't find shard maxLevel value")
						--if repeatCounter <= 30 then
						--	return self:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter + 1)
						--else
							--repeat counter exceeded, can't find upgrade
						--	return {}
						--end
					end
				end
			
				if (maxLevelValue + upgradeValue) > result.max_value then
					if result.max_value - maxLevelValue >= minUpgradeValue then
						local newUpgradeValue = result.max_value - maxLevelValue
						upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, newUpgradeValue, result, false)
					else
						faultyupgrade = true
						goto continue
						--if repeatCounter <= 30 then
						--	return self:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter + 1)
						--else
							--repeat counter exceeded, can't find upgrade
						--	return {}
						--end
					end
				end

				--what if next upgrade is too low to show?
				local newMaxLevelValue = maxLevelValue + upgradeValue
				if newMaxLevelValue < result.max_value and math.abs(result.max_value - newMaxLevelValue) < minUpgradeValue then
					-- increase new upgrade value by gap between max value and new max level value if this gap is lower than min upgrade value for this property
					-- otherwise hero never will reach min value cause the upgrade is too low to show it
					local newUpgradeValue = math.abs(upgradeValue + (result.max_value - newMaxLevelValue))
					upgradeValue = self:GetPrettyUpgradeValue(randomAbilityName, propertyToUpgrade, newUpgradeValue, result, true)
				end
			end
		end

		result.upgrade_value = upgradeValue

		if result.upgrade_reduction or (_G.SHOW_MINUS_UPGRADE_TOOLTIP[randomAbilityName] and _G.SHOW_MINUS_UPGRADE_TOOLTIP[randomAbilityName][propertyToUpgrade])    
		then
			result.show_minus = true

			if FORCE_NO_MINUS_UPGRADE_TOOLTIP[randomAbilityName] and FORCE_NO_MINUS_UPGRADE_TOOLTIP[randomAbilityName][propertyToUpgrade] then
				result.show_minus = false
			end
		end
		::continue::
	end
	
	if faultyupgrade == true then
		Noupgrades  = Noupgrades + 1
		faultyupgrade = false
	end
	
	if Noupgrades >= #upgradesAvailableForAbility then
	    table.insert(previousUpgradesInfo,
			{
				ability_name = randomAbilityName, 
                property_name = "",
                reward_level = "",
            }
		)
		table.remove(abilitiesAvailableForPlayer, randNumber)
		return self:GetRandomBaseAbilityUpgrade(playerHero, abilitiesAvailableForPlayer, previousUpgradesInfo, repeatCounter + 1)
	end
	
	return result
end

function CDungeonSpellsUpgrade:GetPrettyUpgradeValue(abilityName, abilityPropertyName, upgradeValue, result, notRound)
    local upgradeToInteger = false
    local bigNumber = false

    if result then
        if result.is_integer then
            upgradeToInteger = result.is_integer
        end

        if result.big_number then
            bigNumber = result.big_number
        end
    end

    if notRound or (ALLOW_VERY_SMALL_UPGRADE_VALUES[abilityName] and ALLOW_VERY_SMALL_UPGRADE_VALUES[abilityName][abilityPropertyName]) then
        upgradeValue = math.floor(upgradeValue * 1000)/1000
        
        if upgradeValue < self.verySmallUpgradeValue then
            upgradeValue = self.verySmallUpgradeValue
        end
    else
        upgradeValue = math.floor(upgradeValue * 100)/100

        if upgradeValue >= 0 and upgradeValue < self.minUpgradeValue then
            upgradeValue = self.minUpgradeValue
        end
    
        --currently upgradeValue can't be negative (upgrades that reduce numbers are handled in unit modfier that applies these values)
        -- if upgradeValue < 0 and upgradeValue > -self.minUpgradeValue then
        --     upgradeValue = -self.minUpgradeValue
        -- end
    end

    if not notRound then
        --close to 1
        if upgradeValue < 1 and math.floor(upgradeValue + 0.11) >= 1 then
            upgradeValue = 1
        end

        -- integer bigger numbers
        if bigNumber and upgradeValue > 1 then
            upgradeValue = math.floor(upgradeValue + 0.5)
        end

        --round bigger numbers to nearest multiple of 5
        if upgradeValue >= self.bigAbilityValue then
            upgradeValue = MathRound(upgradeValue / 5) * 5
        end

        --round numbers to nearest multiple of 0.25/0.15
        if math.floor(upgradeValue) ~= upgradeValue then
            if upgradeValue >= 1 then
                upgradeValue = MathRound(upgradeValue / 0.25) * 0.25
            elseif upgradeValue > 0.1 then
                upgradeValue = MathRound(upgradeValue / 0.15) * 0.15
            end
        end        
    end

    for string, _ in pairs(self.upgradeToIntegerPropertyStrings) do
        if string.find(abilityPropertyName, string) then
            upgradeToInteger = true
            break
        end
    end

	if upgradeToInteger then
		if upgradeValue <= 1 then
			upgradeValue = 1
		else
			upgradeValue = math.floor(upgradeValue + 0.5)
		end
	end

	return upgradeValue
end

function CDungeonSpellsUpgrade:GetPlayerPickedBaseAbilityUpgrades(playerID)
    if self.playersPickedBaseAbilityUpgrades[playerID] then
        return self.playersPickedBaseAbilityUpgrades[playerID]
    end

    return {}
end

function CDungeonSpellsUpgrade:AddBaseAbilityUpgrade(playerID, abilityName, propertyName, value)
    if not playerID or not abilityName or not propertyName or not value then
        return
    end

    if playerID == "" or abilityName == "" or propertyName == "" or value == "" then
        return
    end

    if not self.playersPickedBaseAbilityUpgrades[playerID] then
        self.playersPickedBaseAbilityUpgrades[playerID] = {}
    end

    if not self.playersPickedBaseAbilityUpgrades[playerID][abilityName] then
        self.playersPickedBaseAbilityUpgrades[playerID][abilityName] = {}
    end

    if not self.playersPickedBaseAbilityUpgrades[playerID][abilityName][propertyName] then
        self.playersPickedBaseAbilityUpgrades[playerID][abilityName][propertyName] = {}
    end

    table.insert(self.playersPickedBaseAbilityUpgrades[playerID][abilityName][propertyName], value)
end

function CDungeonSpellsUpgrade:IsUpgradeCustomTooltip(heroName, abilityName, upgradeName)
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][upgradeName] and
        self.specialAbilityInfo[heroName][abilityName][upgradeName]["isCustomTooltip"]
    then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:IsUpgradeUseBaseTooltip(heroName, abilityName, upgradeName)
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][upgradeName] and
        self.specialAbilityInfo[heroName][abilityName][upgradeName]["isBaseTooltip"]
    then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:HasPlayerAnySpecialUpgrade(playerID)
    if self.playersPickedSpecialAbilities[playerID] then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:HasPlayerChosenSpecialUpgrade(playerID, abilityName, specialUpgradeName) 
    if self.playersPickedSpecialAbilities[playerID] and 
        self.playersPickedSpecialAbilities[playerID][abilityName] and 
        self.playersPickedSpecialAbilities[playerID][abilityName][specialUpgradeName] then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:HasSpecialUpgradeModifier(heroName, abilityName, specialUpgradeName) 
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName] and
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["modifier"] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["modifier"] ~= "" then
        return true
    end

    return false
end

function CDungeonSpellsUpgrade:GetSpecialUpgradeModifierName(heroName, abilityName, specialUpgradeName) 
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName] and
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["modifier"] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["modifier"] ~= "" then
        return self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["modifier"]
    end

    return ""
end

function CDungeonSpellsUpgrade:GetSpecialUpgradeExtraAbilitiesName(heroName, abilityName, specialUpgradeName) 
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName] and
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["extra_abilities"] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["extra_abilities"] ~= "" then
        return self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["extra_abilities"]
    end

    return {}
end

function CDungeonSpellsUpgrade:GetSpecialUpgradeAbilityName(heroName, abilityName, specialUpgradeName) 
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName] and
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["ability"] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["ability"] ~= "" then
        return self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["ability"]
    end

    return ""
end

function CDungeonSpellsUpgrade:GetSpecialUpgradeValues(heroName, abilityName, specialUpgradeName) 
    if self.specialAbilityInfo[heroName] and 
        self.specialAbilityInfo[heroName][abilityName] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName] and
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["modifier"] and 
        self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["values"] ~= "" then
        return self.specialAbilityInfo[heroName][abilityName][specialUpgradeName]["values"]
    end

    return {}
end

function CDungeonSpellsUpgrade:GetAbilityUpgradeHeroOwner(abilityName, upgradeName)
    for heroName, upgradesData in pairs(self.specialAbilityInfo) do
        if upgradesData[abilityName] and upgradesData[abilityName][upgradeName] then
            return heroName
        end
    end

    return ""
end

--curently not used/ its just boring... ;)
function CDungeonSpellsUpgrade:GetRandomMarketOfferUpgrade(zoneStars)
    if not self.marketOffers or not self.marketOffersName or #self.marketOffersName == 0 then
        return {}
    end

    local randomUpgradeNameIndex = RandomInt(1, #self.marketOffersName)

    local randomUpgradeName = self.marketOffersName[randomUpgradeNameIndex]
    if not randomUpgradeName then
        return {}
    end

    local upgradeInfo = self.marketOffers[randomUpgradeName]

    if not upgradeInfo or not upgradeInfo["downgrades"] or not upgradeInfo["value_range"] then
        return {}
    end

    local attributeUpgrade = nil
    if randomUpgradeName == "random_attribute" then
        attributeUpgrade = RandomInt(0, 2)
    end

    local randomUpgradeMin = upgradeInfo["value_range"][1]
    local randomUpgradeMax = upgradeInfo["value_range"][2]
    local roundToIntegers = upgradeInfo["round_to_integers"] or false
    local roundToNearest = upgradeInfo["round_to_nearest"] or 0

    if not randomUpgradeMin or not randomUpgradeMax then
        return {}
    end

    local randomValue = RandomFloat(randomUpgradeMin, randomUpgradeMax)

    if roundToIntegers then
        randomValue = MathRound(randomValue)
    end

    if roundToNearest and roundToNearest > 0 then
        randomValue = MathRound(randomValue / roundToNearest) * roundToNearest
    end

    local randomDowngradeNames = deepcopy(self.marketOffersName)

    --remove current upgrade to keep in table only downgrades
    table.remove(randomDowngradeNames, randomUpgradeNameIndex)

    if #randomDowngradeNames == 0 then
        return {}
    end
    
    local randomDowngradeName = randomDowngradeNames[RandomInt(1, #randomDowngradeNames)]

    if not self.marketOffers[randomDowngradeName] then
        return {}
    end

    local attributeDowngrade = nil
    if randomDowngradeName == "random_attribute" then
        attributeDowngrade = RandomInt(0, 2)
    end

    local downgradeMultiplier = nil
    local roundToIntegersDowngrade = false
    local roundToNearestDowngrade = 0
    local iconDowngrade = ""

    if self.marketOffers[randomUpgradeName]["downgrades"][randomDowngradeName] then
        if self.marketOffers[randomUpgradeName]["downgrades"][randomDowngradeName]["multiplier"] then
            downgradeMultiplier = self.marketOffers[randomUpgradeName]["downgrades"][randomDowngradeName]["multiplier"]
        end
    elseif self.marketOffers[randomDowngradeName]["downgrades"][randomUpgradeName] then
        if self.marketOffers[randomDowngradeName]["downgrades"][randomUpgradeName]["multiplier"] then
            downgradeMultiplier = 1 / self.marketOffers[randomDowngradeName]["downgrades"][randomUpgradeName]["multiplier"]
        end
    end

    if not downgradeMultiplier then
        print("no available downgrades for upgrade / downgrade: " .. randomUpgradeName .. " / " .. randomDowngradeName)
    end

    if self.marketOffers[randomDowngradeName] then
        roundToIntegersDowngrade = self.marketOffers[randomDowngradeName]["round_to_integers"] or false
        roundToNearestDowngrade = self.marketOffers[randomDowngradeName]["round_to_nearest"] or 0
        iconDowngrade = self.marketOffers[randomDowngradeName]["icon"] or ""
    end

    local zoneStarsImprovements = {
        --boss only
        [4] =  0.3,

        --zone stars
        [3] = 0.15,
        [2] = 0.05,
    }

    local zoneIprovementMultiplier = 1
    if zoneStars > 0 and zoneStarsImprovements[zoneStars] then
        zoneIprovementMultiplier = zoneStarsImprovements[zoneStars]

        if downgradeMultiplier > 1 then
            downgradeMultiplier = downgradeMultiplier - (downgradeMultiplier -1) * zoneIprovementMultiplier
        else
            downgradeMultiplier = downgradeMultiplier * 1.5
            downgradeMultiplier = downgradeMultiplier - downgradeMultiplier * zoneIprovementMultiplier
        end
    end

    local downgradeValue = randomValue * downgradeMultiplier

    if roundToIntegersDowngrade then
        downgradeValue = MathRound(downgradeValue)
    end

    if roundToNearestDowngrade and roundToNearestDowngrade > 0 then
        downgradeValue = MathRound(downgradeValue / roundToNearestDowngrade) * roundToNearestDowngrade
    end

    local result = {
        upgrade_name = randomUpgradeName,
        downgrade_name = randomDowngradeName,
        upgrade_value = randomValue,
        downgrade_value = downgradeValue,
        icon_upgrade = upgradeInfo["icon"] or "",
        icon_downgrade = iconDowngrade,
    }

    if attributeUpgrade then
        result.attribute_upgrade = attributeUpgrade
    end

    if attributeDowngrade then
        result.attribute_downgrade = attributeDowngrade
    end

    return result
end
