package mta.math;

@:native("Vector2") @dotpath
extern class Vector2
{
	public var x:Float;
	public var y:Float;

	public function normalize():Void;
	public function dot(other:Vector2):Float;
	public function getLength():Float;
	public function getSquaredLength():Float;
	public function getNormalized():Vector2;

	public static inline function create(x:Float = 0, y:Float = 0):Vector2
	{
		return untyped __call__("Vector2", x, y);
	}
}