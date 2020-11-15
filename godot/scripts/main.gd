extends Control

enum LEGEND_TYPES {
	# according to: https://apexlegends.gamepedia.com/Legend
	RECON, # Bloodhound, pathfinder, etc
	DEFENSIVE, # Gibraltar, Caustic, etc
	SUPPORT, # Lifeline, Loba, etc
	OFFENSIVE # Wraith, Bangalore, etc
}

var existingLegends = {
	"bloodhound": {
		"type": LEGEND_TYPES.RECON
	},
	
	"gibraltar": {
		"type": LEGEND_TYPES.DEFENSIVE
	},
	
	"lifeline": {
		"type": LEGEND_TYPES.SUPPORT
	},
	
	"pathfinder": {
		"type": LEGEND_TYPES.RECON
	},
	
	"wraith": {
		"type": LEGEND_TYPES.OFFENSIVE
	},
	
	"bangalore": {
		"type": LEGEND_TYPES.OFFENSIVE
	},
	
	"caustic": {
		"type": LEGEND_TYPES.DEFENSIVE
	},
	
	"mirage": {
		"type": LEGEND_TYPES.OFFENSIVE
	},
	
	"octane": {
		"type": LEGEND_TYPES.OFFENSIVE
	},
	
	"wattson": {
		"type": LEGEND_TYPES.DEFENSIVE
	},
	
	"crypto": {
		"type": LEGEND_TYPES.RECON
	},
	
	"revenant": {
		"type": LEGEND_TYPES.OFFENSIVE
	},
	
	"loba": {
		"type": LEGEND_TYPES.SUPPORT
	},
	
	"rampart": {
		"type": LEGEND_TYPES.DEFENSIVE
	},
	
	"horizon": {
		"type": LEGEND_TYPES.OFFENSIVE
	},
}
var availableLegends = [];
