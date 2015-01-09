package mta;

import mta.math.Vector3;

@:native("Marker") @dotpath
extern class Marker
{
	public var icon:String; //"none", "arrow", "finish"(end of race icon)
	public var size:Float;
	public var target:Vector3; //x,y,z position of target location
	public var type:String; //"checkpoint", "ring", "cylinder", "arrow", "corona"

	public function getColor():Array<Int>;
	public function getCount():Int; //Returns the number of markers that currently exist in the world.
	public function setColor(r:Int, g:Int, b:Int, a:Int):Bool;

	public static function create(position:Vector3, type:String = "checkpoint", size:Float = 4, r:Int = 0, g:Int = 0, b:Int = 255, a:Int = 255, ?visibleTo:Element):Marker;
}