package mta.math;

@:native("Vector3") @dotpath
extern class Vector3
{
	public var x:Float;
	public var y:Float;
	public var z:Float;

	public function cross(other:Vector3):Void;
	public function normalize():Void;
	public function dot(other:Vector3):Float;
	public function getLength():Float;
	public function getSquaredLength():Float;
	public function getNormalized():Vector3;

	public static inline function create(x:Float = 0, y:Float = 0, z:Float = 0):Vector3
	{
		return untyped __call__("Vector3", x, y, z);
	}
}