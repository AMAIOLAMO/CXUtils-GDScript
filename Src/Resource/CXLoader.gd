class_name CXLoader
extends Object

# loads the directory non recursively
static func load_dir(path: String) -> Array:
	var directory := Directory.new()
	directory.open(path)

	var err = directory.list_dir_begin()
	if err != OK: return []
	# else
	
	var result := []
	var fileName := directory.get_next()

	while(fileName):
		if not directory.current_is_dir():
			var item = load("%s/%s" % [path, fileName])
			result.append(item)
		fileName = directory.get_next()

	return result

# loads the directory recursively down to the maximum deepness given
static func load_dir_recursive(path: String, deep: int = 4) -> Array:
	var directory := Directory.new()
	directory.open(path)
	
	var err = directory.list_dir_begin(true) # remove the navigational folders (. & ..)
	
	if err != OK: return []
	# else
	
	var result := []
	
	var fileName := directory.get_next()
	
	while(fileName):
		if directory.current_is_dir() && deep > 0:
			directory.get_current_dir()
			var array = load_dir_recursive("%s/%s" % [path, fileName], deep - 1)
			result.append_array(array)
		else:
			var item = load("%s/%s" % [path, fileName])
			result.append(item)

		fileName = directory.get_next()
	
	return result
