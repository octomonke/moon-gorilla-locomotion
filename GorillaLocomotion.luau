--[[
GorillaMoonLocomotion
Designed for Luau
]]

--[[
TODO:
    - May try to add a fork of this file with support for real movement and
      functions for the Roblox engine. A Roblox port of GorillaLocomotion would be pretty cool and
      a great step in Roblox VR development.
    - If you can help do this, please DM me (@octomonke) on Discord
]]

local GorillaLocomotion = {}
local UnityEngine = require("UnityTypesEmulation")

GorillaLocomotion.ErrorCodes = {
    "Task completed succesfully", -- 1
    "Unknown task failure", -- 2
    "Missing a required argument", -- 3
    "Missing a needed function, variable, or object", -- 4
    "Could not find function in a module that is required", -- 5
    "Could not find item in a module that is required", -- 6
    "This was called on an uninitialized object, type, or module", -- 7
    "Could not emulate a function", -- 8
    "Could not emulate a variable", -- 9
    "Could not make " -- 10
    "This function is not completed", -- -1
}

GorillaLocomotion.Player = {
    Player = nil;

    headCollider = nil;
    bodyCollider = nil;

    leftHandFollower: UnityEngine.Transform = nil;
    rightHandFollower: UnityEngine.Transform = nil;

    leftHandTransform: UnityEngine.Transform = nil;
    rightHandTransform: UnityEngine.Transform = nil;

    velocityHistorySize: number = nil;
    maxArmLength: number = nil;
    unStickDistance: number = nil;
}

function GorillaLocomotion.WhatMyError(err_code: int): string {
    return (GorillaLocomotion.ErrorCodes[err_code] or "Unknown error")
}



return GorillaLocomotion