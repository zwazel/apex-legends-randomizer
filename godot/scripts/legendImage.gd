extends CenterContainer;

export (String) var legendName = "placeholder";

var mouseEntered = false;

func _ready():
	$legendImage/Label.text = legendName;

func _input(event):
	if mouseEntered:
		if (event.is_pressed() and event.button_index == BUTTON_LEFT):
			print("Selected Legend = " + legendName);

func _on_Node_mouse_entered():
	mouseEntered = true;

func _on_Node_mouse_exited():
	mouseEntered = false;
