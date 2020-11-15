extends CenterContainer;

onready var legendLabel = $vBox/Label;
var mouseEntered = false;

func _ready():
	pass

func _input(event):
	if mouseEntered:
		if (event.is_pressed() and event.button_index == BUTTON_LEFT):
			print("Selected Legend = " + legendLabel.text);

func _on_Node_mouse_entered():
	mouseEntered = true;

func _on_Node_mouse_exited():
	mouseEntered = false;
