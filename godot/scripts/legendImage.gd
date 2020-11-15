extends CenterContainer;

onready var legendName = $vBox/name;
onready var legendType = $vBox/type;
onready var selectionDisplay = $selectionDisplay

var mouseEntered = false;
var selected = true;

func _ready():
	
	pass

func _process(delta):
	selectionDisplay.rect_size = self.rect_size;
	selectionDisplay.rect_position = Vector2(0,0);

func _input(event):
	if mouseEntered:
		if (event.is_pressed() and event.button_index == BUTTON_LEFT):
			print("Selected Legend = " + legendName.text);
			selected = !selected;
			selectionDisplay.visible = selected;

func _on_Node_mouse_entered():
	mouseEntered = true;

func _on_Node_mouse_exited():
	mouseEntered = false;
