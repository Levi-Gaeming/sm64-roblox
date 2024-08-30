--!strict

local Enums = {
	Action = require(script.Action),
	Buttons = require(script.Buttons),
	ActionFlags = require(script.Action.Flags),
	ActionGroups = require(script.Action.Groups),

	MarioCap = require(script.Mario.Cap),
	MarioEyes = require(script.Mario.Eyes),
	MarioFlags = require(script.Mario.Flags),
	MarioHands = require(script.Mario.Hands),
	MarioInput = require(script.Mario.Input),

	AirStep = require(script.Steps.Air),
	WaterStep = require(script.Steps.Water),
	GroundStep = require(script.Steps.Ground),

	FloorType = require(script.FloorType),
	InputFlags = require(script.InputFlags),
	ModelFlags = require(script.ModelFlags),
	SurfaceClass = require(script.SurfaceClass),
	TerrainType = require(script.TerrainType),
	ParticleFlags = require(script.ParticleFlags),

	Object = table.freeze({
		Flag = require(script.Object.Flag),
		List = require(script.Object.List),
		Action = require(script.Object.Action),
		MoveFlag = require(script.Object.MoveFlag),
		HeldState = require(script.Object.HeldState),
		ActiveFlag = require(script.Object.ActiveFlag),
	}),

	Interaction = table.freeze({
		AttackHandler = require(script.Interaction.AttackHandler),
		AttackType = require(script.Interaction.AttackType),
		Subtype = require(script.Interaction.Subtype),
		Status = require(script.Interaction.Status),
		Method = require(script.Interaction.Method),
		Type = require(script.Interaction.Type),
	}),
}

local nameIndex: { [any]: { [number]: string } } = {}

function Enums.GetName(map, value): string
	if not nameIndex[map] then
		local index = {}

		for name, value in pairs(map) do
			index[value] = name
		end

		nameIndex[map] = index
	end

	return nameIndex[map][value]
end

return table.freeze(Enums)
