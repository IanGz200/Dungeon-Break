extends MenuButton

var id_prsd:int

# Called when the node enters the scene tree for the first time.
func _ready():
	
	self.get_popup().id_pressed.connect(display_option)
	
	var windowMode = DisplayServer.window_get_mode()
	
	match windowMode:
		0:
			text = "Windowed"
		2:
			text = "Borderless"
		4:
			text = "Fullscreen"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func display_option(id):

	text = get_popup().get_item_text(id)
