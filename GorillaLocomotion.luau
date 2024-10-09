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

GorillaLocomotion.Player = {
    Player = nil,

    headCollider = nil,
    bodyCollider = nil,

    leftHandFollower: UnityEngine.Transform = nil,
    rightHandFollower: UnityEngine.Transform = nil,

    leftHandTransform: UnityEngine.Transform = nil,
    rightHandTransform: UnityEngine.Transform = nil,

    velocityHistorySize: number = nil,
    maxArmLength: number = 1.5,
    unStickDistance: number = 1,

    velocityLimit: number = nil,
    maxJumpSpeed: number = nil,
    jumpMultiplier: number = nil,

    minimumRaycastDistance: number = 0.05,
    defaultSlideFactor: number = 0.05,
    defaultPrecision: number = 0.095,

    leftHandOffset: Vector3 = nil;
    rightHandOffset: Vector3 = nil;

    wasLeftHandTouching: bool = false;
    wasRightHandTouching: bool = false;

    disableMovement: bool = false;

    function Awake()
        print("GorillaLocomotion.Player.Awake() called")
    end

    function InitializeValues()
        print("GorillaLocomotion.Player.InitializeValues() called")
    end
}

return GorillaLocomotion