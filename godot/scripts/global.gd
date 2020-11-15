extends Node

var jsonResult = {
	"1": {
		"name": "Bloodhound",
		"type": "Recon"
	},
	
	"2": {
		"name": "Gibraltar",
		"type": "Defensive"
	},
	
	"3": {
		"name": "Lifeline",
		"type": "Support"
	},
	
	"4": {
		"name": "Pathfinder",
		"type": "Recon"
	},
	
	"5": {
		"name": "Wraith",
		"type": "Offensive"
	},
	
	"6": {
		"name": "Bangalore",
		"type": "Offensive"
	},
	
	"7": {
		"name": "Caustic",
		"type": "Defensive"
	},
	
	"8": {
		"name": "Mirage",
		"type": "Offensive"
	},
	
	"9": {
		"name": "Octane",
		"type": "Offensive"
	},
	
	"10": {
		"name": "Wattson",
		"type": "Defensive"
	},
	
	"11": {
		"name": "Crypto",
		"type": "Recon"
	},
	
	"12": {
		"name": "Revenant",
		"type": "Offensive"
	},
	
	"13": {
		"name": "Loba",
		"type": "Support"
	},
	
	"14": {
		"name": "Rampart",
		"type": "Defensive"
	},
	
	"15": {
		"name": "Horizon",
		"type": "Offensive"
	}
}

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
