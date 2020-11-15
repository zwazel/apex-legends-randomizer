extends CenterContainer;

onready var legendName = $vBox/name;
onready var legendType = $vBox/type;
onready var selectionDisplay = $selectionDisplay

var mouseEntered = false;
var selected = true;

func _process(delta):
	selectionDisplay.rect_size = self.rect_size;
	selectionDisplay.rect_position = Vector2(0,0);

func _input(event):
	if mouseEntered:
		if (event.is_pressed() and event.button_index == BUTTON_LEFT): # left mouse button pressed?
#			print("Selected Legend = " + legendName.text);
			selected = !selected; # toggle selected
			selectionDisplay.visible = selected; # set selectionDisplay.visible to selected

func _on_Node_mouse_entered():
	mouseEntered = true; # we can select

func _on_Node_mouse_exited():
	mouseEntered = false; # we can't select
