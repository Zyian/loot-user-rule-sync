# LOOT User Rule Sync
A small executable to sync LOOT user metadata with presets

## Structure
With these rule syncm I decided to keep it simple:

1. Presets
2. Overrides

A preset is mostly for Mod Pack Creators to be able to create LOOT rules for their users, editing the LOOT metadata is tedious, awkward workflow,
and if users are setting up LOOT rules for the first time it can also be very annoying.

Overrides, on the other hand, are for those more advanced users who deviate from a preset but want to keep their own rules, overrides can be generated from the difference between the `current ruleset - preset` and will be created as a `overrides/override.yml` file, then whenever a preset updates the overrides will layer over the preset to retain manual changes. 

## Functions

- Apply: Replaces `%applocal%/LOOT/Skyrim Special Edition/userlist.yaml` with the chosen `preset.yaml` plus any `override.yaml` chosen, rules are not merged, they are overwritten, in grand old Skyrim style
- Generate Preset: Spits out `userlist.yaml` as a `preset.yaml`, not much to it.
- Generate Override: Takes the difference between the current `userlist.yaml` and a `preset.yaml` and generates a `override.yaml`
- List: Spits out your list of **presets** and **overrides**
