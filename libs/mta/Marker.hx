package mta;

import externs.math.Vector3;

@:native("_G") @dotpath
extern class Marker
{
	public var icon:String; //"none", "arrow", "finish"(end of race icon)
	public var size:Float;
	public var target:Vector3; //x,y,z position of target location
	public var type:String; //"checkpoint", "ring", "cylinder", "arrow", "corona"

	public function getColor():Array<Int>;
	public function getCount():Int; //Returns the number of markers that currently exist in the world.
	public function setColor(r:Int, g:Int, b:Int, a:Int):Bool;
}