extends Node

enum LEGEND_TYPES {
	# according to: https://apexlegends.gamepedia.com/Legend
	RECON, # Bloodhound, pathfinder, etc
	DEFENSIVE, # Gibraltar, Caustic, etc
	SUPPORT, # Lifeline, Loba, etc
	OFFENSIVE # Wraith, Bangalore, etc
}

func _ready():
	var file = File.new();
	file.open("res://availableLegends.json", file.READ);
	var jsonResult = file.get_as_text();
	jsonResult = JSON.parse(jsonResult).result;
	file.close();
	
	print("keys = " + str(jsonResult.keys()));
	print("Values = " + str(jsonResult.values()));
	print("Size = " + str(jsonResult.size()));
	
	for key in jsonResult:
		var dict = jsonResult[key];
		print("\nIndex: %s, name: %s, type: %s" % [key, dict["name"], dict["type"]]);
