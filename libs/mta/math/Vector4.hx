package mta.math;

@:native("Vector4") @dotpath
extern class Vector4
{
	public var x:Float;
	public var y:Float;
	public var z:Float;
	public var w:Float;

	public function cross(other:Vector4):Void;
	public function normalize():Void;
	public function dot(other:Vector4):Float;
	public function getLength():Float;
	public function getSquaredLength():Float;
	public function getNormalized():Vector4;

	public static inline function create(x:Float = 0, y:Float = 0, z:Float = 0, w:Float = 0):Vector4
	{
		return untyped __call__("Vector4", x, y, z, w);
	}
}