package mta.math;

import mta.math.Vector3;

@:native("Matrix") @dotpath
extern class Matrix
{
	public var position:Vector3;
	public var rotation:Vector3;
	public var forward:Vector3;
	public var right:Vector3;
	public var up:Vector3;

	public function transformPosition():Vector3;
	public function transformDirection():Vector3;
	public function inverse():Matrix;

	public static inline function create(?position:Vector3, ?rotation:Vector3):Matrix
	{
		if(position == null) position = Vector3.create();
		return untyped __call__("Matrix", position, rotation);
	}

	public static inline function createFromFloat(x:Float = 0, y:Float = 0, z:Float = 0, rotX:Float = 0, rotY:Float = 0, rotZ:Float = 0):Matrix
	{
		return untyped __call__("Matrix", x, y, z, rotX, rotY, rotZ);
	}
}