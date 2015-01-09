package mta;

@:native("Team") @dotpath
extern class Team extends Element
{
	public var playerCount(default, never):Int;
	public var friendlyFire:Bool;
	public var players(default, never):Array<Player>;
	public var name:String;

	public static function getFromName(teamName:String):Team;
	public static function create(teamName:String, ?r:Int = 255, ?g:Int = 255, ?b:Int = 255):Team;
}