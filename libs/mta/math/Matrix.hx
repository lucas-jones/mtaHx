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

	@:overload(function(?position:Vector3, ?rotation:Vector3):Matrix {})
	public static function create(x:Float = 0, y:Float = 0, z:Float = 0, rotX:Float = 0, rotY:Float = 0, rotZ:Float = 0):Matrix;
}