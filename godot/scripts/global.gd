extends Node

var jsonResult;

var availableLegends = [];

enum LEGEND_TYPES {
	# according to: https://apexlegends.gamepedia.com/Legend
	RECON, # Bloodhound, pathfinder, etc
	DEFENSIVE, # Gibraltar, Caustic, etc
	SUPPORT, # Lifeline, Loba, etc
	OFFENSIVE # Wraith, Bangalore, etc
}

func _ready():
	randomize();
	
	var file = File.new();
	file.open("res://availableLegends.json", file.READ);
	var jsonFile = file.get_as_text();
	jsonFile = JSON.parse(jsonFile).result;
	jsonResult = jsonFile;
	file.close();
	
#	print("keys = " + str(jsonResult.keys()));
#	print("Values = " + str(jsonResult.values()));
#	print("Size = " + str(jsonResult.size()));
	
	for key in Global.jsonResult: # Go through the dictionary
		availableLegends.append(jsonResult[key]["name"]); # Store all the Names of all the legends in an array
	
func removeLegend(legendName):
	if availableLegends.has(legendName):
		availableLegends.erase(legendName);
#		print("removed %s" % [legendName]);

func addLegend(legendName):
	if !availableLegends.has(legendName):
		availableLegends.append(legendName);
#		print("added %s" % [legendName]);

func getRandomLegend():
	var chosenLegend = choose(availableLegends);
	return chosenLegend;

func choose(array):
	array.shuffle();
	
	return array.front();
