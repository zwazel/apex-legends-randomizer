extends CenterContainer;

onready var legendName = $vBox/name;
onready var legendType = $vBox/type

var mouseEntered = false;

func _ready():
	pass

func _input(event):
	if mouseEntered:
		if (event.is_pressed() and event.button_index == BUTTON_LEFT):
			print("Selected Legend = " + legendName.text);

func _on_Node_mouse_entered():
	mouseEntered = true;

func _on_Node_mouse_exited():
	mouseEntered = false;
