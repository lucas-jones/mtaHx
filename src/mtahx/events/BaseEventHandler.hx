package mtahx.events;

@:native("_G") @dotpath
extern class BaseEventHandler
{
	public static function addEventHandler(eventName:String, element:Dynamic, callback:Dynamic):Bool;
}