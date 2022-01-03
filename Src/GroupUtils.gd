extends Object

class_name GroupUtils

static func is_in_groups(node: Node, groups: Array) -> bool:
	if !(groups && groups.size() > 0): return false
	# else
	
	for group in groups:
		if !node.is_in_group(group): return false
	# else
	
	return true
