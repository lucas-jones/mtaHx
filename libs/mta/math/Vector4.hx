package mta.math;

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
}