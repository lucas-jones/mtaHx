package mta;

import mta.math.Matrix;
import mta.math.Vector3;

@:native("Player") @dotpath
extern class Player extends Ped
{
	public var account(default, never):Account;
	public var cameraInterior:Int;
	public var cameraMatrix:Matrix;
	public var cameraTarget:Element;
	public var ACInfo(default, never):Array<Dynamic>;//anti cheat info
	public var voiceBroadcastTo(never, default):Bool;
	public var voiceIgnoreFrom(never, default):Bool;
	public var money:Int;
	public var version:String;
	public var wantedLevel:Int;
	public var blurLevel:Int;
	public var name:String;
	public var muted:Bool;

	public var idleTime(default, never):Int;
	public var ping(default, never):Int;
	public var serial(default, never):String;
	public var ip(default, never):String;
	public var team:Team;
	public var mapForced:Bool;
	public var nametagText:String;
	public var nametagShowing:Bool;

	public function ban(?ip:Bool = true, ?username:Bool = false, ?serial:Bool = false, ?responsiblePlayer:Player, ?reason:String, ?seconds:Int = 0):Bool;
	public static function getAllAlive():Array<Player>;
	public static function getAllDead():Array<Player>;
	public function getAnnounceValue(key:String):String;
	public static function getCount():Int;
	public function getNametagColor():Vector3;
	public static function getRandom():Player;
	public function kick(?responsiblePlayer:Player, ?reason:String):Bool;
	public function logOut():Bool;
	public function redirect(serverIP:String, serverPort:Int, ?serverPassword:String):Bool;
	public function resendModInfo():Bool;
	public function spawn(x:Float, y:Float, z:Float, ?rotation:Int, ?skinId:Int, ?interior:Int, ?dimension:Int, ?team:Team):Bool;
	public function takeScreenshot(width:Int, height:Int, ?tag:String, ?quality:Int = 30, ?maxBandwith:Int = 5000):Bool;
	public function fadeCamera(value:Bool, time:Float = 1):Void;
	public function setHudComponentVisible(component:String, visible:Bool):Void;
	
}