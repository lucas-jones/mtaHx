package mta.extensions;

import mta.externs.math.Vector3;

class ElementExtensions
{
	static inline function getPosition(element:Element):Vector3
	{
		var element = element;
		var val = untyped __lua__("{ element:getPosition() }");
		return val[1];
	}

	static public inline function setPosition(element:Element, position:Vector3):Void
	{
		var element = element;
		untyped __call__("element:setPosition", position.x, position.y, position.z);
	}
}