extends MenuButton

var id_prsd:int

# Called when the node enters the scene tree for the first time.
func _ready():
	
	self.get_popup().id_pressed.connect(display_option)
	self.get_popup().id_pressed.connect($"../../../ResolutionContainer/ResolutionHBoxContainer/ResolutionMenuButton".display_options)
	
	var windowMode:int = DisplayServer.window_get_mode()
	
	match windowMode:
		0:
			text = "Windowed"
		2:
			text = "Borderless"
		4:
			text = "Fullscreen"

func display_option(id):
	id_prsd = id
	text = get_popup().get_item_text(id)
