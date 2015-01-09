package mta;

@:native("Account") @dotpath
extern class Account
{
	public var serial(default, never):String;
	public var name(default, never):String;
	public var player(default, never):Player;
	public var guest(default, never):Bool;
	public var password(never, default):String;
	public var data(default, never):Map<String, Dynamic>;

	public function logPlayerOut():Void;
	public function doesContainObject(group:String):Bool;//e.g "Admin"
	public function copyDataTo(account:Account):Bool;
	public function remove():Bool;
	public function setData(key:String, value:String):Bool;

	public static function getAll():Array<Account>;
	public static function getAllBySerial(serial:String):Array<Account>;
	public static function getFromPlayer(player:Player):Account;
	public static function add(username:String, password:String):Account;
	public static function create(username:String, ?password:String):Account;
}