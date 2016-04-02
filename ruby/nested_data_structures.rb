
cars = [
	"domestic",
	"international"
]

cars[0] = [
	"ford",
	"chevrolet",
	"dodge"
	]

cars[0][0] = {
	"pickup" => [
		"f150",
		"f250",
		"f350"],
	"suv" => [
		"escape",
		"explorer",
		"expedition"],
	"sedan" => [
		"fiesta",
		"focus",
		"taurus"]
}
cars[0][1] = {
	"pickup" => [
		"avalanche",
		"silverado"
	],
	"suv" => [
		"tahoe",
		"equinox",
		"suburban"
	],
	"sedan" => [
		"cruze",
		"malibu"
	]
}
cars[0][2] = {
	"pickup" => [
		"ram",
		"dakota",
		],
	"suv" => [
		"durango",
		"journey",
		],
	"sedan" => [
		"challenger",
		"dart",
		"charger"
		]
}
p cars[0][1]["suv"][1]

cars[1] = [
	"toyota",
	"nissan",
	"honda"
	]
cars[1][0] = {
	"pickup" => [
		"tundra",
		"tacoma",
		],
	"suv" => [
		"highlander",
		"sequoia",
		"land_cruiser"
		],
	"sedan" => [
		"prius",
		"camry",
		"corolla"
		]
}
cars[1][1] = {
	"pickup" => [
		"frontier",
		"titan",
		],
	"suv" => [
		"armada",
		"pathfinder",
		"murano",
		],
	"sedan" => [
		"sentra",
		"altima",
		"maxima"
		]
}
cars[1][2] = {
	"suv" => [
		"crosstour",
		"pilot",
		"cr-v"
		],
	"sedan" => [
		"accord",
		"civic",
		"insight"
		]
}

p cars[1][2]["sedan"][2].capitalize
p cars[1][1]["sedan"].sort.reverse
p cars[1][1]["sedan"].push("rogue")
p cars[1][1].count
cars[0][0]["pickup"].include?("f150")