package mta.extensions;

import mta.math.Matrix;
import mta.math.Vector3;

class ExternExtensions
{
	public static inline function getPosition(element:Element):Vector3
	{
		var element = element;
		var val = untyped __lua__("{ element:getPosition() }");
		return cast val[1] != false ? val[1] : null; 
	}

	public static inline function setPosition(element:Element, position:Vector3):Void
	{
		var element = element;
		untyped __call__("element:setPosition", position);
	}

	public static inline function getRotation(element:Element):Vector3
	{
		var element = element;
		var val = untyped __lua__("{ element:getRotation() }");
		return cast val[1] != false ? val[1] : null; 
	}

	public static inline function setRotation(element:Element, rotation:Vector3):Void
	{
		var element = element;
		untyped __call__("element:setRotation", position);
	}

	public static inline function getVelocity(element:Element):Vector3
	{
		var element = element;
		var val = untyped __lua__("{ element:getVelocity() }");
		return cast val[1] != false ? val[1] : null; 
	}

	public static inline function setVelocity(element:Element, velocity:Vector3):Void
	{
		var element = element;
		untyped __call__("element:setVelocity", velocity);
	}

	public static inline function getCameraMatrix(player:Player):Matrix
	{
		var player = player;
		var val = untyped __lua__("{ player.getCameraMatrix }");
		return cast val[1] != false ? val[1] : null; 
	}

	public static inline function setCameraMatrix(player:Player, matrix:Matrix):Void
	{
		var player = player;
		untyped __call__("player:setCameraMatrix", matrix);
	}
}