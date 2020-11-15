extends VBoxContainer

export (String) var legendName;

func _ready():
	$Label.text = legendName;
