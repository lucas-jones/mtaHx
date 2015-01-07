package mta.math;

import mta.math.Vector3;

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
}