extends ColorRect

var hue

# Called when the node enters the scene tree for the first time.
func _ready():
	hue = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	hue += 0.002
	if hue > 1.0: hue = 0
	self.color = Color.from_hsv(hue, 0.42, 0.69)
