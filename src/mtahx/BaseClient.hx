package mtahx;

import mtahx.events.EventHandler;

class BaseClient
{
	public function new()
	{
		EventHandler.addOnClientResourceStart(function(_) create());
	}

	public function create():Void
	{

	}
}