class_name TilemapUtils
extends Object

static func set_area_single(startX: int, startY: int, width: int, height: int, id: int, tilemap: TileMap) -> void:
	var maxX := startX + width
	var maxY := startY + height
	
	var x := startX
	var y: int
	
	while x < maxX:
		y = startY
		while y < maxY:
			tilemap.set_cell(x, y, id)
			y += 1
		x += 1

static func set_area_singlev(startPosition: Vector2, size: Vector2, id: int, tilemap: TileMap) -> void:
	set_area_single(
		int(startPosition.x), int(startPosition.y),
		int(size.x), int(size.y), id, tilemap
	)

static func set_area_multi(startX: int, startY: int, width: int, height: int, ids: Array, tilemap: TileMap) -> void:
	var maxX := startX + width
	var maxY := startY + height
	
	var x := startX
	var y: int
	
	var i := 0
	
	while x < maxX:
		y = startY
		while y < maxY:
			var id: int = ids[i]
			tilemap.set_cell(x, y, id)
			i += 1
			y += 1
		x += 1

static func set_area_multiv(startPosition: Vector2, size: Vector2, ids: Array, tilemap: TileMap) -> void:
	set_area_multi(
		int(startPosition.x), int(startPosition.y),
		int(size.x), int(size.y), ids, tilemap
	)

static func global_to_map(tilemap: TileMap, position: Vector2) -> Vector2:
	return tilemap.world_to_map(tilemap.to_local(position))

static func map_to_global(tilemap: TileMap, position: Vector2, ignoreHalfOffsets: bool = false) -> Vector2:
	return tilemap.map_to_world(tilemap.to_global(position), ignoreHalfOffsets)
