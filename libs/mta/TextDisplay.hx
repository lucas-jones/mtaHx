package mta;

import mta.math.Vector2;

@:native("TextDisplay") @dotpath
extern class TextDisplay 
{
	public var priority:String;
	public var scale:Float;
	public var text:String;
	public var position:Vector2;

	public function destroy():Void;

	public static function create(text:String, position:Vector2, ?priority:String, ?r:Int, ?g:Int, ?b:Int, ?a:Int, ?scale:Float, ?alignX:String = "left", ?alignY:String = "top", ?shadowAlpha:Int):TextDisplay;
}