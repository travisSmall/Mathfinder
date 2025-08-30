# Card.gd
extends RefCounted

var ID:int
var Value:Vector3i
var DisplayColor:Color
var IsJoker = false
var IsZero = false

func _init(_ID:int,_Value:Vector3i,_DisplayColor:Color,_IsJoker:bool,_IsZero:bool):
	self.ID = _ID
	self.Value = _Value
	self.DisplayColor = _DisplayColor
	self.IsJoker = _IsJoker
	self.IsZero = _IsZero
