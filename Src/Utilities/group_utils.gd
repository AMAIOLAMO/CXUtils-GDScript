class_name GroupUtils extends Object

static func is_in_groups(node: Node, groups: Array) -> bool:
	if !(groups && groups.size() > 0): return false
	# else
	
	for group in groups:
		if !node.is_in_group(group): return false
	# else
	
	return true

static func inherit_groups(parentNode: Node, childNode: Node) -> void:
	for group in parentNode.get_groups():
		childNode.add_to_group(group)
