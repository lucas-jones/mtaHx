package mta;

import mta.Element;

@:native("_G") @dotpath
extern class Globals
{
	public static var source:Dynamic;

	public static function getRootElement():Dynamic;
	public static function outputDebugString(message:String):Void;
	public static function outputChatBox(message:String):Void;

	public static function spawnPlayer(player:Player, x:Float, y:Float, z:Float):Void;
	
	public static function setCameraTarget(source:Player, source:Dynamic):Void;
	public static function getPlayerName(source:Player):String;

	public static function getPlayerMoney(source:Player):Int;
	public static function setPlayerMoney(source:Player, value:Float):Void;

	public static function getPlayerBlurLevel(source:Player):Int;
	public static function setPlayerBlurLevel(source:Player, value:Int):Void;

	public static function setCameraMatrix(positionX:Float, positionY:Float, positionZ:Float, lookX:Float = 0, lookY:Float = 0, lookZ:Float = 0):Void;

	public static function getPlayerFromName(name:String):Player;

	public static function setWeather(value:Int):Void;

	public static function smoothMoveCamera(startPositionX:Float, startPositionY:Float, startPositionZ:Float, startLookX:Float, startLookY:Float, startLookZ:Float,
											endPositionX:Float, endPositionY:Float, endPositionZ:Float, endLookX:Float, endLookY:Float, endLookZ:Float,
											time:Int):Void;

	public static function moveObject(object:Dynamic, time:Int, targetX:Float, targetY:Float, targetZ:Float):Void;

	public static function createObject(modelId:Int, x:Float, y:Float, z:Float):Element;
}