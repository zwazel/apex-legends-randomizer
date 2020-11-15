extends Control

func _ready():
	var legendImage = preload("res://scenes/legendImage.tscn"); # Preload the legend Image scene
	
	for key in Global.jsonResult: # Go through the dictionary
		var dict = Global.jsonResult[key];
		var name = dict["name"];
		var type = dict["type"];
		
		var legend = legendImage.instance(); # Instance legendImage
		$legendContainer.add_child(legend); # Add Child
		legend.legendLabel.text = name;
		
		
		print("\nIndex: %s, name: %s, type: %s" % [key, dict["name"], dict["type"]]);
