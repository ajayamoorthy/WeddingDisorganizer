extends Position2D


func _draw():
	draw_circle(Vector2.ZERO, 75, Color.crimson)
	
func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.chartreuse
	
func deselect():
	modulate = Color.white
