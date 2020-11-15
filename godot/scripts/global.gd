extends Node

var jsonResult;

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
	var jsonFile = file.get_as_text();
	jsonFile = JSON.parse(jsonFile).result;
	jsonResult = jsonFile;
	file.close();
	
#	print("keys = " + str(jsonResult.keys()));
#	print("Values = " + str(jsonResult.values()));
#	print("Size = " + str(jsonResult.size()));
