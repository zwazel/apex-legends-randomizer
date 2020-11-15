extends Control

enum LEGEND_TYPES {
	# according to: https://apexlegends.gamepedia.com/Legend
	RECON, # Bloodhound, pathfinder, etc
	DEFENSIVE, # Gibraltar, Caustic, etc
	SUPPORT, # Lifeline, Loba, etc
	OFFENSIVE # Wraith, Bangalore, etc
}

var availableLegends = [];

func _ready():
	var file = File.new();
	file.open("res://availableLegends.json", file.READ);
	var jsonResult = file.get_as_text();
	jsonResult = JSON.parse(jsonResult).result;
	file.close();
	
	print(jsonResult);
	
	pass
