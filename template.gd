# ####################################
## 这是脚本模板，作为脚本编写格式的最佳实践。
## 脚本名称【template.gd】              
## 脚本主要描述脚本布局，作为其他脚本演示，文档的第一段注释会在《搜索帮助》显示出来。
## @tutorial(注释写法说明): https://docs.godotengine.org/zh-cn/4.x/tutorials/scripting/gdscript/gdscript_documentation_comments.html#gdscript-documentation-comments
## @tutorial(编写风格指南): https://docs.godotengine.org/zh-cn/4.x/tutorials/scripting/gdscript/gdscript_styleguide.html#gdscript-style-guide
## @tutorial(GDScript 示例): https://docs.godotengine.org/zh-cn/4.x/tutorials/scripting/gdscript/gdscript_basics.html#example-of-gdscript
# ####################################

# (optional) icon to show in the editor dialogs:
# 可能错误“Unexpected "Indent" in class body.”说明锁紧不对，@函数前面不能有缩进。
@icon("res://icon.svg")

# Inheritance:
extends Node2D


# (optional) class definition:
class_name Template


# 信号必须在函数声明之后
signal state_changed(previous, new)


@export_category("变量分类")
# Member variables.先公有变量
@export var initial_state: Node
var is_active = true
# Member variables.再私有变量，私有变量名称前加 “_"
@onready var _state = initial_state
@onready var _state_name = _state.name


# Constants.
const PRINT_CONTENT := "Hello, World！"

# Enums.
var party = [
	"Godot",
	"Godette",
	"Steve",
]
var character_dict = {
	"Name": "Bob",
	"Age": 27,
	"Job": "Mechanic",
}
enum Tiles {
	TILE_BRICK,
	TILE_FLOOR,
	TILE_SPIKE,
	TILE_TELEPORT,
}


# Built-in vector types.
var v2 = Vector2(1, 2)
var v3 = Vector3(1, 2, 3)

func _init():
	add_to_group("state_machine")

func _ready() -> void:
	print(is_active)
	print(PRINT_CONTENT)
	print(party)
	print(character_dict)
	print(Tiles.TILE_BRICK)
