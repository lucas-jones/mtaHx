package mta;

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

	public static function setCameraMatrix(source:Player, positionX:Float, positionY:Float, positionZ:Float, lookX:Float = 0, lookY:Float = 0, lookZ:Float = 0):Void;

	public static function getPlayerFromName(name:String):Player;
}