package mta.math;

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
}