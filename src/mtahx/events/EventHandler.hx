package mtahx.events;

import mtahx.events.BaseEventHandler;
import mta.Globals;
import mta.Player;

class EventHandler
{
	public static function addOnPlayerChat(callback:Player->String->String->Void):Void
	{
		BaseEventHandler.addEventHandler("onPlayerChat", Globals.getRootElement(), callback);
	}

	public static function addOnPlayerJoin(callback:Player->Void):Void
	{
		BaseEventHandler.addEventHandler("onPlayerJoin", Globals.getRootElement(), callback);
	}

	public static function addOnClientPreRender(callback:Float->Void):Void
	{
		BaseEventHandler.addEventHandler("onClientPreRender", Globals.getRootElement(), callback);
	}

	public static function addOnClientResourceStart(callback:Dynamic->Void):Void
	{
		BaseEventHandler.addEventHandler("addOnClientResourceStart", Globals.getRootElement(), callback);
	}

	public static function addOnResourceStart(callback:Dynamic->Void):Void
	{
		BaseEventHandler.addEventHandler("addOnResourceStart", Globals.getRootElement(), callback);
	}

	
}