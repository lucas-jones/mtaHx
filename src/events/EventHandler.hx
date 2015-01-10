package events;

import events.BaseEventHandler;
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
}