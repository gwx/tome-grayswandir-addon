-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

local Stats = require "engine.interface.ActorStats"

newEntity{
	base = "BASE_LONGSWORD",
	power_source = {arcane=true},
	unique = true,
	name = "Darkspellblade", image = "object/artifact/grayswandir_darkspellblade.png",
	unided_name = "darkly glowing long sword",
	moddable_tile = "special/%s_weapon_spellblade",
	moddable_tile_big = true,
	level_range = {1, 18},
	color = colors.AQUAMARINE,
	rarity = 0.01,
	desc = [[Dark Spell Blade. Dark Spell Blade. Dark Spell Blade.]],
	--on_id_lore = "spellblade",
	cost = 1000,

	require = {stat = {mag = 12, str = 12, dex = 12,},},
	material_level = 1,
	combat = {
		dam = 14,
		apr = 8,
		physcrit = 6,
		dammod = {str = 0.7, mag = 0.5,},
		accuracy_effect = 'staff',
		burst_on_hit = {PHYSICAL = 10, FIRE = 10, DARKNESS = 10,},
	},
	wielder = {
		lite = -1,
		combat_spellpower = 12,
		combat_spellcrit = 6,
		inc_damage = {
			PHYSICAL = 7,
			FIRE = 7,
			DARKNESS = 7,
		},
		inc_stats = {[Stats.STAT_MAG] = 4, [Stats.STAT_STR] = 4,},
	},
}
