extends Control

export (NodePath) var legendContainer;

func _ready():
	legendContainer = get_node(legendContainer);
	
	var legendImage = preload("res://scenes/legendImage.tscn"); # Preload the legend Image scene
	
	for key in Global.jsonResult: # Go through the dictionary
		var dict = Global.jsonResult[key];
		var name = dict["name"];
		var type = dict["type"];
		
		var legend = legendImage.instance(); # Instance legendImage
		legendContainer.add_child(legend); # Add Child
		legend.legendName.text = name;
		legend.legendType.text = type;
		
		#print("\nIndex: %s, name: %s, type: %s" % [key, dict["name"], dict["type"]]);
