extends Control

@export var container : VBoxContainer
@export var goal : PackedScene
@export var text_input : LineEdit


func add_goal():
	var goal_text = text_input.text
	var new_goal = goal.instantiate()
	new_goal.text = goal_text
	container.add_child(new_goal)
	text_input.clear()

func _on_add_goal_pressed():
	add_goal()
	
	
	
