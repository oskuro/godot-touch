@tool
extends EditorPlugin
var uielements = []

var base = get_editor_interface().get_base_control()

func _enter_tree() -> void:
	#Navigation Bar
	#uielements.append(base.get_node("@VBoxContainer@15/@EditorTitleBar@16/@HBoxContainer@4943"))
	#Run Menu Bar
	#uielements.append(base.get_node("@VBoxContainer@15/@EditorTitleBar@16/@EditorRunBar@5004"))

	# Right hand dock	
	uielements.append(base.get_node("@VBoxContainer@15/DockHSplitLeftL/DockHSplitLeftR/DockVSplitLeftR"))
	
	uielements.append(base.get_node("@VBoxContainer@15/DockHSplitLeftL/DockHSplitLeftR/DockVSplitLeftR/DockSlotLeftUR"))
	uielements.append(base.get_node("@VBoxContainer@15/DockHSplitLeftL/DockHSplitLeftR/DockVSplitLeftR/DockSlotLeftBR"))
	
	# Tab thingy above main dock
	uielements.append(base.get_node("@VBoxContainer@15/DockHSplitLeftL/DockHSplitLeftR/DockHSplitMain/@VBoxContainer@26/DockVSplitCenter/@VSplitContainer@62/@VBoxContainer@63/@EditorSceneTabs@78"))
	
	
	# Bottom dock with output / Debugger
	uielements.append(base.get_node("@VBoxContainer@15/DockHSplitLeftL/DockHSplitLeftR/DockHSplitMain/@VBoxContainer@26/DockVSplitCenter/@EditorBottomPanel@7324"))
	
	
	# Hide ui elements
	for element in uielements:
		if element:
			if element is TabContainer:
				element.set_tabs_visible(false)
			if element is SplitContainer:
				element.set_collapsed(true)
			else:
				element.visible = false
		else:
			print(element)

func _exit_tree() -> void:
	for element in uielements:
		if element:
			if element is TabContainer:
				element.set_tabs_visible(true)
			if element is SplitContainer:
				element.set_collapsed(false)
			else:
				element.visible = true
