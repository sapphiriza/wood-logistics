local hit_effects = require ("prototypes.entity.hit-effects")
local sounds = require("prototypes.entity.sounds")

if settings.startup["wood-logistics-cargo-wagon"].value then
  data:extend({
    {
      type = "cargo-wagon",
      name = "wood-cargo-wagon",
      icon = "__base__/graphics/icons/wood-cargo-wagon.png",
      flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
      inventory_size = 20,
      minable = {mining_time = 0.5, result = "wood-cargo-wagon"},
      mined_sound = sounds.deconstruct_large(0.8),
      max_health = 300,
      deliver_category = "vehicle",
      corpse = "wood-cargo-wagon-remnants",
      dying_explosion = "wood-cargo-wagon-explosion",
      factoriopedia_simulation = data.raw["cargo-wagon"]["cargo-wagon"].factoriopedia_simulation,
      collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
      selection_box = {{-1, -2.703125}, {1, 3.296875}},
      damaged_trigger_effect = hit_effects.entity(),
      vertical_selection_shift = -0.796875,
      weight = 1000,
      max_speed = 1.5,
      braking_force = 3,
      friction_force = 0.50,
      air_resistance = 0.01,
      connection_distance = 3,
      joint_distance = 4,
      energy_per_hit_point = 5,
      resistances = {{type="fire", percent=-90}},
      back_light = data.raw["cargo-wagon"]["cargo-wagon"].back_light,
      stand_by_light = data.raw["cargo-wagon"]["cargo-wagon"].stand_by_light,
      color = {r=0.43, g=0.23, b=0, a=1},
      pictures = {
        rotated = {
          layers = {
            util.sprite_load("__wood-logistics__/graphics/entity/wood-cargo-wagon/wood-cargo-wagon", {
                dice = 4,
                priority = "very-low",
                allow_low_quality_rotation = true,
                back_equals_front = true,
                direction_count = 128,
                scale = 0.5,
                usage = "train"
              }
            ),
            util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-mask", {
                dice = 4,
                priority = "very-low",
                allow_low_quality_rotation = true,
                back_equals_front = true,
                flags = { "mask" },
                apply_runtime_tint = true,
                tint_as_overlay = true,
                direction_count = 128,
                scale = 0.5,
                usage = "train"
              }
            ),
            util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow", {
                dice = 4,
                priority = "very-low",
                allow_low_quality_rotation = true,
                back_equals_front = true,
                draw_as_shadow = true,
                direction_count = 128,
                scale = 0.5,
                usage = "train"
              }
            )
          }
        }
      },
      horizontal_doors = {
        layers = {
          util.sprite_load("__wood-logistics__/graphics/entity/wood-cargo-wagon/wood-cargo-wagon-door-horizontal", {
              frame_count = 8,
              scale = 0.5,
              usage = "train"
            }
          ),
          util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-mask", {
              apply_runtime_tint = true,
              tint_as_overlay = true,
              flags = { "mask" },
              frame_count = 8,
              scale = 0.5,
              usage = "train"
            }
          )
        }
      },
      vertical_doors = {
        layers = {
          util.sprite_load("__wood-logistics__/graphics/entity/wood-cargo-wagon/wood-cargo-wagon-door-vertical", {
              frame_count = 8,
              scale = 0.5,
              usage = "train"
            }
          ),
          util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-mask",
            {
              apply_runtime_tint = true,
              tint_as_overlay = true,
              flags = { "mask" },
              frame_count = 8,
              scale = 0.5,
              usage = "train"
            }
          )
        }
      },
      minimap_representation = {
        filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png",
        flags = {"icon"},
        size = {20, 40},
        scale = 0.5
      },
      selected_minimap_representation = {
        filename = "__base__/graphics/entity/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png",
        flags = {"icon"},
        size = {20, 40},
        scale = 0.5
      },
      wheels = data.raw["cargo-wagon"]["cargo-wagon"].wheels,
      drive_over_tie_trigger = data.raw["cargo-wagon"]["cargo-wagon"].drive_over_tie_trigger,
      drive_over_tie_trigger_minimal_speed = 0.5,
      tie_distance = 50,
      working_sound = sounds.train_wagon_wheels,
      crash_trigger = crash_trigger(),
      open_sound = sounds.cargo_wagon_open,
      close_sound = sounds.cargo_wagon_close,
      impact_category = "wood",
      water_reflection = data.raw["cargo-wagon"]["cargo-wagon"].water_reflection,
      door_opening_sound = {
        sound = {
          filename = "__wood-logistics__/sound/wood-cargo-wagon/wood-cargo-wagon-opening-loop.ogg",
          volume = 0.3,
          aggregation = {max_count = 1, remove = true, count_already_playing = true}
        },
        stopped_sound = {
          filename = "__wood-logistics__/sound/wood-cargo-wagon/wood-cargo-wagon-opened.ogg",
          volume = 0.25,
          aggregation = {max_count = 1, remove = true, count_already_playing = true}
        }
      },
      door_closing_sound = {
        sound = {
          filename = "__wood-logistics__/sound/wood-cargo-wagon/wood-cargo-wagon-closing-loop.ogg",
          volume = 0.3,
          aggregation = {max_count = 1, remove = true, count_already_playing = true}
        },
        stopped_sound = {
          filename = "__wood-logistics__/sound/wood-cargo-wagon/wood-cargo-wagon-closed.ogg",
          volume = 0.3,
          aggregation = {max_count = 1, remove = true, count_already_playing = true}
        }
      }
    }
  })
end
