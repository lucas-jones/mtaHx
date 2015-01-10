package mtahx;

import mta.Player;
import mtahx.events.EventHandler;

class BaseServer
{
	public function new()
	{
		EventHandler.addOnResourceStart(function(_) create());
	}

	public function create():Void
	{

	}

	public function handlePlayerJoined(player:Player):Void
	{

	}
}