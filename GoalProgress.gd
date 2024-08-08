extends ProgressBar

# Allows the object's control to receive mouse input
func _ready():
	self.mouse_filter = Control.MOUSE_FILTER_PASS

# Handles input events
	# If event is a mouse button press, calculate mouse position relative to control position
	# If mouse position is within the progress bar, calculate percent by dividing mouse pos.x by control width. (clamp constrains)
	# Set bar value based on the percent * the max value of the bar
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var mouse_pos = event.position - global_position
		if mouse_pos.x >= 0 and mouse_pos.x <= get_size().x and mouse_pos.y >= 0 and mouse_pos.y <= get_size().y:
			var percent = clamp(mouse_pos.x / get_size().x, 0.0, 1.0)
			value = int(percent * max_value)
		
