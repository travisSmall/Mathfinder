# CardList.gd
extends Node
const Card = preload("res://Card.gd")
var _cardList: Array
@onready var _GridContainer: GridContainer = $GridContainer

func _ready():
	createCardList()
	writeCardsToScreen()

func createCardList():
	var displayColors = [
		Color.DARK_RED,Color.DARK_GREEN,
		Color.GOLDENROD,Color.DARK_SLATE_BLUE] 
	
	for i in range(13):
		var value = Vector3i(i+1,-(i+1),0)
		var color = displayColors[0]
		var isJoker = false
		var isZero = false
		var card = Card.new(i,value,color,isJoker,isZero)
		_cardList.append(card)
	
	for suitIndex in range(1,4):
		for i in range(13):
			var id = suitIndex * 13 + i
			var value = Vector3i(i+1,-(i+1),0)
			var color = displayColors[(i+suitIndex)%displayColors.size()]
			var isJoker = false
			var isZero = false
			var card = Card.new(id,value,color,isJoker,isZero)
			_cardList.append(card)
	
	for id in [52,53]:
		var value = Vector3i(14,-14,0)
		var color = Color.BEIGE
		var isJoker = true
		var isZero = false
		var card = Card.new(id,value,color,isJoker,isZero)
		_cardList.append(card)
	
	print(_cardList.size())

func writeCardsToScreen():
	for card in _cardList:
		var label = Label.new()
		label.text = str(card.Value.x)
		_GridContainer.add_child(label)
