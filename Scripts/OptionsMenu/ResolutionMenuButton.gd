extends MenuButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func display_options(id):
	
	if id == 2:
		self.set_disable_shortcuts(true)
