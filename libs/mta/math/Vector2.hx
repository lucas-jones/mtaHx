package mta.math;

extern class Vector2
{
	public var x:Float;
	public var y:Float;

	public function normalize():Void;
	public function dot(other:Vector2):Float;
	public function getLength():Float;
	public function getSquaredLength():Float;
	public function getNormalized():Vector2;
}