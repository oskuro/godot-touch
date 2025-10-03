@tool
extends EditorPlugin
var uielements = []

var base = get_editor_interface().get_base_control()

func _enter_tree() -> void:
	# Navigation Bar
	uielements.append(base.get_node("@VBoxContainer@15/@EditorTitleBar@16/@HBoxContainer@4943"))
	# Run Menu Bar
	uielements.append(base.get_node("@VBoxContainer@15/@EditorTitleBar@16/@EditorRunBar@5004"))
	
	uielements.append(base.get_node("@VBoxContainer@15/@EditorTitleBar@16/@HBoxContainer@5005"))
	# Hide ui elements
	for element in uielements:
		if element:
			element.visible = false
		else:
			print(element)

func _exit_tree() -> void:
	for element in uielements:
		if element:
			element.visible = true


#func _print_tree_recursive(node: Node, indent: String):
	#print(indent + node.name + " (" + node.get_class() + ")")
	#for child in node.get_children():
		#_print_tree_recursive(child, indent + "  ")
